node {
    
  stage 'Checkout'

  git 'https://github.com/kulinski/jenkins-docker-node-example.git'

  stage 'Build and Test'

  // Build using a plain docker container, not our local Dockerfile
  docker.image('mhart/alpine-node:6.1.0').inside('-u root:root') {
    sh 'node --version'
    sh 'npm install'
	// sh 'npm test'         
  }
        
  stage 'Package Docker image'

  // Build final image using our Dockerfile
  def img = docker.build('jenkins-docker-node-example:latest', '.')

        // Let's tag and push the newly built image. Will tag using the image name provided
        // in the 'docker.build' call above (which included the build number on the tag).
        //pcImg.push();
    
   stage name: 'Deploy Image', concurrency: 1
        // All the tests passed. We can now retag and push the 'latest' image
   //     pcImg.push('latest');    
}