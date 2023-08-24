pipeline {
    agent {label 'flask'}
    stages{
        stage ('Build'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker-hub-cred', passwordVariable: 'docker-password', usernameVariable: 'docker-username')]) {
                    sh '''
                        echo $docker-username
                    '''
                }
            }
        }
    }
}