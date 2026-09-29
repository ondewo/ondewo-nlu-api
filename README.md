<p align="center">
    <a href="https://www.ondewo.com">
      <img alt="ONDEWO Logo" src="https://raw.githubusercontent.com/ondewo/ondewo-logos/master/github/ondewo_logo_github_2.png"/>
    </a>
</p>

# ONDEWO NLU APIs

This repository contains the original interface definitions of public ONDEWO APIs that support gRPC protocols. Reading the original interface definitions can provide a better understanding of ONDEWO APIs and help you to utilize them more efficiently. You can also use these definitions with open source tools to generate client libraries, documentation, and other artifacts.

The API documentation is generated from files using [protoc-gen-doc](https://github.com/pseudomuto/protoc-gen-doc) in formats:

* [html](https://ondewo.github.io/ondewo-nlu-api)
* [markdown](docs/index.md)

The core components of all the client libraries are built directly from files in this repo using [the proto compiler](https://github.com/ondewo/ondewo-proto-compiler).

For an end-user, the APIs in this repo function mostly as documentation for the endpoints. For specific implementations, look in the following repos for working implementations:

* [Python](https://github.com/ondewo/ondewo-nlu-client-python)
* [Angular](https://github.com/ondewo/ondewo-nlu-client-angular)
* [JavaScript](https://github.com/ondewo/ondewo-nlu-client-js)
* [TypeScript](https://github.com/ondewo/ondewo-nlu-client-typescript)
* [NodeJS](https://github.com/ondewo/ondewo-nlu-client-nodejs)
* [PHP](https://github.com/ondewo/ondewo-nlu-client-php)
* [Go](https://github.com/ondewo/ondewo-nlu-client-go)
* [Rust](https://github.com/ondewo/ondewo-nlu-client-rust)
* [C++](https://github.com/ondewo/ondewo-nlu-client-cpp)
* [Java](https://github.com/ondewo/ondewo-nlu-client-java)
* [C#](https://github.com/ondewo/ondewo-nlu-client-csharp)

Please note that some of these implementations are works-in-progress. The repo will make clear the status of the implementation.

## Overview

ONDEWO APIs use [Protocol Buffers](https://github.com/google/protobuf) version 3 (proto3) as their Interface Definition Language (IDL) to define the API interface and the structure of the payload messages. The same interface definition is used for gRPC versions of the API in all languages.

There are several ways of accessing APIs:

1. Protocol Buffers over gRPC: You can access APIs published in this repository through [GRPC](https://github.com/grpc), which is a high-performance binary RPC protocol over HTTP/2. It offers many useful features, including request/response multiplex and full-duplex streaming.

2. ONDEWO Client Libraries:
You can use these libraries to access ONDEWO Cloud APIs. They are based on gRPC for better performance and provide idiomatic client surface for better developer experience.

## Discussions

Please use the issue tracker in this repo for discussions about this API, or the issue tracker in the relevant client if it is language-specific.

## Repository Structure

```bash
.
├── CONTRIBUTING.md
├── Dockerfile.utils
├── docs
│   ├── index.html
│   ├── index.md
│   └── style.css
├── LICENSE
├── Makefile
├── ondewo
│   ├── nlu
│   │   ├── agent.proto
│   │   ├── aiservices.proto
│   │   ├── ccai_project.proto
│   │   ├── common.proto
│   │   ├── context.proto
│   │   ├── entity_type.proto
│   │   ├── intent.proto
│   │   ├── llm_evaluation.proto
│   │   ├── operation_metadata.proto
│   │   ├── operations.proto
│   │   ├── project_role.proto
│   │   ├── project_statistics.proto
│   │   ├── rag.proto
│   │   ├── server_statistics.proto
│   │   ├── session.proto
│   │   ├── user.proto
│   │   ├── utility.proto
│   │   └── webhook.proto
│   └── qa
│       └── qa.proto
├── README.md
└── RELEASE.md

```

## Generate gRPC Source Code

API client libraries can be built directly from files in this repo using [the proto compiler.](https://github.com/ondewo/ondewo-proto-compiler)

## Automatic Release Process

The entire process is automated to make development easier. The actual steps are simple:

TODOs after Pull Request was merged in:

* Checkout master:
    >git checkout master
* Pull the new stuff:
    >git pull
* (If not already, run the `setup_developer_environment_locally` command):
   >make setup_developer_environment_locally
* Update the `ONDEWO_NLU_API_VERSION` in the `Makefile`
* Add the new Release Notes in `RELEASE.md` in the format:

   ```markdown
   ## Release ONDEWO NLU API X.X.X       <---- Beginning of Notes

      ...<NOTES>...

   *****************                      <---- End of Notes
   ```

* `Commit and push` the changes made in `RELEASE.md` and `Makefile`
* Release:
   >make ondewo_release

---
The `make ondewo_release` command runs these steps, all on your machine:

* checking that the release branch and the release tag do not exist yet (`make spc`)
* cloning the devops-accounts repository and extracting the GitHub token
* checking that the token is set (`make check_release_credentials`), then building the utils docker image
  (`Dockerfile.utils`) and checking in it, read-only, that GitHub accepts the token with push access to this repository
  (`make validate_release_credentials_via_docker_image`) -- before anything is pushed
* creating and pushing the release branch
* creating and pushing the release tag
* creating the GitHub release with `gh` inside the utils image

The variable for the GitHub Access Token is inside the Makefile, but the value is overwritten during
`make ondewo_release`, because it is passed from the devops-accounts repo as an argument to the actual `release` command.
Credentials exist only in the `ondewo-devops-accounts` repository: none is stored in this repository or as a GitHub
secret. The only GitHub workflow of this repository generates the documentation (see below); it releases nothing.

## Automatic Release Process - Clients

Every available Client of this API can be released from this repository, to make the release process for major and minor changes easier.

The generic `release_client` command depends on these variables:

* `ONDEWO_NLU_API_VERSION` -- Current API version
* `GENERIC_CLIENT` -- specifies `SSH git link` to client-repository
* `RELEASEMD` -- position of `RELEASE.md` inside the client-repository
* `GENERIC_RELEASE_NOTES` -- template text of client release notes; `GENERIC_RELEASE_SECTION` (default `Improvements`)
  and `GENERIC_RELEASE_EXTRA` set its section heading and add bullets to it
* `UPPER_REPO_NAME` -- optional: the client name in the notes heading `## Release ONDEWO NLU <name> Client <version>`.
  It defaults to the repository suffix with an upper-case first letter (`Python`, `Go`, `Csharp`, ...).
  `release_php_client` passes `PHP` and `release_cpp_client` passes `C\+\+` (escaped for `grep -E`), because the
  headings of those two clients read `PHP` and `C++`
* `PROTO_COMPILER_TAG` -- optional: the ondewo-proto-compiler tag the client is pinned to. `release_all_clients` passes
  it; without it `release_client` reads the newest `X.Y.Z` tag itself with `git ls-remote` and stops before cloning
  anything if it cannot

`release_client` clones the client and first checks whether it was released before. If the client already has the
branch `release/<version>`, it asks the GitHub REST API whether the client also has the published GitHub release
`<version>` (one unauthenticated call; the page `github.com/<repo>/releases/tag/<version>` cannot tell, because it
answers 200 for a tag without a release too) and stops with `SKIP`, `INCOMPLETE` or `UNKNOWN`. Otherwise it adds the
generated notes to the client's `RELEASE.md` (unless it already documents this version), sets the `ONDEWO_NLU_VERSION`,
`ONDEWO_PROTO_COMPILER_GIT_BRANCH` and `(ONDEWO_)NLU_API_GIT_BRANCH` definition lines of the client `Makefile` to this
API version and the proto-compiler tag, and runs the client's `make ondewo_release`. Every other file that carries the
client version is derived from that `Makefile` by the client itself. If `ondewo_release` fails or is interrupted,
`release_client` deletes the client's clone of `ondewo-devops-accounts` (the real credentials) at once and keeps the
rest of `ondewo-nlu-client-<name>/` for debugging. That directory, `temp-notes-<name>` and the logs are gitignored, and
the next run replaces them.

Every client release runs entirely on the machine that runs the make target. The client's `make ondewo_release` clones
`ondewo-devops-accounts` from Bitbucket and hands the credentials it needs to its `make release`; they exist only in
that repository, not in any GitHub repository or organisation secret. No GitHub workflow builds or publishes a
client: the workflows in the client repositories only run tests and lint on pushes and pull requests.

| Client                          | Credentials (`ondewo-devops-accounts`)            | Publishes to                                |
|---------------------------------|---------------------------------------------------|---------------------------------------------|
| python                          | `account_github.env`, `account_pypi.env`          | PyPI                                        |
| nodejs, typescript, angular, js | `account_github.env`, `account_npm.env`           | npm                                         |
| php                             | `account_github.env`, `account_packagist.env`     | Packagist (update request)                  |
| go                              | `account_github.env`                              | the Go module proxy (tags `<v>` and `v<v>`) |
| rust                            | `account_github.env`, `account_cargo.env`         | crates.io (`cargo publish`)                 |
| cpp                             | `account_github.env`                              | an archive attached to the GitHub release   |
| java                            | `account_github.env`, `account_maven_central.env` | Maven Central                               |
| csharp                          | `account_github.env`, `account_nuget.env`         | NuGet                                       |

The php, go, rust, cpp, java and csharp clients run every toolchain, `gh` and registry step in their own
`Dockerfile.utils` image, in this order:

1. before anything is pushed, check that every credential they use is set (`make check_release_credentials`; go keeps
   its older name `check_gh_credentials`), then check read-only, in the image, the ones that have a documented read-only
   check (`make validate_release_credentials_via_docker_image`, which runs `validate_release_credentials`): the GitHub
   token must be allowed to push to the client repository, and java also checks its Maven Central token against the
   Central Portal API and signs a test file with its GPG key;
2. check the release notes, build, test and rehearse the publication (dry run; go rehearses it right after the commit of
   step 3, because it packs the committed tree);
3. commit the release changes (a failing commit stops the release), then push `master`, the release branch and the
   tag(s);
4. publish to the registry. java waits until Maven Central reports the release as published and fails otherwise --
   there is no manual "Publish" in the Central Portal. csharp's NuGet push skips a version that already exists, so
   repeating the push after a partial failure is safe. go's module-proxy warm-up only warns when it fails: the tag is
   the release;
5. create the GitHub release as the LAST step, so a published GitHub release marks a complete release. cpp attaches
   its archive and checksum; `gh release create` uploads them to a draft and publishes it only once both are there.

The older clients differ: nodejs, typescript, angular and js publish to npm before they push their release branch and
create the GitHub release last; python creates its GitHub release before it uploads to PyPI.

To release all clients, use the `make release_all_clients` command. It reads the newest ondewo-proto-compiler tag once
(`git ls-remote`; it stops before any client if that fails), passes it to every client and runs
`release_<client>_client` for every entry of `CLIENTS` (python, nodejs, typescript, angular, js, php, go, rust, cpp,
java, csharp), at most `RELEASE_JOBS` at a time (default 2; `make release_all_clients RELEASE_JOBS=1` releases one
client after the other). Each client's output goes to `release_run_<client>.log`, and a failing client does not stop
the others. The summary shows one status per client:

* `RELEASED` -- released by this run
* `SKIP` -- the client already has the branch `release/<version>` and the published GitHub release `<version>`
* `INCOMPLETE` -- the client has `release/<version>` but no published GitHub release: an earlier release stopped
  part-way. Finish or undo it in the client. For php, go, rust, cpp, java, csharp and the npm clients this covers every
  step, because their GitHub release comes last. For python it covers only the GitHub release: a PyPI upload that
  failed after it still shows `SKIP`, so check PyPI
* `UNKNOWN` -- the client has `release/<version>`, but the GitHub API answered neither 200 nor 404 (HTTP 403 or 429:
  its limit of 60 unauthenticated calls per hour; 000: no connection). Nothing was changed; rerun later
* `FAILED` -- see `release_run_<client>.log`

`INCOMPLETE`, `UNKNOWN` and `FAILED` make the command fail.

The machine that runs it needs `make`, `git` with SSH access to GitHub and Bitbucket, `docker`, `perl`, `curl` and
passwordless `sudo`. The php, go, rust, cpp, java and csharp clients generate their code in an ondewo-proto-compiler
image and do everything else in their `Dockerfile.utils` image, so they need no language toolchain on the host. The
python client additionally needs `uv` (its build runs `uv run`, which also provides `pre-commit`), and the nodejs,
typescript, angular and js clients need `node` and `npm` plus `uv`, `pipx` or `pip` to install `pre-commit`, because
parts of their builds run on the host.

## Proto Documentation

The documentation for this, and all other APIs and their available versions, can be found on [ondewo.github.io](https://ondewo.github.io). For Offline usage, it can also be found in the `docs` folder.

`make update_githubio` publishes the `docs` folder of the current `ONDEWO_NLU_API_VERSION` to the `ondewo.github.io`
repository. It is neither a `pre-commit` hook nor part of `make ondewo_release`: run it on `master` after the release.
It will preemptively stop if:

* The command is not run on the `master` branch
* There already exists a version-object with the specified version in the `data.js` of the `ondewo.github.io` repository

> :warning:  This command is dependent on your installation of NPM and NodeJS -- Make sure to install both, or run `make setup_developer_environment_locally`
