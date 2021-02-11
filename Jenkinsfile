pipeline{
    agent any
    
    stages {
        
        stage('SCM Checkout'){
            steps{
                git(
                    branch: 'main',
                    credentialsId : 'koozzi-github',
                    url : 'https://github.com/Koozzi/jenkins-practice')
            }
        } 
        
        stage('Docker Build'){
            steps{
                echo "Docker Build"
                sh '''cd mydjango
                docker build -t study-koozzi .'''
            }
        }
        
        stage('Docker run container'){
            environment {
                PASSWORD = credentials('DATABASE_PASSWORD')
            }

            steps{
                echo "Docker Deploy"
                sh 'docker rm -f `docker ps -aq` || true'
                sh 'docker run -tid -p 8000:8000 -e PASSWORD=$PASSWORD study-koozzi'
            }
        }
    }
}