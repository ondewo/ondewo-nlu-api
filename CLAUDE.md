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
