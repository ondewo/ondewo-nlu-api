pipeline {
    agent any
    stages {
        stage('Cleaning the Workspace') {
            steps {
                sh "rm -rf *"
                sh "pwd ; ls"
            }//steps
        }//stage
        stage('Generate Clients'){
            parallel{
                stage('Python') {
                    environment{
                        API_REPO = "git@github.com:ondewo/ondewo-nlu-api.git"
                        API_DIR = 'ondewo-nlu-api'
                        COMPILER_REPO = 'git@github.com:ondewo/ondewo-proto-compiler.git'
                        COMPILER_BRANCH = 'automation'
                        COMPILER_DIR = 'ondewo-proto-compiler'
                        CLIENT_REPO = 'git@github.com:ondewo/ondewo-nlu-client-python.git'
                        CLIENT_BRANCH = 'automation'
                        CLIENT_DIR = 'ondewo-client'
                        API_BRANCH = env.BRANCH_NAME
                    }
                    stages{
                        stage('Clonning & filesystem setup'){
                            steps{
                                sh "git clone -b automation ${COMPILER_REPO} ${compiler_dir}"
                                sh "git clone -b master ${API_REPO} ${API_DIR}"
                                sh "mkdir -p clients/python"                                
                            }
                        }
                        stage('Generate Protos'){
                            steps{
                                sh "cp -r ${API_DIR}/ondewo ${COMPILER_DIR}"
                                sh "cp ${COMPILER_DIR}/python/Dockerfile ${COMPILER_DIR}/Dockerfile"
                                sh "docker build -t proto-compiler-image --build-arg api_directory=${API_DIR} --build-arg compiler_directory=${COMPILER_DIR} -f ${COMPILER_DIR}/Dockerfile ."
                                sh "docker run -v ${env.WORKSPACE}/clients/python:/workspace/clients/python -u \$(id -u):\$(id -g) proto-compiler-image"
                            }
                        }//Generate Protos
                        stage('Create Client'){
                            environment {
                                CREDENTIALS = credentials('ondewo-jenkins')
                            }
                            steps{
                                sh "git clone -b ${CLIENT_BRANCH} ${CLIENT_REPO} ${CLIENT_DIR}"
                                sh "cp -r clients/python/* ${CLIENT_DIR}/"
                                dir("${CLIENT_DIR}"){
                                    sh """sed -i '3i \\\n## This is a temporary release note from automated client generation. Build Number = ${env.BUILD_NUMBER} \\n' RELEASE.md """
                                    sh "git config user.name '${CREDENTIALS_USR}'"
                                    sh "git add . ; git commit -m 'testing pipeline'; git push"
                                    sh "echo {}"
                                }
                            }
                        }//Create Client
                        stage('Release'){
                            when {
                                expression {
					            	env.API_BRANCH_NAME.startsWith("release")
            					}
                            }
                            stages{
                                stage('Client Release'){
                                    steps{
                                        sh "cd ${API_DIR} ; echo ${env.BRANCH_NAME}"
                                        sh "cd .."
                                        sh "echo Documentation"
                                        sh "echo create a branch with same tag as API"
                                        sh "echo push it to GitHub"
                                    }
                                }//Make Release
                                stage('PyPi Release'){
                                    steps{
                                        sh """sed -i -r 's/version.+/version=${API_BRANCH_NAME}/g setup.py'"""
                                    }
                                }//PyPi Release
                            }//stages
                        }//stage('Release')
                    }//stages
                }// stage('Python Client')
                stage('Angular') {
                    stages{
                        stage('NoOp'){steps{sh 'echo hi'}}
                    }
                }// Angular

                stage('TS') {
                    stages{
                        stage('NoOp'){steps{sh 'echo hi'}}
                    }
                }// TS

                stage('JS') {
                    stages{
                        stage('NoOp'){steps{sh 'echo hi'}}
                    }
                }// JS
            }//parallel
        }//stage
    }//stages
}//pipeline
