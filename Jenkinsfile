pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M2" and add it to the path.
        maven "M3"
    }
 //   environment{
        //SONAR_TOKEN = credentials("sonar-token")
  //  }

    stages {
           // stage('Sonar Scan') {
           //  steps {
           //      bat "mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=org-mahendra_book-api"
                
           //  }
           // }

        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                //git 'https://github.com/mahendra-shinde/sample-library-api/'
                //bat "mvn  clean package"
                // To run Maven on a Linux agent, use
                sh "mvn  clean package"
                
            }

            post {
                // If Maven was able to run the tests, even if some of the test
                // failed, record the test results and archive the jar file.
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
                }
            }
        }
    }
}
