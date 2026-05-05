pipeline {
    agent {
        label 'AGENT-1'
    }
    options{   //TIMEOUT COUNTER STARTS BEFORE AGENT IS ALLOCATED
        timeout(time: 30, unit: 'SECONDS')
        disableConcurrentBuilds()
        ansiColor("xterm")
    }
    

    environment{
        DEPLOY_TO = 'production'
        GREETING = 'Goodmorning'
    }

    stages {
        stage('Init') {
            steps {
                sh """
                cd 01-vpc
                terraform init -reconfigure
                """
            }
        }
        stage('Plan') {
            steps {
                sh 'echo "this is test"'
                
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "this is deploy"'
            }
        }

    }   
        
    post{
        always {
            echo 'I will always say hello again!'
            
        }
        success {
            echo 'I will run when pipeline is success'
        }
        failure {
            echo 'I will run when pipline is failure'
        }
        }    
        }
    

            
            
    
