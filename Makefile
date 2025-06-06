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
ONDEWO_NLU_API_VERSION=6.2.0

# You need to setup an access token at https://github.com/settings/tokens - permissions are important
GITHUB_GH_TOKEN?=ENTER_YOUR_TOKEN_HERE

CURRENT_RELEASE_NOTES=`cat RELEASE.md \
	| sed -n '/Release ONDEWO NLU API ${ONDEWO_NLU_API_VERSION}/,/\*\*/p'`

GH_REPO="https://github.com/ondewo/ondewo-nlu-api"
DEVOPS_ACCOUNT_GIT="ondewo-devops-accounts"
DEVOPS_ACCOUNT_DIR="./${DEVOPS_ACCOUNT_GIT}"
IMAGE_UTILS_NAME=ondewo-nlu-api-utils:${ONDEWO_NLU_API_VERSION}
.DEFAULT_GOAL := help

########################################################
#       ONDEWO Standard Make Targets
########################################################

setup_developer_environment_locally: install_python_requirements install_precommit_hooks install_nvm ## Sets up local development environment !! Forcefully closes current terminal

install_nvm: ## Install NVM, node and npm !! Forcefully closes current terminal
	@curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
	@sh install_nvm.sh
	$(eval PID:=$(shell ps -ft $(ps | tail -1 | cut -c 8-13) | head -2 | tail -1 | cut -c 1-8))
	@node --version & npm --version || (kill -KILL ${PID})

install_python_requirements: ## Installs python requirements flak8 and mypy
	wget -q https://raw.githubusercontent.com/ondewo/ondewo-nlu-client-python/master/requirements.txt -O requirements.txt
	wget -q https://raw.githubusercontent.com/ondewo/ondewo-nlu-client-python/master/requirements-dev.txt -O requirements-dev.txt
	wget -q https://raw.githubusercontent.com/ondewo/ondewo-nlu-client-python/master/.flake8 -O .flake8
	wget -q https://raw.githubusercontent.com/ondewo/ondewo-nlu-client-python/master/mypy.ini -O mypy.ini
	pip install -r requirements.txt
	pip install -r requirements-dev.txt

install_precommit_hooks: ## Installs pre-commit hooks and sets them up for the repo
	pip install pre-commit
	pre-commit install
	pre-commit install --hook-type commit-msg

precommit_hooks_run_all_files: ## Runs all pre-commit hooks on all files and not just the changed ones
	pre-commit run --all-file

flake8: ## Runs flake8
	flake8 --config .flake8 .

mypy: ## Run mypy static code checking
	@echo "---------------------------------------------"
	@echo "START: Run mypy in pre-commit hook ..."
	pre-commit run mypy --all-files
	@echo "DONE: Run mypy in pre-commit hook."
	@echo "---------------------------------------------"
	@echo "START: Run mypy directly ..."
	mypy --config-file=mypy.ini .
	@echo "DONE: Run mypy directly"
	@echo "---------------------------------------------"

help: ## Print usage info about help targets
	# (first comment after target starting with double hashes ##)
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}'

makefile_chapters: ## Shows all sections of Makefile
	@echo `cat Makefile| grep "########################################################" -A 1 | grep -v "########################################################"`

TEST:
	@echo "----------------------------------------------\nGITHUB_GH_TOKEN\n----------------------------------------------\n${GITHUB_GH_TOKEN}\n"
	@echo "----------------------------------------------\nCURRENT_RELEASE_NOTES\n----------------------------------------------\n${CURRENT_RELEASE_NOTES}\n"

githubio_logic_pre:
	$(eval REPO_NAME:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 ))
	$(eval REPO_NAME_UPPER:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 | sed -e 's/\(.*\)/\U\1/'))
	$(eval DOCS_DIR:=ondewo.github.io/docs/ondewo-${REPO_NAME}-api/${ONDEWO_NLU_API_VERSION})
	@sed -i "/{ number: '${ONDEWO_NLU_API_VERSION}', link: 'ondewo-${REPO_NAME}-api\/${ONDEWO_NLU_API_VERSION}\/' },/d" ondewo.github.io/data.js
	@rm -rf ${DOCS_DIR}
	@mkdir "${DOCS_DIR}"
	@cp docs/* ${DOCS_DIR}
	@sed -i "s/h1>Protocol Documentation/h1>${REPO_NAME_UPPER} ${ONDEWO_NLU_API_VERSION} Documentation/" ${DOCS_DIR}/index.html

githubio_logic: | githubio_logic_pre
	$(eval REPO_NAME:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 ))
	$(eval REPO_NAME_UPPER:= $(shell echo ${GH_REPO} | cut -d "-" -f 2 | sed -e 's/\(.*\)/\U\1/'))
	@git branch | grep "*" | grep -q "master" || (echo "Not on master branch"  & rm -rf ondewo.github.io && exit 1)
	@! cat ondewo.github.io/data.js | sed -n "/name\: '${REPO_NAME_UPPER}'/,/end\: ''/p" | grep -q "number: '${ONDEWO_NLU_API_VERSION}'" || (echo "Already Released" && exit 1)
	$(eval VERSION_LINE:= $(shell cat -n ondewo.github.io/data.js | sed -n "/name\: '${REPO_NAME_UPPER}'/,/end\: ''/p" | grep "versions: " -A 1 | tail -1 | grep -o -E '[0-9]+' | head -1 | sed -e 's/^0\+//'))
	$(eval TEMP_TEXT:= $(shell cat ondewo.github.io/script_object.txt | sed -e "s/VERSION/${ONDEWO_NLU_API_VERSION}/g" -e "s/TECHNOLOGY/${REPO_NAME}/g"))
	@sed -i "${VERSION_LINE} i ${TEMP_TEXT}" ondewo.github.io/data.js
	@npm install prettier && cd ondewo.github.io && npx prettier -w --single-quote data.js
	$(eval DOCS_DIR:=ondewo.github.io/docs/ondewo-${REPO_NAME}-api/${ONDEWO_NLU_API_VERSION})
	$(eval HEADER_LINE:= $(shell cat ${DOCS_DIR}/index.html | grep -n "${REPO_NAME_UPPER} ${ONDEWO_NLU_API_VERSION} Documentation" | grep -o -E '[0-9]+' | head -1 | sed -e 's/^0\+//'))
	$(eval TEMP_IMG:= $(shell cat  ondewo.github.io/script_image.txt))
	$(eval TEMP_CALC:= $(shell expr ${HEADER_LINE} ))
	sed -i '${TEMP_CALC} i ${TEMP_IMG}' ${DOCS_DIR}/index.html
	head -30 ${DOCS_DIR}/index.html
	cat ondewo.github.io/data.js | sed -n "/name\: '${REPO_NAME_UPPER}'/,/end\: ''/p"
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

release: create_release_branch create_release_tag build_and_release_to_github_via_docker ## Automate the entire release process
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


release_all_clients: ## Releases all NLU Clients
	@make release_python_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of Python Client")
	@make release_angular_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of Angular Client")
	@make release_nodejs_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of Nodejs Client")
	@make release_typescript_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of Typescript Client")
	@make release_js_client || (echo "Already released ${ONDEWO_NLU_API_VERSION} of JS Client")
	@echo "End releasing all clients"

GENERIC_CLIENT?=
RELEASEMD?=
GENERIC_RELEASE_NOTES="\n***************** \n\\\#\\\# Release ONDEWO NLU REPONAME Client ${ONDEWO_NLU_API_VERSION} \n \
	\n\\\#\\\#\\\# Improvements \n \
	* Tracking API Version [${ONDEWO_NLU_API_VERSION}](https://github.com/ondewo/ondewo-nlu-api/releases/tag/${ONDEWO_NLU_API_VERSION}) ( [Documentation](https://ondewo.github.io/ondewo-nlu-api/) ) \n"


release_client: ## Generic Function to Release a Client
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
	cd ${REPO_DIR} && sed -i -e 's/ONDEWO_NLU_VERSION.*=.*/ONDEWO_NLU_VERSION = ${ONDEWO_NLU_API_VERSION}/' Makefile
	cd ${REPO_DIR} && sed -i -e 's/ONDEWO_PROTO_COMPILER_GIT_BRANCH.*=.*/ONDEWO_PROTO_COMPILER_GIT_BRANCH=tags\/${PROTO_COMPILER}/' Makefile
	cd ${REPO_DIR} && sed -i -e 's/NLU_API_GIT_BRANCH.*=.*/NLU_API_GIT_BRANCH=tags\/${ONDEWO_NLU_API_VERSION}/' Makefile && head -30 Makefile

# Release
	make -C ${REPO_DIR} ondewo_release | tee build_log_${REPO_NAME}.txt
	make -C ${REPO_DIR} TEST
# Remove everything from Release
	sudo rm -rf ${REPO_DIR}
	rm -f temp-notes


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

########################################################
#		GITHUB

build_and_release_to_github_via_docker: build_utils_docker_image release_to_github_via_docker_image ## Release automation for building and releasing on GitHub via a docker image

build_utils_docker_image: ## Build utils docker image
	docker build -f Dockerfile.utils -t ${IMAGE_UTILS_NAME} .

push_to_gh: login_to_gh build_gh_release ## Logs into GitHub CLI and Releases
	@echo 'Released to Github'

release_to_github_via_docker_image: ## Release to Github via docker
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

run_release_with_devops: ## Gets Credentials from devops-repo and runs release with them
	$(eval info:= $(shell cat ${DEVOPS_ACCOUNT_DIR}/account_github.env | grep GITHUB_GH))
	make release $(info)

spc: ## Checks if the Release Branch, Tag and Pypi version already exist
	$(eval filtered_branches:= $(shell git branch --all | grep "release/${ONDEWO_NLU_API_VERSION}"))
	$(eval filtered_tags:= $(shell git tag --list | grep "${ONDEWO_NLU_API_VERSION}"))
	@if test "$(filtered_branches)" != ""; then echo "-- Test 1: Branch exists!!" & exit 1; else echo "-- Test 1: Branch is fine";fi
	@if test "$(filtered_tags)" != ""; then echo "-- Test 2: Tag exists!!" & exit 1; else echo "-- Test 2: Tag is fine";fi
