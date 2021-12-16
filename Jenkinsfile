
pipeline {
    agent any
    parameters{
        string(name: 'RELEASE_BRANCH', defaultValue: 'release/1.0.0', description: 'Release branch to generate client.')
        booleanParam(name: 'RELEASE', defaultValue: false, description: 'True if you need a complete release, otherwise false')
        booleanParam(name: 'PyPi', defaultValue: false, description: 'True if you need to publish a PyPi package')
    }
    stages {
        stage('Cleaning the Workspace') {
            steps {
                sh "echo ${params.RELEASE_BRANCH}"
                sh "echo ${params.RELEASE}"
                sh "echo ${params.PyPi}"
                sh "rm -rf *"
                sh "pwd ; ls"
            }//steps
        }//stage
        stage('Generate Clients'){
            parallel{
                stage('Python') {
                    environment{
                        API_TAG = params.RELEASE_BRANCH.replaceAll( 'release/' , '' )
                        API_REPO = "git@github.com:ondewo/ondewo-nlu-api.git"
                        API_DIR = 'ondewo-nlu-api'
                        COMPILER_REPO = 'git@github.com:ondewo/ondewo-proto-compiler.git'
                        COMPILER_BRANCH = 'automation'
                        COMPILER_DIR = 'ondewo-proto-compiler'
                        CLIENT_REPO = 'git@github.com:ondewo/ondewo-nlu-client-python.git'
                        CLIENT_BRANCH = 'automation'
                        CLIENT_DIR = 'ondewo-client'
                        API_BRANCH_NAME = "${env.BRANCH_NAME}"
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
                                CREDENTIALS = credentials('devops_ondewo')
                            }
                            steps{
                                sh "git clone -b ${CLIENT_BRANCH} ${CLIENT_REPO} ${CLIENT_DIR}"
                                sh "cp -r clients/python/* ${CLIENT_DIR}/"
                                dir("${CLIENT_DIR}"){ 
                                    sh """sed -i '3i \\\n## This is a temporary release note from automated client generation. Build Number = ${env.BUILD_NUMBER} \\n' RELEASE.md """

                                    // sh "git config user.name '${CREDENTIALS_USR}'"
                                    // sh "git add . ; git commit -m 'testing pipeline'; git push"
                                }
                            }
                        }//Create Client
                        stage('Release'){
                            stages{                           
                                stage('Client Release'){
                                    when{
                                        expression{
                                            params.RELEASE == true
                                        }
                                    }
                                    environment {
                                       CREDENTIALS = credentials('devops_ondewo')
                                    }
                                    steps{
                                        generate_docs('ondewo-nlu-api')
                                        sh 'cp -r doc ${API_DIR}'
                                        dir("${API_DIR}"){
                                            sh "ls doc*"
//                                            sh "git config user.name '${CREDENTIALS_USR}'"
//                                            sh "git add . ; git commit -m 'testing pipeline'; git push"
                                        }
                                    }//Client Release
                                }
                                stage('PyPi Release'){
                                    when{
                                        expression{
                                            params.PyPi == true
                                        }
                                    }
                                    steps{
                                            dir("${CLIENT_DIR}"){
                                                // this line updates the version number in the setup.py
                                                sh """sed -i -r "s/version.+/version=${API_TAG}/g" setup.py"""
                                                sh "cat setup.py"

                                                /* 
                                                sh "python setup.py sdist bdist_wheel"
                                                sh "twine upload -r pypi dist/*"
                                                */ 
                                                // BE CAREFUL WHEN YOU COMMENT OUT ABOVE LINES !!!
                                            }
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


def generate_docs(API_FOLDER){
    sh "echo creating documents for $API_FOLDER"
    sh 'docker pull pseudomuto/protoc-gen-doc' 
    sh """
    docker run --rm -u \$(id -u):\$(id -g) -v \$(pwd)/doc:/out -v \$(pwd):/protos pseudomuto/protoc-gen-doc -I /protos/$API_FOLDER/googleapis -I /protos/$API_FOLDER --doc_opt html,session.html /protos/$API_FOLDER/ondewo/nlu/session.proto
    """
}