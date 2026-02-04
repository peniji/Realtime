
pipeline {
    agent any

    tools {
        maven 'Maven3'   // Must match the name in Jenkins Global Tool Configuration
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code from GitHub...'
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                echo 'Running Maven build...'
                sh 'mvn clean package'
            }
        }
    }

    post {
        success {
            echo '✅ Checkout and Maven build completed successfully'
        }
        failure {
            echo '❌ Maven build failed'
        }
    }
}
