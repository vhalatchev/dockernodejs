node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCred') {

        def customImage = docker.build('vihroman/dockerpush') 

        customImage.push('newpush7')

	
	sh 'docker run -dp 4916:8080 vihroman/dockerpush'


    }
}
