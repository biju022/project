node{
   stage('compile') {

       sh 'mvn compile'

    }
	 stage('Test') {

       sh 'mvn test'

    } 
	 stage('sonaranalysis') {

       sh 'mvn sonar:sonar -Dsonar.host.url=http://18.219.121.184:9000 -Dsonar.login=f88ba854721c54c2599401c09e3bf3c7a9bc8044'

    } 
     stage('Build') {

       sh 'mvn clean package'
    }
   
   stage('Build Docker Image'){
     sh 'docker build -t bijuo22/project:latest .'
	 
   }
   
   stage('Push Docker Image'){
     withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'PASSWORD')]) {
        sh "docker login -u bijuo22 -p ${PASSWORD}"
     }
     sh 'docker push bijuo22/project:latest'
   }
}

