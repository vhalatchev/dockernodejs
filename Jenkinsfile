node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCred') {

        def customImage = docker.build('vihroman/dockerpush') 

	customImage.runWith ( '-d -v /var/run/docker.sock:/var/run/docker.sock \ 
				-v $(which docker):/usr/bin/docker -p 49160:8080') {

	}
	
        
        customImage.push()
    }
}
