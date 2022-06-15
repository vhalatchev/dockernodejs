node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCred') {

        def customImage = docker.build('vihroman/dockerpush') 

	customImage.runWith ( '-d -v $(which docker):/usr/bin/docker -p 49160:8080') {

	}
	
        
        customImage.push()
    }
}
