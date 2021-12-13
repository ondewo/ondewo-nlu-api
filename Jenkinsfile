pipeline {
    agent None
    stages {
        stage('Cleaning work space'){
            steps{
                sh(script: "pwd ; ls ")
                sh(script: "rm -rf *")
                sh(script: "mkdir -p clients/python clients/nj clients/nodejs clients/angular clients/typescript")
            }
        }
        stage{
            parallel{
                stage{
                    agent {
                        node {
                            label 'cpu'
                        }
                    }
                }
            }
        }
    }
}