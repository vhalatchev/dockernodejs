node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCred') {

        def customImage = docker.build('vihroman/dockerpush') 

        customImage.push('newpush6')

	// def runContainer = docker.image('vihroman/dockerpush').Run('-d -p 49160:8080')
	
	// sh 'docker pull vihroman/dockerpush'
	sh 'docker -dp run 4916:8080 vihroman/dockerpush'


    }
}
