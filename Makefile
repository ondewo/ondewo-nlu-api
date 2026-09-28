export
# ---------------- BEFORE RELEASE ----------------
# 1 - Update Version Number
# 2 - Update RELEASE.md
# 3 - Commit and push both: the release branch and tag are cut from HEAD
# -------------- Release Process Steps --------------
# 1 - Check that Release Branch and Tag do not exist yet (spc)
# 2 - Get Credentials from devops-accounts repo
# 3 - Check that the GitHub token is set and may push to this repo, before anything is pushed (gh in the utils docker image)
# 4 - Create Release Branch and push
# 5 - Create Release Tag and push
# 6 - GitHub Release (gh in the utils docker image)

########################################################
# 		Variables
########################################################

# MUST BE THE SAME AS API in Mayor and Minor Version Number
# example: API 2.9.0 --> Client 2.9.X
ONDEWO_NLU_API_VERSION=7.2.0

# Placeholder only: `make ondewo_release` passes the real token from ondewo-devops-accounts/account_github.env on
# the command line. Credentials live only in that repo - never commit one here or store it anywhere on GitHub.
GITHUB_GH_TOKEN?=ENTER_YOUR_TOKEN_HERE

# Terminate on the ***** separator that delimits release entries, NOT on /\*\*/ — that matched the first
# markdown **bold** span inside the entry and silently truncated the notes there. It was correct only while
# no entry used inline bold; 7.0.0 is the first that does, and every bullet after the first bold one was
# dropped from `gh release create -n "$(CURRENT_RELEASE_NOTES)"` with no error.
CURRENT_RELEASE_NOTES=`cat RELEASE.md \
	| perl -ne 'print if /Release ONDEWO NLU API ${ONDEWO_NLU_API_VERSION}/../^\*{5}/'`

GH_REPO="https://github.com/ondewo/ondewo-nlu-api"
DEVOPS_ACCOUNT_GIT="ondewo-devops-accounts"
DEVOPS_ACCOUNT_DIR="./${DEVOPS_ACCOUNT_GIT}"
IMAGE_UTILS_NAME=ondewo-nlu-api-utils:${ONDEWO_NLU_API_VERSION}
.DEFAULT_GOAL := help

########################################################
#       ONDEWO Standard Make Targets
########################################################

setup_developer_environment_locally: install_precommit_hooks install_nvm ## Sets up local development environment !! Forcefully closes current terminal

install_nvm: ## Install NVM, node and npm !! Forcefully closes current terminal
	@curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
	@sh install_nvm.sh
	$(eval PID:=$(shell ps -ft $(ps | tail -1 | cut -c 8-13) | head -2 | tail -1 | cut -c 1-8))
	@node --version & npm --version || (kill -KILL ${PID})

install_precommit_hooks: ## Installs pre-commit hooks and sets them up for the repo
	pip install pre-commit
	pre-commit install
	pre-commit install --hook-type commit-msg

precommit_hooks_run_all_files: ## Runs all pre-commit hooks on all files and not just the changed ones
	pre-commit run --all-file

help: ## Print usage info about help targets
	# (first comment after target starting with double hashes ##)
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}'

makefile_chapters: ## Shows all sections of Makefile
	@echo `cat Makefile| grep "########################################################" -A 1 | grep -v "########################################################"`

build_docs: ## Build documentation locally using the same Docker image as CI/CD
	@echo "Building documentation using ondewo-protoc-gen-doc-action..."
	@if [ ! -d ".tmp-protoc-gen-doc-action" ]; then \
		echo "Cloning ondewo-protoc-gen-doc-action..."; \
		git clone --depth 1 https://github.com/ondewo/ondewo-protoc-gen-doc-action.git .tmp-protoc-gen-doc-action; \
	fi
	@echo "Building Docker image with ONDEWO templates..."
	@docker build -t ondewo-protoc-gen-doc:local .tmp-protoc-gen-doc-action
	@echo "Generating documentation..."
	@docker run --rm \
		--user "$(shell id -u):$(shell id -g)" \
		-v "$(shell pwd):/workspace" \
		-w /workspace \
		ondewo-protoc-gen-doc:local \
		html,md index
	@echo "✓ Documentation generated in docs/ directory"
	@echo "  Open docs/index.html in your browser to view"

clean_docs_builder: ## Remove the cloned protoc-gen-doc-action repo and Docker image
	@echo "Cleaning up documentation builder..."
	@rm -rf .tmp-protoc-gen-doc-action
	@docker rmi ondewo-protoc-gen-doc:local 2>/dev/null || true
	@echo "✓ Cleanup complete"

TEST:
	@echo "----------------------------------------------\nGITHUB_GH_TOKEN\n----------------------------------------------\n$(if $(GITHUB_GH_TOKEN),<set>,<unset>)\n"
	@echo "----------------------------------------------\nCURRENT_RELEASE_NOTES\n----------------------------------------------\n${CURRENT_RELEASE_NOTES}\n"

githubio_logic_pre:
	$(eval REPO_NAME:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 ))
	$(eval REPO_NAME_UPPER:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 | perl -pe 's/(.*)/\U$$1/'))
	$(eval DOCS_DIR:=ondewo.github.io/docs/ondewo-${REPO_NAME}-api/${ONDEWO_NLU_API_VERSION})
	@perl -i -ne "print unless /{ number: '${ONDEWO_NLU_API_VERSION}', link: 'ondewo-${REPO_NAME}-api\/${ONDEWO_NLU_API_VERSION}\/' },/" ondewo.github.io/data.js
	@rm -rf ${DOCS_DIR}
	@mkdir "${DOCS_DIR}"
	@cp docs/* ${DOCS_DIR}
	@perl -i -pe "s/h1>Protocol Documentation/h1>${REPO_NAME_UPPER} ${ONDEWO_NLU_API_VERSION} Documentation/" ${DOCS_DIR}/index.html

githubio_logic: | githubio_logic_pre
	$(eval REPO_NAME:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 ))
	$(eval REPO_NAME_UPPER:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 | perl -pe 's/(.*)/\U$$1/'))
	@git branch | grep "*" | grep -q "master" || (echo "Not on master branch"  & rm -rf ondewo.github.io && exit 1)
	@! cat ondewo.github.io/data.js | perl -ne "print if /name\: '${REPO_NAME_UPPER}'/../end\: ''/" | grep -q "number: '${ONDEWO_NLU_API_VERSION}'" || (echo "Already Released" && exit 1)
	$(eval VERSION_LINE:= $(shell cat -n ondewo.github.io/data.js | perl -ne "print if /name\: '${REPO_NAME_UPPER}'/../end\: ''/" | grep "versions: " -A 1 | tail -1 | grep -o -E '[0-9]+' | head -1 | perl -pe 's/^0+//'))
	@TEMP_TEXT="$$(cat ondewo.github.io/script_object.txt | perl -pe 's/VERSION/${ONDEWO_NLU_API_VERSION}/g; s/TECHNOLOGY/${REPO_NAME}/g')" perl -i -pe 'print "$$ENV{TEMP_TEXT}\n" if $$. == ${VERSION_LINE}' ondewo.github.io/data.js
	@npm install prettier && cd ondewo.github.io && npx prettier -w --single-quote data.js
	$(eval DOCS_DIR:=ondewo.github.io/docs/ondewo-${REPO_NAME}-api/${ONDEWO_NLU_API_VERSION})
	$(eval HEADER_LINE:= $(shell cat ${DOCS_DIR}/index.html | grep -n "${REPO_NAME_UPPER} ${ONDEWO_NLU_API_VERSION} Documentation" | grep -o -E '[0-9]+' | head -1 | perl -pe 's/^0+//'))
	@TEMP_IMG="$$(cat ondewo.github.io/script_image.txt)" perl -i -pe 'print "$$ENV{TEMP_IMG}\n" if $$. == ${HEADER_LINE}' ${DOCS_DIR}/index.html
	head -30 ${DOCS_DIR}/index.html
	cat ondewo.github.io/data.js | perl -ne "print if /name\: '${REPO_NAME_UPPER}'/../end\: ''/"
	@git -C ondewo.github.io status
	@git -C ondewo.github.io add data.js
	@git -C ondewo.github.io add docs
	@git -C ondewo.github.io status
	@git -C ondewo.github.io commit -m "Added ${REPO_NAME} Documentation for ${ONDEWO_NLU_API_VERSION}"
	@git -C ondewo.github.io push

update_githubio:
	@if [ -d "ondewo.github.io" ]; then \
		echo "Removing existing directory ondewo.github.io"; \
		rm -rf ondewo.github.io; sleep 3s; \
	fi
	@git clone git@github.com:ondewo/ondewo.github.io.git
	. ~/.nvm/nvm.sh && make githubio_logic || (echo "Done")
	@rm -rf ondewo.github.io

########################################################
#       Repo Specific Make Targets
########################################################
#		Release

release: check_release_credentials validate_release_credentials_via_docker_image create_release_branch create_release_tag build_and_release_to_github_via_docker ## Automate the entire release process
	@echo "Release Finished"

# The two credential checks run before anything is pushed. Without them a missing, revoked or
# under-privileged token let the branch and the tag reach origin and failed only at `gh release create`,
# after which spc refuses a rerun.
check_release_credentials: ## Fail unless GITHUB_GH_TOKEN is set (make ondewo_release reads it from ondewo-devops-accounts)
	@if [ -z "$${GITHUB_GH_TOKEN}" ] || [ "$${GITHUB_GH_TOKEN}" = ENTER_YOUR_TOKEN_HERE ]; then \
		echo "ERROR: GITHUB_GH_TOKEN is not set - run 'make ondewo_release', which reads it from ondewo-devops-accounts/account_github.env"; exit 1; fi
	@echo "GITHUB_GH_TOKEN is set"

# Read-only: one `gh api` GET. It needs gh, so the release runs it in the utils image (wrapper below).
validate_release_credentials: ## Fail unless GitHub accepts GITHUB_GH_TOKEN with push access to ondewo/ondewo-nlu-api (read-only; needs gh)
	@GH_TOKEN="$${GITHUB_GH_TOKEN}" gh api repos/ondewo/ondewo-nlu-api --jq .permissions.push | grep -qx true \
		|| { echo "ERROR: GITHUB_GH_TOKEN from ondewo-devops-accounts cannot push to ondewo/ondewo-nlu-api (invalid, expired or without write access) - nothing was pushed"; exit 1; }
	@echo "GITHUB_GH_TOKEN may push to ondewo/ondewo-nlu-api"

# The token reaches the container through the environment, never on a command line.
validate_release_credentials_via_docker_image: check_release_credentials build_utils_docker_image ## Run validate_release_credentials in the utils image
	@docker run --rm -e GITHUB_GH_TOKEN ${IMAGE_UTILS_NAME} make validate_release_credentials

create_release_branch: ## Create Release Branch and push it to origin
	git checkout -b "release/${ONDEWO_NLU_API_VERSION}"
	git push -u origin "release/${ONDEWO_NLU_API_VERSION}"

create_release_tag: ## Create Release Tag and push it to origin
	git tag -a ${ONDEWO_NLU_API_VERSION} -m "release/${ONDEWO_NLU_API_VERSION}"
	git push origin ${ONDEWO_NLU_API_VERSION}

login_to_gh: ## Login to Github CLI with Access Token
	@echo $(GITHUB_GH_TOKEN) | gh auth login -p ssh --with-token

build_gh_release: ## Generate Github Release with CLI
	gh release create --repo $(GH_REPO) "$(ONDEWO_NLU_API_VERSION)" -n "$(CURRENT_RELEASE_NOTES)" -t "Release ${ONDEWO_NLU_API_VERSION}"

delete_gh_release: ## Delete GitHub Release, release branch and release tag via gh CLI
	-gh release delete --repo $(GH_REPO) "$(ONDEWO_NLU_API_VERSION)" --yes
	-gh api repos/ondewo/ondewo-nlu-api/git/refs/heads/release/${ONDEWO_NLU_API_VERSION} -X DELETE
	-gh api repos/ondewo/ondewo-nlu-api/git/refs/tags/${ONDEWO_NLU_API_VERSION} -X DELETE

unrelease_to_github_via_docker_image: ## Unrelease from Github via docker
	@docker run --rm \
		-e GITHUB_GH_TOKEN=${GITHUB_GH_TOKEN} \
		${IMAGE_UTILS_NAME} make login_to_gh delete_gh_release

unrelease: build_utils_docker_image unrelease_to_github_via_docker_image ## Undo a release: delete the GitHub release, release branch, and release tag
	-git branch -d "release/${ONDEWO_NLU_API_VERSION}"
	-git tag -d "${ONDEWO_NLU_API_VERSION}"
	-git fetch --prune
	@echo "Unrelease of ${ONDEWO_NLU_API_VERSION} complete"

# Each entry must be the part of the client's ssh URL after "ondewo-nlu-client-": release_client derives
# REPO_NAME, and with it the .already_released_marker-<name> / .incomplete_marker-<name> /
# .unknown_marker-<name> read below, from that URL. Each entry also needs a release_<entry>_client target.
CLIENTS := python nodejs typescript angular js php go rust cpp java csharp

# How many client releases release_all_clients runs at the same time; 1 releases them one after the other.
# Every client release builds docker images and compiles its code, so all of them at once overload the host.
RELEASE_JOBS?=2

# Newest ondewo-proto-compiler release tag (X.Y.Z tags only, version-sorted), read with git ls-remote rather
# than the GitHub REST API, which allows 60 unauthenticated calls per hour. release_all_clients resolves it
# ONCE per run and passes it to every client as PROTO_COMPILER_TAG=<tag> on the command line; a standalone
# release_<client>_client resolves it itself in release_client.
PROTO_COMPILER_GIT=https://github.com/ondewo/ondewo-proto-compiler.git
NEWEST_PROTO_COMPILER_TAG=GIT_TERMINAL_PROMPT=0 git ls-remote --tags --refs ${PROTO_COMPILER_GIT} | sed 's|.*refs/tags/||' | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$$' | sort -V | tail -1

release_all_clients: ## Release every client in CLIENTS, at most RELEASE_JOBS at a time; one failing client does not abort the others
	@case "${RELEASE_JOBS}" in ''|*[!0-9]*|0*) echo "ERROR: RELEASE_JOBS must be a positive integer (1, 2, ...), not '${RELEASE_JOBS}'"; exit 1;; esac; \
	tag=$$(${NEWEST_PROTO_COMPILER_TAG}); \
	if [ -z "$$tag" ]; then echo "ERROR: could not read the newest release tag of ${PROTO_COMPILER_GIT} - no client was released"; exit 1; fi; \
	echo "Releasing all clients for ${ONDEWO_NLU_API_VERSION} with ondewo-proto-compiler $$tag, at most ${RELEASE_JOBS} at a time ..."; \
	rm -f .already_released_marker-* .incomplete_marker-* .unknown_marker-* .client_status-*; \
	printf '%s\n' $(CLIENTS) | xargs -P ${RELEASE_JOBS} -I{} make release_client_job RELEASE_JOB_CLIENT={} PROTO_COMPILER_TAG=$$tag; \
	echo ""; echo "=============== CLIENT RELEASE SUMMARY (${ONDEWO_NLU_API_VERSION}) ==============="; \
	failed=0; \
	for c in $(CLIENTS); do \
		s=$$(cat .client_status-$$c 2>/dev/null || echo NO_STATUS); \
		echo "  $$c : $$s"; \
		case "$$s" in \
			RELEASED|SKIP) ;; \
			INCOMPLETE) failed=1; \
				echo "      -> release/${ONDEWO_NLU_API_VERSION} exists but GitHub has no published release ${ONDEWO_NLU_API_VERSION}: an earlier"; \
				echo "         release of ondewo-nlu-client-$$c stopped part-way. Finish or undo it in the client - see release_run_$$c.log";; \
			UNKNOWN) failed=1; \
				echo "      -> release/${ONDEWO_NLU_API_VERSION} exists, but the GitHub API did not answer whether release ${ONDEWO_NLU_API_VERSION} is"; \
				echo "         published (HTTP code in release_run_$$c.log; 403/429 = rate limit). Nothing was changed - rerun later";; \
			*) failed=1; echo "      -> see release_run_$$c.log";; \
		esac; \
	done; \
	echo "==============================================================="; \
	rm -f .already_released_marker-* .incomplete_marker-* .unknown_marker-* .client_status-*; \
	if [ "$$failed" = 1 ]; then echo "RESULT: one or more clients FAILED or are INCOMPLETE or UNKNOWN (the others released independently)."; exit 1; fi; \
	echo "RESULT: all clients released or already up-to-date."

# One job of release_all_clients: releases RELEASE_JOB_CLIENT with its output in release_run_<client>.log and
# records RELEASED, SKIP, INCOMPLETE, UNKNOWN or FAILED in .client_status-<client>. make flattens every recipe
# failure to exit code 2, so the marker files release_client leaves tell SKIP, INCOMPLETE and UNKNOWN apart
# from FAILED. This job always exits 0: an exit code of 255 would make xargs stop starting the remaining clients.
release_client_job:
	@echo "START: ${RELEASE_JOB_CLIENT} ($$(date +%T))"; \
	if make release_${RELEASE_JOB_CLIENT}_client > release_run_${RELEASE_JOB_CLIENT}.log 2>&1; then s=RELEASED; \
	elif [ -f .already_released_marker-${RELEASE_JOB_CLIENT} ]; then s=SKIP; \
	elif [ -f .incomplete_marker-${RELEASE_JOB_CLIENT} ]; then s=INCOMPLETE; \
	elif [ -f .unknown_marker-${RELEASE_JOB_CLIENT} ]; then s=UNKNOWN; \
	else s=FAILED; fi; \
	echo $$s > .client_status-${RELEASE_JOB_CLIENT}; \
	echo "DONE: ${RELEASE_JOB_CLIENT}: $$s ($$(date +%T))"

GENERIC_CLIENT?=
RELEASEMD?=
# The section heading is driven by GENERIC_RELEASE_SECTION so a breaking API release does not publish every
# client major under "Improvements". On a major bump, override it and describe the break:
#   make release_all_clients GENERIC_RELEASE_SECTION='Breaking Changes' \
#     GENERIC_RELEASE_EXTRA='* The `Login` RPC and its messages are removed — authenticate via Keycloak.\n'
GENERIC_RELEASE_SECTION?=Improvements
GENERIC_RELEASE_EXTRA?=
# Emitted markdownlint-clean, and deliberately on ONE line. Every ` \n` used to leave a trailing space
# on each generated line and a leading space on the list item, and make's line-continuation collapses
# `\<newline><tab>` to a further space, so the block tripped MD009/MD007/MD022/MD012/MD032 in EVERY client and the
# first pre-commit run of every release `Failed - files were modified by this hook`. It self-healed on
# the re-run, but it also left the heading as `\#\# Release ... <VERSION> ` WITH a trailing space, which
# the release_client guard below cannot match because that grep anchors on `$$` - so the duplicate-entry
# guard only worked on entries a previous markdownlint run had already stripped. Keep this byte-identical
# to what markdownlint normalises to: no trailing spaces, a blank line around the heading and the list.
GENERIC_RELEASE_NOTES=\n*****************\n\n\\\#\\\# Release ONDEWO NLU REPONAME Client ${ONDEWO_NLU_API_VERSION}\n\n\\\#\\\#\\\# ${GENERIC_RELEASE_SECTION}\n\n* Tracking API Version [${ONDEWO_NLU_API_VERSION}](https://github.com/ondewo/ondewo-nlu-api/releases/tag/${ONDEWO_NLU_API_VERSION}) ( [Documentation](https://ondewo.github.io/ondewo-nlu-api/) )\n${GENERIC_RELEASE_EXTRA}


release_client: ## Generic Function to Release a Client
	$(eval REPO_NAME:= $(shell echo ${GENERIC_CLIENT} | cut -c 41- | cut -d '.' -f 1))
	$(eval REPO_DIR:= $(shell echo "ondewo-nlu-client-${REPO_NAME}"))
	$(eval UPPER_REPO_NAME:= $(shell echo ${REPO_NAME} | perl -pe 's/.*/\u$$&/'))
# Newest Proto-Compiler tag: PROTO_COMPILER_TAG from release_all_clients, else resolved here. An empty one
# would pin the client to `tags/`, so stop before anything is cloned.
	$(eval PROTO_COMPILER:= $(or ${PROTO_COMPILER_TAG},$(shell ${NEWEST_PROTO_COMPILER_TAG})))
	@if [ -z "${PROTO_COMPILER}" ]; then echo "ERROR: could not read the newest release tag of ${PROTO_COMPILER_GIT} - ${REPO_NAME} was not released"; exit 1; fi
	@echo "ondewo-proto-compiler tag for ${REPO_NAME}: ${PROTO_COMPILER}"
# Clone Repo
	rm -rf ${REPO_DIR}
	rm -f build_log_${REPO_NAME}.txt

	@# printf '%b', not echo: echo appends a newline of its own on top of the trailing \n, which left a
	@# second blank line before the previous entry's separator (markdownlint MD012 used to eat it).
	@# Read through the environment (line 1 is a bare `export`) rather than interpolating the value into
	@# the command text: the value used to carry its own double quotes, so a backtick in
	@# GENERIC_RELEASE_EXTRA was command-substituted by the shell - which silently gutted this Makefile's
	@# own documented breaking-change example, turning '* The `Login` RPC and its messages are removed'
	@# into '* The  RPC and its messages are removed' plus a 'not found' error.
	@# The last pass normalises the file to exactly ONE trailing newline. printf '%b' adds none of its own,
	@# so a GENERIC_RELEASE_EXTRA that does not end in \n leaves the notes without a final newline; the
	@# perl insert below then prints its last line straight into the blank line that precedes the previous
	@# entry's ***** separator, swallowing it - and markdownlint MD032 (blanks-around-lists) auto-fixes it
	@# back, which is exactly the `Failed - files were modified by this hook` first run this block removed.
	@printf '%b' "$$GENERIC_RELEASE_NOTES" > temp-notes-${REPO_NAME} && perl -i -pe 's/\\//g' temp-notes-${REPO_NAME} && perl -i -pe 's/REPONAME/${UPPER_REPO_NAME}/g' temp-notes-${REPO_NAME} && perl -0777 -i -pe 's/\n*\z/\n/' temp-notes-${REPO_NAME}
	git clone ${GENERIC_CLIENT}
# Rerun check. A client that already has the branch release/<version> (exactly that name) was released
# before: SKIP when GitHub also has its published release <version> (HTTP 200), INCOMPLETE when it has none
# (HTTP 404), i.e. that run stopped part-way - the six new clients create their GitHub release as their LAST
# step. Any other answer is UNKNOWN, never SKIP: 403/429 is the limit of 60 unauthenticated calls per hour,
# 000 no connection. This asks the REST API, because the page github.com/<repo>/releases/tag/<version>
# answers 200 for a bare tag without any release as well. It is one unauthenticated call, made only for a
# client whose release branch exists.
	@if git -C ${REPO_DIR} rev-parse -q --verify "refs/remotes/origin/release/${ONDEWO_NLU_API_VERSION}" > /dev/null; then \
		code=$$(curl -s -o /dev/null -w '%{http_code}' -L "https://api.github.com/repos/ondewo/${REPO_DIR}/releases/tags/${ONDEWO_NLU_API_VERSION}"); \
		if [ "$$code" = 200 ]; then echo "Already Released ${ONDEWO_NLU_API_VERSION}"; touch .already_released_marker-${REPO_NAME}; \
		elif [ "$$code" = 404 ]; then echo "INCOMPLETE: ${REPO_DIR} has release/${ONDEWO_NLU_API_VERSION} but no published GitHub release ${ONDEWO_NLU_API_VERSION} (GitHub API: HTTP 404)"; touch .incomplete_marker-${REPO_NAME}; \
		else echo "UNKNOWN: ${REPO_DIR} has release/${ONDEWO_NLU_API_VERSION}, but the GitHub API did not say whether release ${ONDEWO_NLU_API_VERSION} is published (HTTP $$code; 403/429 = rate limit, 000 = no connection) - nothing was changed, rerun later"; touch .unknown_marker-${REPO_NAME}; fi; \
		rm -rf ${REPO_DIR} temp-notes-${REPO_NAME}; exit 1; \
	fi

# Change Version Number and RELEASE NOTES
# Only insert the generated boilerplate when the client does not already document this version. A client
# whose RELEASE.md was written by hand ahead of the release (7.0.0: python, angular, js) would otherwise
# get a SECOND "Release ONDEWO NLU <Name> Client <VERSION>" heading, which (a) buries the curated entry
# because the notes slice below takes the FIRST match and (b) trips markdownlint MD025/MD024 — neither of
# which auto-fixes, so the client's own pre-commit fails the build and the release aborts.
	cd ${REPO_DIR} && if grep -qE "^#+ Release ONDEWO NLU ${UPPER_REPO_NAME} Client ${ONDEWO_NLU_API_VERSION}$$" ${RELEASEMD}; then \
		echo "${RELEASEMD} already documents ${ONDEWO_NLU_API_VERSION} - keeping the curated entry, not inserting the generated notes"; \
	else \
		perl -i -ne 'print; if(/Release History/){open my $$fh,"<","../temp-notes-${REPO_NAME}"; print while <$$fh>; close $$fh}' ${RELEASEMD}; \
	fi
	cd ${REPO_DIR} && head -20 ${RELEASEMD}
# Anchored to the definition lines. Unanchored, `ONDEWO_NLU_VERSION.*=.*` also matched every recipe or
# comment line that mentions the name with any `=` after it and cut off the rest of it: that would turn
# go's check_go_module_path into a shell syntax error and rust's update_cargo_version into an unterminated
# make variable reference, and it already mangled two comments in angular's committed Makefile. The
# capture keeps both spellings of the API pin:
# NLU_API_GIT_BRANCH (nodejs, typescript, angular, js) and ONDEWO_NLU_API_GIT_BRANCH (all others).
	cd ${REPO_DIR} && perl -i -pe 's/^ONDEWO_NLU_VERSION\s*=.*/ONDEWO_NLU_VERSION=${ONDEWO_NLU_API_VERSION}/' Makefile
	cd ${REPO_DIR} && perl -i -pe 's/^ONDEWO_PROTO_COMPILER_GIT_BRANCH\s*=.*/ONDEWO_PROTO_COMPILER_GIT_BRANCH=tags\/${PROTO_COMPILER}/' Makefile
	cd ${REPO_DIR} && perl -i -pe 's/^((ONDEWO_)?NLU_API_GIT_BRANCH)\s*=.*/$$1=tags\/${ONDEWO_NLU_API_VERSION}/' Makefile && head -30 Makefile

# Release. Every client's ondewo_release clones ondewo-devops-accounts - the real credentials - into its root.
# The trap removes that clone whenever the release leaves it behind, i.e. when it fails or is interrupted;
# the rest of ${REPO_DIR} is kept for debugging.
	bash -c 'set -o pipefail; trap "rm -rf ${REPO_DIR}/ondewo-devops-accounts" EXIT INT TERM; make -C ${REPO_DIR} ondewo_release | tee build_log_${REPO_NAME}.txt'
	make -C ${REPO_DIR} TEST
# Remove everything from Release
	sudo rm -rf ${REPO_DIR}
	rm -f temp-notes-${REPO_NAME}


PYTHON_CLIENT="git@github.com:ondewo/ondewo-nlu-client-python.git"

release_python_client: ## Release Python Client
	@echo "Start releasing Python Client"
	make release_client GENERIC_CLIENT=${PYTHON_CLIENT} RELEASEMD="RELEASE.md"
	@echo "End releasing Python Client \n \n \n"

NODEJS_CLIENT="git@github.com:ondewo/ondewo-nlu-client-nodejs.git"

release_nodejs_client: ## Release NodeJs Client
	@echo "Start releasing Nodejs Client"
	make release_client GENERIC_CLIENT=${NODEJS_CLIENT} RELEASEMD="src/RELEASE.md"
	@echo "End releasing Nodejs Client \n \n \n"

TYPESCRIPT_CLIENT="git@github.com:ondewo/ondewo-nlu-client-typescript.git"

release_typescript_client: ## Release Typescript Client
	@echo "Start releasing Typescript Client"
	make release_client GENERIC_CLIENT=${TYPESCRIPT_CLIENT} RELEASEMD="src/RELEASE.md"
	@echo "End releasing Typescript Client \n \n \n"

ANGULAR_CLIENT="git@github.com:ondewo/ondewo-nlu-client-angular.git"

release_angular_client: ## Release Angular Client
	@echo "Start releasing Angular Client"
	make release_client GENERIC_CLIENT=${ANGULAR_CLIENT} RELEASEMD="src/RELEASE.md"
	@echo "End releasing Angular Client \n \n \n"

JS_CLIENT="git@github.com:ondewo/ondewo-nlu-client-js.git"

release_js_client: ## Release JS Client
	@echo "Start releasing Js Client"
	make release_client GENERIC_CLIENT=${JS_CLIENT} RELEASEMD="src/RELEASE.md"
	@echo "End releasing Js Client \n \n \n"

# UPPER_REPO_NAME on the command line beats the ucfirst() $(eval) in release_client. PHP and C++ need it:
# their RELEASE.md headings, which their own notes slice matches case-sensitively, say "PHP" and "C++",
# not "Php" and "Cpp". The + are escaped for the duplicate-entry `grep -E`; the perl that fills in the
# heading drops the backslashes, so the heading still reads "C++".
PHP_CLIENT="git@github.com:ondewo/ondewo-nlu-client-php.git"

release_php_client: ## Release PHP Client
	@echo "Start releasing PHP Client"
	make release_client GENERIC_CLIENT=${PHP_CLIENT} RELEASEMD="RELEASE.md" UPPER_REPO_NAME=PHP
	@echo "End releasing PHP Client \n \n \n"

GO_CLIENT="git@github.com:ondewo/ondewo-nlu-client-go.git"

release_go_client: ## Release Go Client
	@echo "Start releasing Go Client"
	make release_client GENERIC_CLIENT=${GO_CLIENT} RELEASEMD="RELEASE.md"
	@echo "End releasing Go Client \n \n \n"

RUST_CLIENT="git@github.com:ondewo/ondewo-nlu-client-rust.git"

release_rust_client: ## Release Rust Client
	@echo "Start releasing Rust Client"
	make release_client GENERIC_CLIENT=${RUST_CLIENT} RELEASEMD="RELEASE.md"
	@echo "End releasing Rust Client \n \n \n"

CPP_CLIENT="git@github.com:ondewo/ondewo-nlu-client-cpp.git"

release_cpp_client: ## Release C++ Client
	@echo "Start releasing C++ Client"
	make release_client GENERIC_CLIENT=${CPP_CLIENT} RELEASEMD="RELEASE.md" UPPER_REPO_NAME='C\+\+'
	@echo "End releasing C++ Client \n \n \n"

JAVA_CLIENT="git@github.com:ondewo/ondewo-nlu-client-java.git"

release_java_client: ## Release Java Client
	@echo "Start releasing Java Client"
	make release_client GENERIC_CLIENT=${JAVA_CLIENT} RELEASEMD="RELEASE.md"
	@echo "End releasing Java Client \n \n \n"

CSHARP_CLIENT="git@github.com:ondewo/ondewo-nlu-client-csharp.git"

release_csharp_client: ## Release Csharp Client
	@echo "Start releasing Csharp Client"
	make release_client GENERIC_CLIENT=${CSHARP_CLIENT} RELEASEMD="RELEASE.md"
	@echo "End releasing Csharp Client \n \n \n"

########################################################
#		GITHUB

build_and_release_to_github_via_docker: build_utils_docker_image release_to_github_via_docker_image ## Release automation for building and releasing on GitHub via a docker image

build_utils_docker_image: ## Build utils docker image
	docker build -f Dockerfile.utils -t ${IMAGE_UTILS_NAME} .

push_to_gh: login_to_gh build_gh_release ## Logs into GitHub CLI and Releases
	@echo 'Released to Github'

release_to_github_via_docker_image: ## Release to Github via docker
	@docker run --rm \
		-e GITHUB_GH_TOKEN=${GITHUB_GH_TOKEN} \
		${IMAGE_UTILS_NAME} make push_to_gh

########################################################
#		DEVOPS-ACCOUNTS

ondewo_release: spc clone_devops_accounts run_release_with_devops ## Release with credentials from devops-accounts repo
	@rm -rf ${DEVOPS_ACCOUNT_GIT}

ondewo_unrelease: clone_devops_accounts run_unrelease_with_devops ## Unrelease with credentials from devops-accounts repo
	@rm -rf ${DEVOPS_ACCOUNT_GIT}

clone_devops_accounts: ## Clones devops-accounts repo
	@if [ -d $(DEVOPS_ACCOUNT_GIT) ]; then rm -Rf $(DEVOPS_ACCOUNT_GIT); fi
	git clone git@bitbucket.org:ondewo/${DEVOPS_ACCOUNT_GIT}.git

# The grep is anchored to the definition line: a '#' comment line naming the variable would otherwise reach
# the command line below and comment out everything after it. On failure the clone of the credentials repo
# is removed as well, not only by ondewo_release / ondewo_unrelease after a success.
run_release_with_devops: ## Gets Credentials from devops-repo and runs release with them
	$(eval info:= $(shell grep -E '^GITHUB_GH_TOKEN=' ${DEVOPS_ACCOUNT_DIR}/account_github.env))
	@make release $(info) || { rm -rf ${DEVOPS_ACCOUNT_GIT}; exit 1; }

run_unrelease_with_devops: ## Gets Credentials from devops-repo and runs unrelease with them
	$(eval info:= $(shell grep -E '^GITHUB_GH_TOKEN=' ${DEVOPS_ACCOUNT_DIR}/account_github.env))
	@make unrelease $(info) || { rm -rf ${DEVOPS_ACCOUNT_GIT}; exit 1; }

spc: ## Checks if the Release Branch and Tag already exist
	$(eval filtered_branches:= $(shell git branch --all | grep "release/${ONDEWO_NLU_API_VERSION}"))
	$(eval filtered_tags:= $(shell git tag --list | grep "${ONDEWO_NLU_API_VERSION}"))
	@if test "$(filtered_branches)" != ""; then echo "-- Test 1: Branch exists!!" & exit 1; else echo "-- Test 1: Branch is fine";fi
	@if test "$(filtered_tags)" != ""; then echo "-- Test 2: Tag exists!!" & exit 1; else echo "-- Test 2: Tag is fine";fi
