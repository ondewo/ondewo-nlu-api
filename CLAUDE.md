# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Role in the ONDEWO repo family

This repo is the **proto source of truth** for the ONDEWO NLU/CAI gRPC API. Nothing here runs —
the `.proto` files under `ondewo/nlu/` (plus `google/` vendored deps) are compiled into two SDKs,
which are consumed by the backend and the frontend:

```
ondewo-nlu-api (.proto)                      ← YOU ARE HERE
  ├─→ ondewo-nlu-client-python  (generated *_pb2.py + sync/async service wrappers)
  │     └─→ ondewo-cai          (backend gRPC server; pins the client by git hash / release version)
  └─→ ondewo-nlu-client-angular (generated *.pb.ts / *.pbsc.ts, npm @ondewo/nlu-client-angular)
        └─→ ondewo-aim          (Angular frontend; talks grpc-web via envoy to ondewo-cai)
```

All five repos live side by side under `~/ondewo/`. For one feature, use the **same branch name**
(`feature/<TICKET>-…`) in every repo you touch. Each client repo carries this repo as a **git
submodule** (`ondewo-nlu-client-python/ondewo-nlu-api`, `ondewo-nlu-client-angular/src/ondewo-nlu-api`)
pinned via `NLU_API_GIT_BRANCH` / `ONDEWO_NLU_API_GIT_BRANCH` in their Makefiles.

## Editing protos

- **Additive only.** Append new fields with the next free field number; never renumber or remove
  existing fields/enum values. New RPCs go at the end of the service's matching `// region`.
- Follow the established message conventions (copy from `llm_evaluation.proto`, the canonical example
  is `UpdateLlmEvaluationDatasetRequest`):
  - resources carry `name`, `display_name`, `created_at`/`created_by`/`modified_at`/`modified_by`,
    `parent` (`projects/<uuid>/agent`) and `language_code` (everything is scoped per
    (project, language_code));
  - `Update*Request` carries the resource + `update_mask` (what to apply) + `field_mask`
    (what to populate on the response); `Get`/`List` carry `field_mask`;
  - `List*Request` uses `page_token` (`"current_index-N--page_size-M"`) + a `<Entity>Filter`
    message; responses return `next_page_token` only;
  - long-running RPCs return `ondewo.nlu.Operation`;
  - thresholds/options that need presence-detection go in nested messages
    (proto3 scalars have no presence).
- Every field gets a `//` doc comment (HTML entities for `<>` in formats, as in the existing files).
- **Compile check** before committing (no protoc needed):
  `python3 -m grpc_tools.protoc -I . --descriptor_set_out=/dev/null ondewo/nlu/<changed>.proto`
- Add a `RELEASE.md` entry under the upcoming version heading (format: `* [[TICKET]](jira-url) text`).
  The version lives in the `Makefile` (`ONDEWO_NLU_API_VERSION`) — major.minor must match the clients.

## Git

- This repo **has a giticket hook** (like the client repos): write a plain commit subject and let the
  hook prepend `[<TICKET>]` from the branch name — typing it yourself yields `[<TICKET>] [<TICKET>]`.
- Push the branch **before** regenerating clients whose submodule should reference it. For unpushed
  local work, clients can fetch the submodule from the local path instead:
  `git -C <submodule-dir> fetch ~/ondewo/ondewo-nlu-api <branch> && git -C <submodule-dir> checkout FETCH_HEAD`.

## After a proto change: regenerate downstream (in order)

1. **ondewo-nlu-client-python** — see its CLAUDE.md. Then bump the pin in `ondewo-cai/pyproject.toml`
   (`ondewo-nlu-client @ git+https://…@<client-sha>`) + `uv lock`.
2. **ondewo-nlu-client-angular** — see its CLAUDE.md. Then copy into ondewo-aim via
   `cd src && npm run test-in-ondewo-aim-copy-only`.
3. Implement server-side in **ondewo-cai** (servicer + ORM + ProtoInfo request-validation
   registrations in `proto_info.py` / enum registrations in `protobuf_helpers.py` — forgetting these
   breaks request validation at runtime) and client-side in **ondewo-aim**.

## Releases

`make release` tags this repo; `make release_all_clients` (or `release_python_client` /
`release_angular_client`) clones each client, updates its Makefile pins to the released tag and runs
its `make ondewo_release` (npm / PyPI publish). After a release, consumers switch from git-hash pins
to the published version (`ondewo-nlu_client==X.Y.Z` in cai, `@ondewo/nlu-client-angular@X.Y.Z` in aim).

## Working Principles

Behavioral guidelines to reduce common mistakes. They bias toward caution over speed; for trivial tasks, use judgment.

### Think before coding

Don't assume. Don't hide confusion. Surface tradeoffs.

Before implementing:

- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them — don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

### Simplicity first

Minimum code that solves the problem. Nothing speculative.

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

### Surgical changes

Touch only what you must. Clean up only your own mess.

When editing existing code:

- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it — don't delete it.

When your changes create orphans:

- Remove imports/variables/functions that _your_ changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: every changed line should trace directly to the user's request.

### Goal-driven execution

Define success criteria. Loop until verified.

Transform tasks into verifiable goals:

- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:

```text
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

These guidelines are working if: fewer unnecessary changes in diffs, fewer rewrites due to overcomplication, and
clarifying questions come before implementation rather than after mistakes.

## Logging

```python
from loguru import logger as log
```

- **Levels:** `log.trace()`, `log.debug()`, `log.info()`, `log.warning()`, `log.error()`, `log.exception()`. Choose by
  hotness/verbosity — `trace` for per-token / hot-path detail, `debug` for routine method entry/exit, `info` for notable
  lifecycle events, `warning` / `error` / `exception` for problems.
- **Interpolate with f-strings, not loguru's `{}` positional args.** Consistent with the Code Style rule, use
  `f"…{value}"`; only add the `f` prefix when the string actually interpolates (`"START: …"` with no params stays a
  plain string).
- **`START:` / `DONE:` bracketing.** Wrap a method (or other notable operation) with a `START:` line at entry and a
  `DONE:` line at exit, both naming `ClassName: method_name` (append `: param={value}` context where useful):

  ```python
  log.debug("START: IntentBertClassifier: predict")
  ...
  log.debug(f"DONE: IntentBertClassifier: predict. Elapsed time: {perf_counter() - start_time:.5f}")
  ```

- **Timing uses `perf_counter()`, rendered `:.5f`.** Measure elapsed time with `time.perf_counter()` captured as a start
  value and subtracted at the `DONE:` line; always format the elapsed value with the `:.5f` spec:

  ```python
  from time import perf_counter

  start_time: float = perf_counter()
  ...
  log.info(f"DONE: SESSION SERVICER: DetectIntent. Elapsed time: {perf_counter() - start_time:.5f}")
  ```

  Never measure a duration with `time.time()` — reserve `time.time()` for wall-clock timestamps (epoch seconds persisted
  to a DB / proto, unique-id or filename stamps). `perf_counter()` has an undefined epoch and must not be stored or
  compared across processes.

## Docstrings

Google-style, triple double-quotes:

```python
"""
Short imperative summary line.

Args:
    param_name (type):
        Description of the parameter.

Returns:
    type:
        Description of the return value.

Raises:
    ExceptionType:
        When this exception is raised.
"""
```

## Git Commits

- **Never include Claude as author or co-author** in commit messages, PR descriptions, or any other text. Do not add
  `Co-Authored-By: Claude…` trailers, "Generated with Claude Code" footers, or any similar attribution.
- The user's own git author identity (already configured in git) is the only identity that should appear on commits.
- This rule overrides the default Claude Code commit-template guidance.
- **Never prepend the JIRA ticket ID** (e.g. `[OND211-2386]`) to the commit subject yourself. The `giticket` pre-commit
  hook reads the ticket from the branch name (`(feature|bugfix|support|hotfix)/<TICKET>-…`) and prepends `[<ticket>]`
  (with a trailing space) automatically. Writing the prefix manually produces a duplicate like
  `[OND211-2386] [OND211-2386] feat: …`. Write the subject as plain Conventional Commits (`feat: …`, `fix(scope): …`,
  `docs(types): …`) and let the hook add the prefix on commit.

## General Principles

- Follow existing patterns before introducing new abstractions.
- Keep changes minimal and consistent with surrounding code.
- Validate inputs early with descriptive, context-rich error messages.
- Use context managers for files, sockets, and thread pools.
- Prefer region comments for grouping methods in files that already use them.
- End edited Markdown and YAML files with a trailing newline.

## Client-release orchestration (`release_all_clients`)

- It **fails loudly** on a genuine client-release error: the piped sub-make runs under `bash -c 'set -o pipefail; make -C … | tee …'` (a plain sh pipe returns tee's 0 and masks failures), and a **marker file** distinguishes an "already released" SKIP from a real FAILURE (make flattens recipe exit codes to 2, so the code alone can't tell them apart). Do not regress either.
- Every token-bearing recipe line is `@`-prefixed so make never echoes a secret — `docker run -e <TOKEN>`, `echo $(TOKEN) | gh auth`, `twine … -p${PYPI_PASSWORD}`, and the credential sub-make `make release $(info)` (which expands the token at runtime and is easy to miss).

## Pre-commit upgraded (language-agnostic hook set)

Pre-commit here uses only the language-agnostic hooks — **markdownlint-cli2, pre-commit-hooks hygiene, giticket, conventional-pre-commit** — no ruff/mypy/uv (there is no Python). Generated docs (`docs/`) and any generated code are excluded via the top-level `exclude:`.

- **markdownlint MD053 is disabled** (its auto-fix deletes `[comment]: <>` reference-definition markers).
- **markdownlint RELEASE.md reformatting is content-safe**: it only strips trailing whitespace and adds blank lines around headings — the `## Release … <VERSION>` headings and `*****` separators that `ondewo_release` greps for remain intact. (Confirmed: the 6.5.0 release notes sliced correctly after the reformat.)
