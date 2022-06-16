node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCred') {

        def customImage = docker.build('vihroman/dockerpush') 

        customImage.push('newpush5')

	// def runContainer = docker.image('vihroman/dockerpush').Run('-d -p 49160:8080')
	
	sh 'docker pull vihroman/dockerpush'
	sh 'docker run vihroman/dockerpush -p 49160:8080'


    }
}
