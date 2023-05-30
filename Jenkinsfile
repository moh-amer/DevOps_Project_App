node('kubeagent') {


        stage('CI : Build Image') {
            container('kaniko') {
                stage('Build and push to docker hub') {
                  
                        script{
                            sh '''
                            
                            /kaniko/executor --context git://github.com/moh-amer/DevOps_Project_App \
                            --destination pharogrammer/bakehouse:${BUILD_NUMBER}
                            
                            '''
                        }
                    
                }
            }
        }
        
        stage("CD:"){
            
         container('deployer'){
             
            stage("Clone Git Repository") {
          
                git(
                    url: "https://github.com/moh-amer/DevOps_Project_App",
                    branch: "main",
                    changelog: true,
                    poll: true
                )
                
            
             }
        
        stage("Change Deployment") {
            
                // sh "git config --global --add safe.directory /home/jenkins/agent/workspace/mypipeline"
                // sh "git config --global user.email 'medodeth666@gmail.com' "
                // sh "git config --global user.name 'moh-amer' "
                sh "sed -i 's/\\(version: \\).*/\\1 ${BUILD_NUMBER}/' deployment/values.yaml"
                // sh "git add . "
                // sh "git commit -m 'Editing Version to ${BUILD_NUMBER}'"
                 
             }
             
            //  stage("Push to Git Repository") {
            //     withCredentials([gitUsernamePassword(credentialsId: 'git-hub-moh_amer', gitToolName: 'Default')]) {
            //         sh "git push -u origin main"
            //     }
   
            //   }
        
                  stage("Deploy the app") {
                      
                    sh "helm upgrade --install bakehouse-app ./deployment"
             }
        }
    }
}
