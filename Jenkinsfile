node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCred') {

        def customImage = docker.build("vihroman/getting-started")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
