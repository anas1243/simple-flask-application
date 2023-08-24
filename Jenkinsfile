pipeline {
    agent {label 'flask'}
    stages{
        stage ('Build'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker-hub-cred', passwordVariable: 'docker-password', usernameVariable: 'docker-username')]) {
                    sh '''
                        docker login -u $docker-username -p $docker-password
                        docker build . -t anas1243/simple-webapp-flask
                        docker push anas1243/simple-webapp-flask
                    '''
                }
            }
        }
    }
}