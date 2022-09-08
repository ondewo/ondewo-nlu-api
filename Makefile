export

# ---------------- BEFORE RELEASE ----------------
# 1 - Update Version Number
# 2 - Update RELEASE.md
# 3 - make update_setup
# -------------- Release Process Steps --------------
# 1 - Get Credentials from devops-accounts repo
# 2 - Create Release Branch and push
# 3 - Create Release Tag and push
# 4 - GitHub Release
# 5 - PyPI Release

########################################################
# 		Variables
########################################################

# MUST BE THE SAME AS API in Mayor and Minor Version Number
# example: API 2.9.0 --> Client 2.9.X
ONDEWO_NLU_API_VERSION=2.14.0

# You need to setup an access token at https://github.com/settings/tokens - permissions are important
GITHUB_GH_TOKEN?=ENTER_YOUR_TOKEN_HERE

CURRENT_RELEASE_NOTES=`cat RELEASE.md \
	| sed -n '/Release ONDEWO NLU APIS ${ONDEWO_NLU_API_VERSION}/,/\*\*/p'`

GH_REPO="https://github.com/ondewo/ondewo-nlu-api"
DEVOPS_ACCOUNT_GIT="ondewo-devops-accounts"
DEVOPS_ACCOUNT_DIR="./${DEVOPS_ACCOUNT_GIT}"
IMAGE_UTILS_NAME=ondewo-nlu-api-utils:${ONDEWO_NLU_API_VERSION}
.DEFAULT_GOAL := help

########################################################
#       ONDEWO Standard Make Targets
########################################################
setup_developer_environment_locally: install_precommit_hooks

install_precommit_hooks: ## Installs pre-commit hooks and sets them up for the ondewo-csi-client repo
	pip install pre-commit
	pre-commit install
	pre-commit install --hook-type commit-msg

precommit_hooks_run_all_files: ## Runs all pre-commit hooks on all files and not just the changed ones
	pre-commit run --all-file

help: ## Print usage info about help targets
	# (first comment after target starting with double hashes ##)
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

makefile_chapters: ## Shows all sections of Makefile
	@echo `cat Makefile| grep "########################################################" -A 1 | grep -v "########################################################"`

TEST:
	@echo ${GITHUB_GH_TOKEN}
	@echo ${CURRENT_RELEASE_NOTES}

update_githubio:
	@rm -rf ondewo.github.io
	$(eval REPO_NAME:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 | sed -e 's/\(.*\)/\U\1/'))
	@echo "UPDATING API-TABLE VERSION FOR ${REPO_NAME}"
	@git clone git@github.com:ondewo/ondewo.github.io.git
	@$(shell cat ondewo.github.io/index.html | grep "${REPO_NAME} API" | grep -q ${ONDEWO_NLU_API_VERSION})
	@if test $$? != 0; then echo "Already updated ${REPO_NAME} to ${ONDEWO_NLU_API_VERSION}" & exit 1; fi
# @sed -i "s/${REPO_NAME} API.*\</${REPO_NAME} API ${ONDEWO_NLU_API_VERSION}\<\//" ondewo.github.io/index.html
# @cat ondewo.github.io/index.html | grep "${REPO_NAME} API"
# @git -C ondewo.github.io add index.html
# @git -C ondewo.github.io commit -m "Updated ${REPO_NAME} to ${ONDEWO_NLU_API_VERSION}"
# @git -C ondewo.github.io push
# @echo "FINISHED UPDATING API-TABLE VERSION FOR ${REPO_NAME}"
# @rm -rf ondewo.github.io

########################################################
#       Repo Specific Make Targets
########################################################
#		Build

build_utils_docker_image:  ## Build utils docker image
	docker build -f Dockerfile.utils -t ${IMAGE_UTILS_NAME} .

build_and_release_to_github_via_docker: build_utils_docker_image release_to_github_via_docker_image  ## Release automation for building and releasing on GitHub via a docker image

########################################################
#		Release

release: create_release_branch create_release_tag build_and_release_to_github_via_docker  ## Automate the entire release process
	@echo "Release Finished"

create_release_branch: ## Create Release Branch and push it to origin
	git checkout -b "release/${ONDEWO_NLU_API_VERSION}"
	git push -u origin "release/${ONDEWO_NLU_API_VERSION}"

create_release_tag: ## Create Release Tag and push it to origin
	git tag -a ${ONDEWO_NLU_API_VERSION} -m "release/${ONDEWO_NLU_API_VERSION}"
	git push origin ${ONDEWO_NLU_API_VERSION}

login_to_gh: ## Login to Github CLI with Access Token
	echo $(GITHUB_GH_TOKEN) | gh auth login -p ssh --with-token

build_gh_release: ## Generate Github Release with CLI
	gh release create --repo $(GH_REPO) "$(ONDEWO_NLU_API_VERSION)" -n "$(CURRENT_RELEASE_NOTES)" -t "Release ${ONDEWO_NLU_API_VERSION}"


release_all_clients:
	@make release_python_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of Python Client")
	@make release_nodejs_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of Nodejs Client")
	@make release_typescript_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of Typescript Client")
	@make release_angular_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of Angular Client")
	@make release_js_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of JS Client")
	@echo "End releasing all clients"

GENERIC_CLIENT?=
RELEASEMD?=
GENERIC_RELEASE_NOTES="\n***************** \n\\\#\\\# Release ONDEWO NLU REPONAME Client ${ONDEWO_NLU_API_VERSION} \n \
	\n\\\#\\\#\\\# Improvements \n \
	* Tracking API Version ${ONDEWO_NLU_API_VERSION} \n"


release_client:
	$(eval REPO_NAME:= $(shell echo ${GENERIC_CLIENT} | cut -c 41- | cut -d '.' -f 1))
	$(eval REPO_DIR:= $(shell echo "ondewo-nlu-client-${REPO_NAME}"))
	$(eval UPPER_REPO_NAME:= $(shell echo ${REPO_NAME} | sed 's/.*/\u&/'))
# Get newest Proto-Compiler Version
	$(eval PROTO_COMPILER:= $(shell curl https://api.github.com/repos/ondewo/ondewo-proto-compiler/tags | grep "\"name\"" | head -1 | cut -d '"' -f 4))
# Clone Repo
	rm -rf ${REPO_DIR}
	rm -f build_log_${REPO_NAME}.txt

	@echo ${GENERIC_RELEASE_NOTES} > temp-notes && sed -i 's/\\//g' temp-notes && sed -i 's/REPONAME/${UPPER_REPO_NAME}/g' temp-notes
	git clone ${GENERIC_CLIENT}
# Check if Client is already uptodate with API Version
	@! git -C ${REPO_DIR} branch -a | grep -q ${ONDEWO_NLU_API_VERSION} || (echo "Already Released ${ONDEWO_NLU_API_VERSION} \n\n\n"  && rm -rf ${REPO_DIR} && rm -f temp-notes && exit 1)

# Change Version Number and RELEASE NOTES
	cd ${REPO_DIR} && sed -i -e '/Release History/r ../temp-notes' ${RELEASEMD}
	cd ${REPO_DIR} && head -20 ${RELEASEMD}
	cd ${REPO_DIR} && sed -i -e 's/ONDEWO_NLU_VERSION.*=.*[0-9]*.[0-9]*.[0-9]/ONDEWO_NLU_VERSION = ${ONDEWO_NLU_API_VERSION}/' Makefile
	cd ${REPO_DIR} && sed -i -e 's/ONDEWO_PROTO_COMPILER_GIT_BRANCH.*=.*tags\/[0-9]*.[0-9]*.[0-9]/ONDEWO_PROTO_COMPILER_GIT_BRANCH=tags\/${PROTO_COMPILER}/' Makefile
	cd ${REPO_DIR} && sed -i -e 's/NLU_API_GIT_BRANCH=tags\/[0-9]*.[0-9]*.[0-9]/NLU_API_GIT_BRANCH=tags\/${ONDEWO_NLU_API_VERSION}/' Makefile && head -30 Makefile

# Build new code
	make -C ${REPO_DIR} build | tee build_log_${REPO_NAME}.txt
	make -C ${REPO_DIR} check_build
	git -C ${REPO_DIR} status >> build_log_${REPO_NAME}.txt
	git -C ${REPO_DIR} add .
	echo "AFTER GIT ADD" >> build_log_${REPO_NAME}.txt && git -C ${REPO_DIR} status >> build_log_${REPO_NAME}.txt
	git -C ${REPO_DIR} commit -m "API-Release: Preparing for Release ${ONDEWO_NLU_API_VERSION}"
	git -C ${REPO_DIR} push
	make -C ${REPO_DIR} ondewo_release
# Remove everything from Release
	rm -rf ${REPO_DIR}
	rm -f temp-notes


PYTHON_CLIENT="git@github.com:ondewo/ondewo-nlu-client-python.git"

release_python_client:
	@echo "Start releasing Python Client"
	make release_client GENERIC_CLIENT=${PYTHON_CLIENT} RELEASEMD="RELEASE.md"
	@echo "End releasing Python Client \n \n \n"

NODEJS_CLIENT="git@github.com:ondewo/ondewo-nlu-client-nodejs.git"

release_nodejs_client:
	@echo "Start releasing Nodejs Client"
	make release_client GENERIC_CLIENT=${NODEJS_CLIENT} RELEASEMD="src/RELEASE.md"
	@echo "End releasing Nodejs Client \n \n \n"

TYPESCRIPT_CLIENT="git@github.com:ondewo/ondewo-nlu-client-typescript.git"

release_typescript_client:
	@echo "Start releasing Typescript Client"
	make release_client GENERIC_CLIENT=${TYPESCRIPT_CLIENT} RELEASEMD="src/RELEASE.md"
	@echo "End releasing Typescript Client \n \n \n"

ANGULAR_CLIENT="git@github.com:ondewo/ondewo-nlu-client-angular.git"

release_angular_client:
	@echo "Start releasing Angular Client"
	make release_client GENERIC_CLIENT=${ANGULAR_CLIENT} RELEASEMD="src/RELEASE.md"
	@echo "End releasing Angular Client \n \n \n"

JS_CLIENT="git@github.com:ondewo/ondewo-nlu-client-js.git"

release_js_client:
	@echo "Start releasing Js Client"
	make release_client GENERIC_CLIENT=${JS_CLIENT} RELEASEMD="src/RELEASE.md"
	@echo "End releasing Js Client \n \n \n"

########################################################
#		GITHUB

push_to_gh: login_to_gh build_gh_release
	@echo 'Released to Github'

release_to_github_via_docker_image:  ## Release to Github via docker
	docker run --rm \
		-e GITHUB_GH_TOKEN=${GITHUB_GH_TOKEN} \
		${IMAGE_UTILS_NAME} make push_to_gh

########################################################
#		DEVOPS-ACCOUNTS

ondewo_release: spc clone_devops_accounts run_release_with_devops ## Release with credentials from devops-accounts repo
	@rm -rf ${DEVOPS_ACCOUNT_GIT}

clone_devops_accounts: ## Clones devops-accounts repo
	@if [ -d $(DEVOPS_ACCOUNT_GIT) ]; then rm -Rf $(DEVOPS_ACCOUNT_GIT); fi
	git clone git@bitbucket.org:ondewo/${DEVOPS_ACCOUNT_GIT}.git

run_release_with_devops:
	$(eval info:= $(shell cat ${DEVOPS_ACCOUNT_DIR}/account_github.env | grep GITHUB_GH))
	make release $(info)

spc: ## Checks if the Release Branch, Tag and Pypi version already exist
	$(eval filtered_branches:= $(shell git branch --all | grep "release/${ONDEWO_NLU_API_VERSION}"))
	$(eval filtered_tags:= $(shell git tag --list | grep "${ONDEWO_NLU_API_VERSION}"))
	@if test "$(filtered_branches)" != ""; then echo "-- Test 1: Branch exists!!" & exit 1; else echo "-- Test 1: Branch is fine";fi
	@if test "$(filtered_tags)" != ""; then echo "-- Test 2: Tag exists!!" & exit 1; else echo "-- Test 2: Tag is fine";fi
