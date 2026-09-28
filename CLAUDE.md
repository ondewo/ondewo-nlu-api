# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Role in the ONDEWO repo family

This repo is the **proto source of truth** for the ONDEWO NLU/CAI gRPC API. Nothing here runs —
the `.proto` files under `ondewo/nlu/` (plus `google/` vendored deps) are compiled into the client SDKs
(one repo per language, see `CLIENTS` in the `Makefile`); two of them are consumed by the backend and
the frontend:

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

- **Additive by default.** Append new fields with the next free field number; never renumber existing
  fields/enum values. New RPCs go at the end of the service's matching `// region`.
- **Removing something is a MAJOR release, and only then.** A removal (RPC, message, field, enum value)
  breaks every generated client, so it may only land in a major bump — e.g. 7.0.0 removed `rpc Login`,
  `LoginRequest`, `LoginResponse` and `POST /v2/login` (OND211-2418). When you do it:
  - Bump the major in `Makefile`'s `ONDEWO_NLU_API_VERSION`, in the same commit as the proto change.
  - Give `RELEASE.md` a `### Breaking Changes` **and** a `### Migration Guide` section naming the
    replacement — the migration guide is what SDK users actually read.
  - **Removing a FIELD or an ENUM VALUE additionally needs `reserved <number>;` / `reserved "<name>";`**
    so the tag can never be silently reused by a later field — a reused tag makes old and new clients
    disagree about the wire contract with no error. Removing an RPC or a whole message needs no
    `reserved`. This repo has no `reserved` statements yet; a field removal would be the first.
  - Regenerate the docs (`make build_docs`) in the same commit — `docs/` is tracked.
  - `make release_all_clients` publishes a new major of every client in `CLIENTS`: pass
    `GENERIC_RELEASE_SECTION='Breaking Changes'` and `GENERIC_RELEASE_EXTRA` so their notes say what
    broke (default is "Improvements").
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
- **Server-streaming (unary→stream) RPCs take NO `google.api.http` annotation** — like
  `StreamingDetectIntent` in `session.proto`. Only unary RPCs carry the `option (google.api.http) = {…}`
  binding. Precedent: the three `…RemoteOperationContainerLogs`/`…Status` RPCs added to `operations.proto`
  (OND211-2418) — the streaming one has no annotation, the two unary ones use a `get:` custom verb.
- **Reuse an existing enum before inventing a new one.** A new "log level" field should reference the
  existing `ondewo.nlu.LogSeverity` (`common.proto`), not a fresh enum (OND211-2418 did this). A genuinely
  new enum whose value names are generic (`RUNNING`, `EXITED`, `NOT_FOUND`, …) must **prefix every value**
  to avoid colliding with other top-level enums in the C-style flat namespace — e.g.
  `REMOTE_OPERATION_CONTAINER_LIFECYCLE_STATE_RUNNING`.
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
   `make test-in-ondewo-aim-copy-only`. For an AIM **streaming** feature the angular client is enough —
   the aim-server bridges the gRPC server-stream to a WebSocket as a Buffer-passthrough, so
   **ondewo-nlu-client-nodejs usually does NOT need regenerating** (only when the aim-server itself builds
   or reads the typed messages, e.g. the RAG download proxy).
3. Implement server-side in **ondewo-cai** (servicer + ORM + ProtoInfo request-validation
   registrations in `proto_info.py` / enum registrations in `protobuf_helpers.py` — forgetting these
   breaks request validation at runtime; note that a new server→client OUTPUT message also needs a
   ProtoInfo entry, and a **server-streaming** handler must authorize in-body because the endpoint
   decorator defers permission checks for async generators) and client-side in **ondewo-aim**.

## Releases

`make ondewo_release` tags this repo; `make release_all_clients` (or a single `release_<client>_client`, e.g.
`release_python_client` / `release_angular_client`) clones each client in `CLIENTS` (python, nodejs,
typescript, angular, js, php, go, rust, cpp, java, csharp), updates its Makefile pins to the released tag
and runs its `make ondewo_release` (PyPI, npm, Packagist, the Go module proxy, crates.io, an archive on
the GitHub release for C++, Maven Central, NuGet). **Every release, this repo's and every client's, runs
locally from the make target**; credentials come only from `ondewo-devops-accounts` (cloned by
`clone_devops_accounts`, handed over by `run_release_with_devops`). No GitHub workflow builds or publishes
a release or a package and no GitHub secret is used — the client workflows only test and lint, and this
repo's only workflow regenerates `docs/` (see below). Never add a CI publish path or tell anyone to set a
repository secret. After a release, consumers switch from git-hash pins to the published version
(`ondewo-nlu_client==X.Y.Z` in cai, `@ondewo/nlu-client-angular@X.Y.Z` in aim).

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
- If you notice unrelated dead code, mention it and delete it.

When your changes create orphans:

- Remove imports/variables/functions that _your_ changes made unused.
- Dead code goes, but **prove it is dead first**. A symbol can be referenced without an import: a proto
  field is a wire contract with SDK consumers you cannot enumerate, a Makefile `git add` names a file no
  code imports, and an ignore-list entry is not a consumer. If you cannot show it is unreferenced, say so
  and leave it. Deleting live code is worse than leaving dead code.

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

- It **fails loudly** on a genuine client-release error: the piped sub-make runs under `bash -c 'set -o pipefail; make -C … | tee …'` (a plain sh pipe returns tee's 0 and masks failures), and **marker files** (`.already_released_marker-<name>`, `.incomplete_marker-<name>`, `.unknown_marker-<name>`) distinguish SKIP, INCOMPLETE and UNKNOWN from a real FAILURE (make flattens recipe exit codes to 2, so the code alone can't tell them apart). Do not regress either.
- **Bounded parallelism:** `release_all_clients` feeds `CLIENTS` to `xargs -P $(RELEASE_JOBS) -I{} make release_client_job RELEASE_JOB_CLIENT={} …` (`RELEASE_JOBS?=2`, validated as a positive integer — `xargs -P 0` would mean unbounded; `RELEASE_JOBS=1` is sequential in `CLIENTS` order). `release_client_job` runs one `release_<client>_client` into `release_run_<client>.log`, writes `.client_status-<client>` and prints `START:`/`DONE:` lines; it **always exits 0**, because an exit code of 255 makes xargs stop starting the remaining clients. The summary then reads the status files in `CLIENTS` order: `INCOMPLETE`, `UNKNOWN`, `FAILED` and a missing status (`NO_STATUS`) fail the target. Verified with fake client targets at `RELEASE_JOBS=1/2/11`: measured maximum concurrency 1/2/11.
- **The proto-compiler tag is resolved ONCE per run** with `git ls-remote --tags --refs` (X.Y.Z tags only, `sort -V`, `GIT_TERMINAL_PROMPT=0` so an unreachable URL fails instead of prompting) and handed to every client as `PROTO_COMPILER_TAG=<tag>` on the command line; `release_client` falls back to resolving it itself (standalone `release_<client>_client`) and stops before cloning when it comes back empty — an empty tag would write `ONDEWO_PROTO_COMPILER_GIT_BRANCH=tags/`. It used to be one unauthenticated GitHub REST call per client, 11 per run against a 60-per-hour limit. Command-line variables travel to every sub-make through `MAKEFLAGS`, including the clients' own makes, and override the clients' own definitions, so `PROTO_COMPILER_TAG`, `RELEASE_JOB_CLIENT`, `RELEASE_JOBS`, `GENERIC_CLIENT`, `RELEASEMD`, `UPPER_REPO_NAME` and `GENERIC_RELEASE_SECTION`/`_EXTRA` must stay unused in every client Makefile (checked: none of the 11 uses them).
- Every token-bearing recipe line is `@`-prefixed so make never echoes a secret — `docker run -e <TOKEN>`, `echo $(TOKEN) | gh auth`, `twine … -p${PYPI_PASSWORD}`, and the credential sub-make `make release $(info)` (which expands the token at runtime and is easy to miss). The python client's `make release $(info)` on `master` is still missing its `@` — see "The release prints credentials" below.
- `release_client` changes only the client's `RELEASE.md` and three **definition lines** of its `Makefile`, and the rewrites are **anchored**: `^ONDEWO_NLU_VERSION\s*=`, `^ONDEWO_PROTO_COMPILER_GIT_BRANCH\s*=` and `^((ONDEWO_)?NLU_API_GIT_BRANCH)\s*=` (the capture keeps both spellings of the API pin). The old unanchored `ONDEWO_NLU_VERSION.*=.*` also matched every recipe or comment line that mentions the name with any `=` after it and cut off the rest of the line — it would turn go's `check_go_module_path` into a shell syntax error and rust's `update_cargo_version` into an unterminated make variable reference (`*** unterminated variable reference. Stop.`), and angular's committed Makefile still carries two comments it mangled. Do not un-anchor them, and keep these three as plain `NAME=value` lines in every client (a `?=` or `:=` definition is not matched). Every other file that carries the version (composer.json, go.mod, Cargo.toml/Cargo.lock, pom.xml, README install snippets) is bumped by the client's own `ondewo_release` — before its `spc` wherever `spc` checks that file.
- The notes heading is `## Release ONDEWO NLU <UPPER_REPO_NAME> Client <version>`, and each client's notes slice matches it case-sensitively. `UPPER_REPO_NAME` defaults to the ssh-URL suffix with an upper-case first letter; `release_php_client` passes `UPPER_REPO_NAME=PHP` and `release_cpp_client` passes `UPPER_REPO_NAME='C\+\+'` on the `make release_client` command line, which beats the `$(eval)` inside it. The escapes are for the duplicate-entry `grep -E`; the perl that writes the heading drops them. Without the override php's own `check_release_notes` refuses the `Php` heading before anything is pushed.
- A `CLIENTS` entry must equal the ssh-URL suffix after `ondewo-nlu-client-` (`csharp`, `cpp`, …): `REPO_NAME`, and with it the marker files, is cut from the URL, so a mismatch reports an already-released client as FAILED instead of SKIP.
- **Rerun semantics — SKIP vs INCOMPLETE vs UNKNOWN.** Only the exact branch `release/<version>` counts (`git rev-parse --verify refs/remotes/origin/release/<version>` in the fresh clone; the old `git branch -a | grep -q <version>` also matched e.g. `feature/<version>-x`). When it exists, `release_client` asks `https://api.github.com/repos/ondewo/<repo>/releases/tags/<version>` (the endpoint returns only a _published_ release — a draft answers 404): 200 → `SKIP`, 404 → `INCOMPLETE`, anything else → `UNKNOWN` (403/429 is the limit of 60 unauthenticated calls per hour, 000 no connection). Never map an unexpected code to `SKIP`, and never fold it into `INCOMPLETE`, whose hint tells the operator to finish or undo the client release. **Do not replace this with the HTML page `github.com/<repo>/releases/tag/<version>`: it answers 200 for a bare tag without any release** (measured: go's `v7.1.0` tag, which has no release — the REST call answers 404 for it). The six new clients create their GitHub release as their LAST step, and the npm clients (nodejs, typescript, angular, js) publish to npm before they even push the release branch and create the GitHub release last, so for them `SKIP` means complete and `INCOMPLETE` catches any unfinished step. python creates its GitHub release BEFORE its PyPI upload, so for python `INCOMPLETE` covers only the GitHub-release step and a failed PyPI upload still reports `SKIP` — check PyPI.
- **A failed or interrupted client release no longer leaves the credentials behind.** The `bash -c` that runs the client's `ondewo_release` sets `trap "rm -rf <clone>/ondewo-devops-accounts" EXIT INT TERM`; the rest of `ondewo-nlu-client-<name>/` is kept for debugging. `EXIT` alone is not enough — measured: bash killed by SIGINT skips its EXIT trap, so Ctrl-C kept the clone until `INT TERM` were added. The leftovers of a failed run (`ondewo-nlu-client-*/`, `temp-notes-*`, the three marker kinds and the status files, `release_run_*.log` via `*.log`, `build_log_*.txt`) are gitignored; the next run replaces them. The API's own `run_release_with_devops` / `run_unrelease_with_devops` likewise delete `./ondewo-devops-accounts` when their sub-make fails.
- **Every release is local and its credentials come only from `ondewo-devops-accounts`.** Nothing is built or published in CI and no GitHub secret is used; the client repos' workflows test only. The six new clients' `run_release_with_devops` read exactly the variables they need with **anchored** greps (`grep -E '^(NAME1|NAME2)='`): several devops env files start with `#` comment lines that name the variables, and one such line reaching `make release $(info)` comments out every credential after it. The old clients' unanchored `grep GITHUB_GH` / `grep PYPI_…` / `grep NPM_AUTOMATION_TOKEN` have worked so far (python and js 7.2.0 released with them), so no comment line naming those variables precedes their values today; anchoring them is the old clients' business. The API's own hand-off reads `^GITHUB_GH_TOKEN=` the same way, and its `make release` first runs `check_release_credentials` (set, on the host) and `validate_release_credentials_via_docker_image` (`gh api repos/ondewo/ondewo-nlu-api --jq .permissions.push` must print `true`, in the utils image) — the target names the six new clients use too (go keeps its older `check_gh_credentials` for the presence check) — so a missing or dead token stops the release before anything is pushed.
- Host requirements: the php, go, rust, cpp, java and csharp clients generate code in their ondewo-proto-compiler image and run every toolchain, `gh` and registry step in their own `Dockerfile.utils` image (`ondewo-nlu-client-utils-<lang>:<version>`, repo mounted, run with `--user`), so they need only `make`, `git`, `docker`, `perl` and `curl` on the host. The older clients still use host tools: python needs `uv` (its build runs `uv run`, which also provides `pre-commit`), nodejs/typescript/angular/js need `node` and `npm` plus `uv`, `pipx` or `pip` (to install `pre-commit`). `release_client` itself needs `git` (`ls-remote` for the compiler tag), `curl` (the rerun check's REST call) and passwordless `sudo` (`sudo rm -rf` of the clone after a success).

## Pre-commit upgraded (language-agnostic hook set)

Pre-commit here uses only the language-agnostic hooks — **markdownlint-cli2, pre-commit-hooks hygiene, giticket, conventional-pre-commit** — no ruff/mypy/uv (there is no Python). Generated docs (`docs/`) and any generated code are excluded via the top-level `exclude:`.

- **markdownlint MD053 is disabled** (its auto-fix deletes `[comment]: <>` reference-definition markers).
- **markdownlint RELEASE.md reformatting is content-safe**: it only strips trailing whitespace and adds blank lines around headings — the `## Release … <VERSION>` headings and `*****` separators that `ondewo_release` slices on remain intact. (Confirmed: the 6.5.0 release notes sliced correctly after the reformat.)
  ⚠️ Until 2026-07-16 `CURRENT_RELEASE_NOTES` (`Makefile:30`) did **not** terminate on `*****` as this note
  claimed — its perl range ended on `/\*\*/`, i.e. the first markdown **bold** span inside the entry, and
  silently truncated the release body there. It looked correct only because no entry had used inline bold;
  7.0.0 is the first that does. Now fixed to `/^\*{5}/`. If you add a bullet to RELEASE.md and it does not
  appear in the GitHub release, check that pattern first — `gh release create` reports no error.

## GitHub Actions — `Generate Documentation` is a REQUIRED gate

`.github/workflows/generate-doc-and-deploy.yaml` (note `.yaml`, and it is the **only** workflow file)
runs on every push to `master`, every PR against `master`, and `workflow_dispatch`. It is a gate, not
advisory: it regenerates `docs/` from the protos and **commits the result back to `master`**, so a
broken run means the published API docs stop tracking the `.proto` files. Three steps, in order:

1. `actions/checkout@v5`.
2. `ondewo/ondewo-protoc-gen-doc-action@master` — a **docker** action: it builds its own `Dockerfile`
   (`FROM pseudomuto/protoc-gen-doc`) and runs `entrypoint.sh` with the default inputs `html,md` and
   `index`, i.e. `protoc` once per format.
3. `Deploy 🚀` — `JamesIves/github-pages-deploy-action@v4`, `branch: master`, `folder: docs`,
   `target-folder: docs`, guarded by `if: ${{ !env.ACT }}`.

**Reproduce steps 1–2 locally with `make build_docs`.** It clones the action, builds the same image and
runs the same entrypoint arguments, so it is the workflow rather than an approximation of it:

```bash
make build_docs       # clones .tmp-protoc-gen-doc-action, builds it, runs `html,md index`
git status --porcelain  # MUST be empty — see below
make clean_docs_builder
```

The raw form the action itself executes, for when you need to see it:

```bash
protoc -I. -Igoogleapis --doc_opt=/resources/templates/<fmt>.tmpl,index.<fmt> \
  --doc_out=docs $(find ondewo -name '*.proto' | sort)
```

- **`git status --porcelain` after `make build_docs` IS the check.** Because step 3 commits generated
  docs back to `master`, `docs/index.html`, `docs/index.md` and `docs/style.css` are build artifacts
  that happen to be tracked — never hand-edit them, CI overwrites them. A dirty tree after a rebuild
  means the committed docs no longer match the protos. Verified byte-identical at `e1b39db`.
- **The doc set is FILESYSTEM-SCANNED (`find ondewo -name '*.proto'`), and that fails OPEN.** Only
  files under `ondewo/` are documented; `google/` is import-path input via `-I.` and gets no section of
  its own (confirmed: `index.md` has 20 file sections, all `ondewo/nlu/*` plus `ondewo/qa/qa.proto`,
  and no `## google/` heading). So a `.proto` added OUTSIDE `ondewo/` is silently absent from the docs
  and the workflow still goes **green** — the run cannot tell you that a file vanished from the report.
  Put new protos under `ondewo/`, and check the new `## <path>` heading actually appears in `index.md`.
- **`googleapis: warning: directory does not exist.` twice per run is EXPECTED, not a failure.** The
  action's entrypoint passes `-Igoogleapis`; this repo has no such directory, so protoc warns once per
  format and exits `0`. Do not "fix" it here — the `-I` list lives in the action repo, not this one.
- **`--user "$(id -u):$(id -g)"` in `build_docs` is load-bearing.** GitHub Actions runs a docker action
  as root; a raw root `docker run` of the same entrypoint leaves `docs/style.css` owned by `root:root`
  in your worktree (it is the file the entrypoint `cp -r /resources/html/*` recreates), and you then
  need `sudo` to clean up. Reproduced twice — keep the flag if you touch that recipe.
- **There is no Python gate here, and no `uv`.** No `pyproject.toml`, no `uv.lock`, no ruff / mypy /
  pytest / coverage threshold — so the sibling repos' `uv run --frozen …` fast loop has no analogue in
  this repo and there is no stale lock to catch. The only local gates are `make build_docs` and
  `make precommit_hooks_run_all_files`.
- **Step 3 cannot be run locally, by design.** It pushes to `master`, and its `!env.ACT` guard exists so
  a local `act` run stops after doc generation. Never reproduce it by hand.
- History as of `e1b39db`: 22 runs, **22 successes**, PR runs included; run #21 is this commit.

## Jenkins — never trigger a multibranch scan or branch indexing

**NEVER trigger a Jenkins multibranch scan or branch indexing.** Do not call a multibranch/folder job's
`build`, `scan`, or reindex endpoints, click "Scan Repository Now" / "Build Now" on a folder, run
`p4 scan`, or use any API/CLI that reindexes branches or scans the repository. A scan/reindex runs across
**every** branch, consumes CI resources, and can kick off unintended builds and deploys.

If a branch is not building — it was not discovered, or its job is marked `buildable: false` / orphaned —
**report it and stop**. Let the user or a Jenkins admin adjust branch-discovery/config or rename the branch
to the convention. Never force a build by scanning or reindexing.

## Releasing: preflight and the traps that have actually bitten

Written after a release program across every ONDEWO client in one session. Each item below
cost real time or a broken artefact; every statement is derived from THIS repo's Makefile.

### Before you touch the version, check the released tag is in `master`

Releases here are cut from a `release/<version>` branch and are **not always merged back**, so
`master` can be missing work that is already published — and because a later version number
sorts above the unmerged one, a consumer upgrading silently loses it. The ondewo-nlu-client-python
7.1.0 release was exactly this: it shipped from a `master` that had never seen 7.0.5's
offline-token hand-off, so PyPI's newest release was a regression against its predecessor.

```bash
latest=$(git tag --sort=-v:refname | head -1)
git merge-base --is-ancestor "$latest" master && echo "in master" || echo "NOT in master -- merge first"
```

A fast-forward (`git merge --ff-only <tag>`) is the common case. A true merge needs care: resolve
metadata toward `master` and keep BOTH release-note sections, newest first — a reader upgrading
from the older line still needs the older entry.

### The release notes are sliced by an EXACTLY-CASED heading

`CURRENT_RELEASE_NOTES` slices `RELEASE.md` with a perl range. In THIS repo the opening
pattern is, verbatim:

```text
Release ONDEWO NLU API ${ONDEWO_NLU_API_VERSION}
```

So the heading of a new entry must read exactly `## Release ONDEWO NLU API <version>`. **This wording is
not consistent across the ONDEWO repos** — some say `... <Name> Client`, some `... Client
<Name>` with the words reversed, the API repos say `... API` with no `Client` at all, and the
casing varies (`Js`, `Nodejs`, `Typescript`, `Survey`). Do not carry a heading over from a
sibling repo. Copy the PREVIOUS entry in this file and change only the version, or read the
pattern above out of the Makefile.

A heading that does not match yields an **empty slice**, and the GitHub release is then
created with empty notes or fails outright. Verify before releasing:

```bash
grep -c '^## Release ONDEWO NLU API ' RELEASE.md     # must be >= 1 for your new version
```

### Where the release notes live

This repo has no `src/RELEASE.md` and regenerates nothing: the root `RELEASE.md` is the one the
release reads (`CURRENT_RELEASE_NOTES`, and the copy `build_utils_docker_image` puts into the image).

### Publish order decides how a partial failure is recovered

`make release` in this repo runs:

1. `check_release_credentials` — `GITHUB_GH_TOKEN` must be set and not the placeholder;
2. `validate_release_credentials_via_docker_image` — builds the utils image from `Dockerfile.utils`
   and runs `make validate_release_credentials` in it: read-only,
   `gh api repos/ondewo/ondewo-nlu-api --jq .permissions.push`; anything but `true` stops the
   release **before anything is pushed** (a dummy token stops here with `gh: Bad credentials (HTTP 401)`);
3. `create_release_branch` — `git checkout -b release/<version>`, then pushes it;
4. `create_release_tag` — tags HEAD, then pushes the tag;
5. `build_and_release_to_github_via_docker` — runs `gh auth login` and `gh release create` in the
   utils image.

There is no package registry here: the **GitHub release happens LAST**. A dead or under-privileged
token no longer gets that far, but a failure in step 5 itself (GitHub answering 500, say) leaves the
branch and the tag on origin without a release — and `spc` will then refuse a re-run of
`make ondewo_release`. Recover by running only the remaining step, not the whole target, from the
same checkout (the image copies its `Makefile` and `RELEASE.md`):

```bash
make clone_devops_accounts
make build_and_release_to_github_via_docker $(grep -E '^GITHUB_GH_TOKEN=' ondewo-devops-accounts/account_github.env)
rm -rf ondewo-devops-accounts
```

`make ondewo_unrelease` deletes the GitHub release and the remote branch and tag if you have to start
over; check out `master` first, or it cannot delete the local `release/<version>` you are on and
`spc` keeps refusing.

### Verify against the registry, with the REAL package name

This repo publishes **no package**: its artefacts are the `release/<version>` branch, the `<version>`
tag and the GitHub release (plus `docs/`, which CI commits back to `master`, and the versioned docs on
ondewo.github.io if you run `make update_githubio`). Verify those as in "Verify the three artefacts
separately" below.

The clients that `release_all_clients` drives do publish packages, and a package name is not always
the repository name — the JS client publishes as `@ondewo/ondewo-nlu-client-js` (doubled `ondewo`),
so a lookup by repo name returns a 404 that reads like a failed release. Check the name in the
client's manifest (`package.json`, `pyproject.toml`, `composer.json`, `go.mod`, `Cargo.toml`,
`pom.xml`, `Ondewo.NLU.Client.csproj`) first, then query its registry, e.g. for an npm client:

```bash
npm view <name from the client's package.json> versions --json
```

**An npm publish can be STAGED but not yet served.** Immediately after a publish the registry may
answer 404 for the new version while refusing a re-publish with
`409 Cannot publish over previously staged version`. That is not a failure and the version is
not burned — wait and re-check before bumping to a new number.

### The release prints credentials — read the log BEFORE you scrub it

`make ondewo_release` clones `ondewo-devops-accounts` and passes the tokens on the make command line.
In this repo that line (`@make release $(info)`) and every other token-bearing line are `@`-prefixed,
so the API's own release echoes no token — but a client's release does wherever its credential
sub-make lacks the `@`: python's `make release $(info)` on `master` has none, so `release_all_clients`
writes the GitHub and PyPI credentials into `release_run_python.log` and `build_log_python.txt` in this
working tree (gitignored, but never scrubbed), and into any transcript capturing them.
This is a known and accepted property of the shared release path: do **not** re-plumb the recipe.
Redirect the run to a file, read it through a filter, and shred the file afterwards — and read it
**before** shredding, or a genuine failure is lost with the secrets:

```bash
umask 077; make ondewo_release > /tmp/rel.log 2>&1; echo "RC=$?"
grep -avE 'TOKEN|PASSWORD|USERNAME|_authToken' /tmp/rel.log | tail -20   # read FIRST
shred -u /tmp/rel.log; rm -rf ondewo-devops-accounts                     # then scrub
shred -u release_run_python.log build_log_python.txt                      # after release_all_clients, once read
```

### Run the release from `master`, and check with `git branch --show-current`

A release ends by checking out `release/<version>`, and **nothing checks you out back**. Start the
next release from that leftover checkout and `git commit` + `git push` land on the OLD release
branch: the new `release/<version>` is cut from it, the tag points into it, and `master` never sees
the release at all. Measured on ondewo-csi-client-typescript 5.5.1 -- npm had it, the tag had it,
and `origin/master` was still at 5.5.0. Recovery was a fast-forward (`git merge --ff-only
release/5.5.1`), which worked only because nothing else had moved; a diverged `master` needs a real
merge.

```bash
git branch --show-current            # must print master BEFORE `make ondewo_release`
```

### The release `git add` list is an ALLOW-LIST, so anything outside it ships but is never committed

This repo's `make release` builds nothing and stages nothing: it cuts `release/<version>` and the tag
from HEAD as it is. Uncommitted edits are therefore **absent from the tag**, although the release still
reads them — the version comes from the working-tree `Makefile`, and `build_utils_docker_image` copies
the working-tree `Makefile` and `RELEASE.md` into the image that creates the GitHub release. So an
uncommitted version bump or notes entry names and describes a release whose tag does not contain it.

The clients do have the allow-list: their `make build` writes files the release target then stages
from a fixed list of paths. Anything the build touches that is not on that list reaches the registry
and is **absent from the tag of that same version** -- two different things under one name, with
nothing anywhere reporting it.

Both directions have bitten: a hand-written directory the build copies into the package, and a
tracked file the build regenerates. Whatever `make build` writes, either stage it or prove the
release does not need it.

The general check costs nothing:

```bash
git status --porcelain    # here: MUST be empty BEFORE the release; in a client: MUST be empty after it
```

### Write the RELEASE.md section BEFORE releasing, or the release body is silently empty

`CURRENT_RELEASE_NOTES` slices RELEASE.md between the heading naming this exact version and the next
`*****` separator. No heading means an EMPTY slice, `gh release create -n ""` succeeds, and you get a
release with no notes and no error anywhere. ondewo-nlu-client-js and -typescript 7.1.1 shipped that
way and had to be repaired after the fact.

```bash
cat RELEASE.md | perl -ne 'print if /<the exact heading> <version>/../^\*{5}/' | wc -l   # must be > 0
```

### Verify the three artefacts separately -- they fail independently

GitHub's release API returned 500 twice in one session, leaving the registry and the tag correct and
**no release object at all** (nlu-client-js and -angular 7.1.1); `gh release create` after the fact
repairs it without touching the artefact. In this repo the three are the `release/<version>` branch,
the tag and the GitHub release; in a client they are its registry package, the tag and the GitHub
release.

```bash
git ls-remote --heads origin release/<version> ; git tag --list <version> ; gh release view <version> --json body --jq '.body|length'
```
