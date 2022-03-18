pipeline {
    agent any

    stages {
        stage('Docker Build') {
            steps {
		sh 'docker build -t bathulaashwini02/project .'
            }
        }
        stage('Start Container') {
            steps {
		sh 'docker container run -dt -p 9090:8080 bathulaashwini02/project'
            }
        }
    }
}

