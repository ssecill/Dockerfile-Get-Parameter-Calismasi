pipeline {
    agent any
    stages {
    	stage('Run helm') {
	container('helm') {
		sh """
		 helm upgrade --install secil ./mychart -f ./mychart/values.yaml --set "services.secil\.services\.sns.cap_add={SYS_ADMIN,TEST}"
	}
    }
}
