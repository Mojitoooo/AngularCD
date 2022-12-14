pipeline {

  agent any

  stages {

    stage('GitHub Pull') {
     steps {
				git branch: 'main', url: 'https://github.com/Mojitoooo/AngularCD.git'
}
}
   stage('ansible'){
    steps {

          script{

          sh "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml"
}


}
}


  }

}
