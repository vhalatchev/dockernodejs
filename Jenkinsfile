node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCred') {

        def customImage = docker.build('vihroman/dockerpush') 

	customImage.inside {

		sh 'docker run -d -v /var/run/docker.sock:/var/run/docker/sock \
				-v $(which docker):/usr/bin/docker -p 41960:8080 vihroman/dockerpush'
		// sh 'docker run -dp 49160:8080 vihroman/dockerpush'
		// sh 'docker image tag dockerpush:latest vihroman/dockerpush:newpush4'
		}
        
        customImage.push()
    }
}
