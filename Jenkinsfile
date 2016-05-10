node {
    
  stage 'Checkout'

  git 'https://github.com/kulinski/jenkins-docker-node-example.git'

  stage 'Build'

  docker.build('jenkins-docker-node:latest').inside {
    sh 'source ~/.nvm/nvm.sh && nvm install 0.12' 
    sh 'node --version'
    sh 'npm install'         
  }
        
   stage 'Bake Docker image'

       // def pcImg = docker.build("examplecorp/spring-petclinic:${env.BUILD_TAG}", '.')
    
        // Let's tag and push the newly built image. Will tag using the image name provided
        // in the 'docker.build' call above (which included the build number on the tag).
        //pcImg.push();
    
    stage 'Test Image'
        // Run the petclinic app in its own docker container
   //     pcImg.withRun {petclinic ->
            // Spin up a maven test container, linking it to the petclinic app container allowing
            // the maven tests to fire HTTP requests between the containers.
   //         mavenDocker.inside("-v /m2repo:/m2repo --link=${petclinic.id}:petclinic") {
     //           git 'https://github.com/tfennelly/spring-petclinic-tests.git'
    
       //         writeFile file: 'settings.xml',
         //                 text: '<settings><localRepository>/m2repo</localRepository></settings>'
           //     sh 'mvn -B -s settings.xml clean package'
        //    }
     //   }
    
   stage name: 'Promote Image', concurrency: 1
        // All the tests passed. We can now retag and push the 'latest' image
   //     pcImg.push('latest');    
}