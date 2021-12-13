pipeline {
    agent any
    parameters{
        string(name:"api_repo", defaultValue:'git@github.com:ondewo/ondewo-nlu-api.git', description:"repo for the API")
        string(name:"api_dir", defaultValue:'ondewo-nlu-api', description:"path for the API")
        string(name:"compiler_repo",defaultValue:'git@github.com:ondewo/ondewo-proto-compiler.git', description:'repo for the proto compiler')
        string(name:"compiler_branch",defaultValue:'automation', description:'branch of proto compiler')
        string(name:"compiler_dir",defaultValue:'ondewo-proto-compiler', description:'path for the proto compiler')
        string(name:"client_repo",defaultValue:'git@github.com:ondewo/ondewo-nlu-client-python.git', description:'repo for the client')
        string(name:"client_branch",defaultValue:'automation', description:'branch of client')
        string(name:"client_dir",defaultValue:'ondewo-client', description:'path for the proto client')
    }
    stages {
        stage('Cleaning work space'){
            steps{
                sh(script: "pwd ; ls ")
                sh(script: "rm -rf *")
                sh(script: "mkdir -p clients/python clients/nj clients/nodejs clients/angular clients/typescript")
            }
        }
        stage('Cloning Repositories') {
            steps {
                sh(script: "git clone -b automation ${params.compiler_repo} ${params.compiler_dir}", label: 'Clonning proto compiler repo')
                sh(script: "git clone -b automation git@github.com:ondewo/ondewo-nlu-client-python.git ${params.client_dir}",
                label: 'Clonning client repo compiler repo')
                sh(script: "git clone -b master ${params.api_repo} ${params.api_dir} ", label: 'Clonning API repo')
            }
        }
        stage("Building & Running Images"){
            steps{
                sh(script: "cp -r ${params.api_dir}/ondewo ${params.compiler_dir}")
                sh(script: "cp ${params.compiler_dir}/python/Dockerfile ${params.compiler_dir}/Dockerfile")
                sh(script: "docker build -t proto-compiler-image --build-arg api_directory=${params.api_dir} --build-arg compiler_directory=${params.compiler_dir} -f ${params.compiler_dir}/Dockerfile ."
                , label: "building dockerimage")
                sh(script: "docker run -v ${env.WORKSPACE}/clients/python:/workspace/clients/python -u \$(id -u):\$(id -g) proto-compiler-image", label: "running dockerimage")
            }
        }
        stage("Updating & Pushing New Clinet"){
            environment {
                CREDENTIALS = credentials('ondewo-jenkins')
           }
            steps{
                sh(script:"cp -r clients/python/* ${params.client_dir}/",label: "copy new agent")
                dir("${params.client_dir}"){
                    sh(script:"echo BUILD_NUMBER=${env.BUILD_NUMBER} > temporary.txt ",label: "Just for updating the repo. Should be removed later")
                    sh(script:"git config user.name '${CREDENTIALS_USR}'")
                    sh(script:" git add . ; git commit -m 'testing pipeline' ; git push", label: "Commiting & Pushing new client")
                }
            }
        }
    }
}