pipeline {
    agent any

    environment {
        IMAGE_NAME = 'edumetrics-app'
        PORT       = '8085'
        REPO_URL   = 'git@github.com:Bibek-2024/MavenHelloWorld.git'
    }

    stages {
        stage('1. Checkout Code') {
            steps {
                echo 'Cloning code from GitHub using SSH credentials...'
                // Uses your exact saved Jenkins credential ID for GitHub SSH access
                checkout([$class: 'GitSCM', 
                    branches: [[name: '*/main']], 
                    extensions: [], 
                    userRemoteConfigs: [[credentialsId: 'github-ssh-key', url: "${REPO_URL}"]]
                ])
            }
        }

        stage('2. Build Maven War') {
            steps {
                echo 'Compiling and packaging Maven project into WAR file...'
                sh 'mvn clean package'
            }
        }

        stage('3. Build Local Docker Image') {
            steps {
                echo "Building Docker image: ${IMAGE_NAME}:latest..."
                // Builds the image directly inside the Jenkins workspace context
                sh "docker build -t ${IMAGE_NAME}:${BUILD_NUMBER} ."
                sh "docker tag ${IMAGE_NAME}:${BUILD_NUMBER} ${IMAGE_NAME}:latest"
            }
        }

        stage('4. Run Tomcat Container') {
            steps {
                echo "Deploying container application to port ${PORT}..."
                // Cleans out old running instances to avoid port collision
                sh "docker stop ${IMAGE_NAME}-container || true"
                sh "docker rm ${IMAGE_NAME}-container || true"
                
                // Launches the new container mapping external port 8085 to container port 8080
                sh "docker run -d -p ${PORT}:8080 --name ${IMAGE_NAME}-container ${IMAGE_NAME}:latest"
            }
        }
    }
}
