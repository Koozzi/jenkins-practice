pipeline{
	agent any

	environment {
		USER_NAME = "Koozzi"
		USER_ID = 52
	}

	stages {
		stage("List env vars") {
			steps {
				sh "printenv | sort"
			}
		}
		stage("Using env vars") {

			environment {
				USER_PATH = "/home/koozzi"
			}
			
			steps {
				echo "BUILD_NUMBER = ${env.BUILD_NUMBER}"
				sh 'echo BUILD_NUMBER = $ '

				echo "Current user is ${env.USER_NAME}"
				echo "Current user id is ${env.USER_ID} (type: ${env.USRE_ID.class})"
				echo "Current user path is ${env.USER_PATH}" 

                script {
                    env.USER_GROUP = "users"
                }

                sh 'echo Current user group is $USER_GROUP'

                withEnv(["USER_PWD=secret", "USER_ID_ADMIN=false"]){
                    echo "Current user password is ${env.USER_PWD}"
                    sh 'echo Current user is admin? $USER_IS_ADMIN'
                }
			}
		}
	}
}