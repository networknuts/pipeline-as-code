pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building the application..'
            
            }
        }
        stage('Test') {
            steps {
                echo 'Testing the application..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application....'
            }
        }
    }
    
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
