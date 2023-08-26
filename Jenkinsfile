pipeline {
    agent {label 'flask'}
    stages{
        stage ('Build'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker-hub-cred', passwordVariable: 'DOCKER_PASS', usernameVariable: 'DOCKER_USER')]) {
                    sh '''
                        docker login -u $DOCKER_USER -p $DOCKER_PASS
                        docker build . -t anas1243/simple-webapp-flask
                        docker push anas1243/simple-webapp-flask
                    '''
                }
            }
        }
        stage ('Deploy'){
            steps {
                sh '''
                docker run -d -p 80:8080 --name flask-webapp anas1243/simple-webapp-flask
                '''
            }
        }
    }
}