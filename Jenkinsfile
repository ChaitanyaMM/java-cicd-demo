pipeline {

    agent any
    
    environment{
   
      workspacePath='/home/chaitanya/.jenkins/workspace'
      projectName='java-cicd-demo'
      gitCredentials=credentials('GitCredentials')
      pass =credentials('dockerPassword')
      aws_kv=credentials('aws-ec2')
      jfrog_server_name=credentials('jfrog-server-name')
      JFROG_USERNAME=credentials('jfrog-username')
      JFROG_PASS=credentials('jfrog-password')
   
     }
    

    stages {

        stage('Build') {
            steps {
                echo 'cloning app ! ...'
                checkout([
                          $class: 'GitSCM', branches: [[name: '*/main']],
                          userRemoteConfigs: [[url: 'https://github.com/ChaitanyaMM/java-cicd-demo-app.git',credentialsId: '$gitCredentials']]
                        ])
                echo 'building project'
                sh '''/home/chaitanya/.jenkins/workspace/java-cicd-demo/Jenkins/build.sh '''


            }
        }
        
        
        stage('dockerBuild') {
            steps {
                echo 'building project'
                sh '''/home/chaitanya/.jenkins/workspace/java-cicd-demo/Jenkins/push.sh '''
            }
        }
        
        stage('artifactory') {
            steps {
                echo 'pushing image to jfrog'
                sh '''/home/chaitanya/.jenkins/workspace/java-cicd-demo/Jenkins/jfrog.sh '''
            }
        }
        
       stage('deploy-aws') {
            steps {
                echo 'deploying project'
                sh '''/home/chaitanya/.jenkins/workspace/java-cicd-demo/Jenkins/deploy.sh '''
            }
        }
  
  }
 
      
}

