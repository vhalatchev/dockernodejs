node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCred') {

        def customImage = docker.build("vihroman/dockerpush")

		sh docker run -dp 49160:8080 vihroman/dockerpush:newpush4

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
