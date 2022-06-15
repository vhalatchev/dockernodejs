pipeline {
  environment {
    imagename = "vihroman/dockerpush"
    registryCredential = 'dockerHubCred'
    dockerImage = ''
  }
  options {
        timeout(time: 1, unit: 'HOURS')
    }

  
  agent any
  
  stages {
    stage('Cloning_Git') {
      steps {
        git([url: 'https://github.com/vhalatchev/dockernodejs', branch: 'main', credentialsId: 'gitHubCred'])
 
      }
    }
    stage('Build_Image') {
      steps{
        script {
          dockerImage = docker.build imagename
        }
      }
    }
    stage('Deploy_Image') {
      steps{
        script {
          docker.withRegistry( 'https://hub.docker.com', registryCredential ) {
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')
          }
        }
      }
    }
	
     stage ('Run_Container') {
      steps{
        script {
          dockerImage.withRun('-d -v /var/run/docker.sock:/var/run/docker/sock \
                                -v $(which docker):/usr/bin/docker -p 41960:8080'){
			// do things here
	   }
	}
      }
    }
	
    /* stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $imagename:$BUILD_NUMBER"
         sh "docker rmi $imagename:latest"
 
      }
    }*/
  }
}
