# Warm transfer intros

A warm transfer intro runs after the target of a WARM transfer (a person, e.g. an employee) answered the phone
and before the target is joined to the caller. An ONDEWO bot greets the target in a session of its own (the
**intro session**), confirms a person is on the line, briefs the target (who calls, why, a summary of the call so
far), asks whether the target takes the call and, after a decline, asks what to tell the caller. The caller waits
with the paused bot of the caller's session (the **source session**) the whole time.

The protos are `Sessions.PrepareWarmTransferIntro` and `Sessions.GetWarmTransferIntroOutcome` in
`ondewo/nlu/session.proto`, and `Agent.warm_transfer_settings` in `ondewo/nlu/agent.proto`. This page documents the
parts of the contract that are not typed: contexts, metadata, token turns, an intent tag and the permission.
ondewo-vtsi drives the intro; ondewo-cai implements it.

## Switches

- The server-wide kill switch of ondewo-cai is `ONDEWO_NLU_CAI_WARM_TRANSFER_ENABLED` (default `false`). While it
  is off, both RPCs answer `UNIMPLEMENTED` and the server does not advertise the capability.
- Per agent, `Agent.warm_transfer_settings.enabled = false` makes `PrepareWarmTransferIntro` answer
  `FAILED_PRECONDITION` with `reason=warm-intro-disabled-for-agent`. Unset means enabled while the server switch is
  on.

## Permission

Both RPCs require the project permission `ProjectPermission.Sessions.WarmTransferIntro`
(`SESSIONS_WARM_TRANSFER_INTRO`), which the EXECUTOR role holds, like the permission of `Sessions.InterruptTurn`.

## Capability: `x-ondewo-cai-warm-intro`

A server whose warm transfer feature is on sends the initial metadata `x-ondewo-cai-warm-intro: 1` on EVERY
`StreamingDetectIntent` response stream, not only on a call-length one, the same way it advertises
`x-ondewo-cai-turn-control: 1`. A client sends the token turns below only to a server that advertised it; without
the capability (or while it is unknown) the client tells the caller itself.

## Flow

1. The client (ondewo-vtsi) mints the intro session id and calls `PrepareWarmTransferIntro` with the source
   session, the resolved `WarmTransferIntroConfig`, the language and the idempotency key `transfer_request_id`.
   - The intro session must not exist yet; an existing session that was not prepared with the same
     `transfer_request_id` is refused with `ALREADY_EXISTS`. A repeated request answers the first one's response.
   - A source session of another project is refused with `INVALID_ARGUMENT`.
   - The server reads the latest `max_history_steps` (0 = 30) steps of the source session, its contexts and its
     slots, renders the intro text (`WARM_TRANSFER_INTRO_TEXT_SOURCE_LLM_SUMMARY` within a time budget, else
     `WARM_TRANSFER_INTRO_TEXT_SOURCE_TEMPLATE`; `text_fell_back` reports the fallback) and strips every
     `<SIP:…>` markup from it. It writes NO step into the source session.
   - The response carries the length of the text and the SHA-256 of the resolved prompt, never the text.
2. The intro bot talks to the target in the intro session through ordinary `StreamingDetectIntent` /
   `DetectIntent` turns. The server answers each turn from the intro state machine (below); it runs no tools and
   no agent intents there.
3. The client reads the decision with `GetWarmTransferIntroOutcome`: `decision`, `decided_by`,
   `decline_reason_present`, `stage` and `cause`. The reason text is never returned.
4. On a decline or when the target was not reachable, the client sends a token turn into the SOURCE session, and
   the bot tells the caller.

## The intro session

### State machine

```text
PREPARED -> READY_ASKED
  |- ready              -> INTRO_SPOKEN
  |                          |- accept   -> CLOSED / ACCEPTED
  |                          |- decline  -> REASON_ASKED -> CLOSED / DECLINED
  |                          |- unclear  -> asked again once -> unclear -> CLOSED / NO_DECISION (cause=unclear-twice)
  |                          '- timeout  -> CLOSED / NO_DECISION
  '- not ready / timeout -> CLOSED / NO_DECISION (cause=voicemail-suspected)
```

- With `confirm_human_before_intro = false`, `READY_ASKED` is skipped: the first answer is the intro plus
  `accept_question`.
- With `decline_reason_question` set to `""`, a decline closes the session without asking for a reason.
- The final answer of the intro session ends the target's call with a trusted `<SIP:HANGUP>`, appended after
  every other markup was stripped.
- Each answer declares the expected input in `diagnostic_info["ondewo_expected_input"]` (version 2) with a DTMF
  menu block: `accept_dtmf` accepts, `decline_dtmf` declines, speech is allowed, and `decision_timeout_s` is the
  timeout.

### Decision

A DTMF key (`[DTMF:k]`) decides first, then a closed lexicon, and only then an LLM within a short budget. An
answer the lexicon does not match counts as unclear when no LLM is configured. The built-in lexicon is, in German,
`ja`, `gern`, `passt`, `stellen Sie durch`, `nein`, `geht nicht`, `keine Zeit`, and in English `yes`, `sure`,
`no`, `not now`. `Agent.warm_transfer_settings.extra_lexicon` adds accept and decline phrases per language (at
most 50 per language).

### Context `c-warm-transfer`

The intro session carries the context `c-warm-transfer` with the parameters `role` (`intro`), `stage`, `decision`
and `decided_by`. The intro text, the source session and the reason are kept in the server-side store of the intro
session and are never a listable context parameter.

### The decline reason

The reason is stored verbatim in the intro session, normalised: every `<SIP:…>` tag stripped, capped at 300
characters, and every run of 12 or more digits replaced by `<digits:N>`.

## Texts and placeholders

A text resolves from the first non-empty of: the request's `WarmTransferIntroConfig` (which the client already
resolved from its own levels), the agent's `warm_transfer_settings.default_texts` for the intro's language, and the
built-in default. `decline_reason_question` and `confirm_human_before_intro` are `optional`, so "unset" and
"set to empty / false" differ.

| Text | Placeholders | Built-in default (de) |
|---|---|---|
| `ready_question` | `{project}` | "Hier ist der digitale Assistent von {project}. Ich habe einen Anruf für Sie. Sind Sie am Apparat? Sagen Sie ja oder drücken Sie 1." |
| `intro_prompt` (TEMPLATE) | `{caller_name}`, `{callee_name}`, `{topic}`, `{summary}` | none |
| `accept_question` | none | "Möchten Sie das Gespräch übernehmen? Ja oder 1, nein oder 2." |
| `decline_reason_question` | none | "Was darf ich dem Anrufer ausrichten?" (en: "What may I tell the caller?") |
| `caller_declined_message` | `{callee_name}`, `{reason}` | "{callee_name} kann das Gespräch gerade nicht übernehmen und lässt ausrichten: {reason}" |
| `caller_unreachable_message` | `{callee_name}` | defined by the server |

`ready_question` must not reveal anything about the caller: the caller's name is spoken to the target only after
the target answered it. Without a reason, `caller_declined_message` is rendered in its variant without the reason
clause.

The placeholders are resolved by the server:

- `{project}`: `WarmTransferIntroConfig.project_display_name`.
- `{callee_name}`: `WarmTransferIntroConfig.callee_display_name`.
- `{caller_name}`: the first non-empty of the `c-sip-context` parameters built from the SIP headers
  `X-ondewo-user-firstname-validated` and `X-ondewo-user-lastname-validated`, then `X-ondewo-user-name-validated`,
  then the source session's slots `caller-name`, or `given-name` plus `last-name`. Free caller speech is never a
  source. When all are empty, the template's name-less variant is used ("Ein Anrufer").
- `{topic}`: the `c-sip-context` parameter of the SIP header `X-ondewo-dialog-last-user-intent-display-to-agent`,
  else the source session's slot `topic`, else nothing.
- `{summary}`: the LLM summary of the source session (empty for a pure TEMPLATE intro).
- `{reason}`: the normalised decline reason.

The caller's name is never logged, and never written to a header or an event.

## The source session: token turns

To let the bot tell the caller, the client sends one of these texts as the query of a turn in the SOURCE session.
They bypass preprocessing the way `[DTMF:…]` does:

- `[TRANSFER:DECLINED]`: the target declined.
- `[TRANSFER:UNREACHABLE]`: the target was busy, did not answer, gave no decision, or the intro could not run.

The query carries the context `c-warm-transfer` with the parameters `intro_session`, `transfer_request_id`, `cause`
and `callee_display_name`. The server checks the binding (the intro session's stored source session is this
session, in the same project); a turn that fails it is answered with the unreachable text and no reason, so nothing
leaks across sessions. The turn is idempotent per `transfer_request_id`: a second one is answered with an empty
fulfilment.

The server builds `caller_message` from `caller_declined_message` (with the reason) or
`caller_unreachable_message`, with every `<SIP:…>` markup stripped.

### Intent tag `ondewo-voice:warm-transfer-outcome`

An agent intent tagged `ondewo-voice:warm-transfer-outcome` answers the token turn itself, with `caller_message`
available as the context parameter `caller_message` of `c-warm-transfer`. Without such an intent, the server answers
with `caller_message`.
