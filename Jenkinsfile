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
  def img = docker.build('kulinski/jenkins-docker-node-example:latest', '.')

  stage 'Publish'
  docker.withRegistry('https://nexus.doyouevenco.de', 'nexus-admin') {
     img.push('latest')
  }

}
