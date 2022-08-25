pipeline {
  agent {
    kubernetes {
      // 这里就是继承
      inheritFrom 'jenkins-slave-temp'
      yaml '''
        apiVersion: v1
        kind: Pod
        metadata:
          labels:
            jenkins: slave-docker
          namespace: jenkins
        spec:
          containers:
          - name: maven
            image: maven:alpine
            command:
            - cat
            tty: true
          - name: golang
            image: golang:1.16.5
            command:
            - sleep
            args:
            - 99d
          - name: nodejs12
            image: node:12
            command:
            - cat
            tty: true
          - name: kubectl
            image: cnych/kubectl
            command:
            - cat
            tty: true
        '''
    }
  }
  environment {
        branchName = sh(returnStdout: true, script: "echo ${GIT_BRANCH} | sed 's/origin\\///g'").trim()
        pkgInfo = readJSON file: 'package.json'
        pkgName = "${pkgInfo.name}"
        commitId = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
        imageTag = "${branchName}-${commitId}"
        imageName = "harbor.k8s.com/k8s/${pkgName}:${imageTag}"
    }
  stages {
    stage('查看 java 版本'){
      steps {
        container('jnlp') {
          sh 'id;java -version'
        }
      }
    }
    stage('查看 golang 版本'){
      steps {
        container('golang') {
          sh 'go version'
        }
      }
    }
    stage('查看 maven 版本') {
      steps {
        container('maven') {
          sh 'id;mvn -version'
        }
      }
    }
    stage('查看 docker 版本'){
      steps {
        container('jnlp-docker') {
          sh 'id;docker info'
        }
      }
    }
    stage('拉取git代码'){
      steps {
        container('jnlp') {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'gitea', url: 'http://gitea.k8s.com/gitea/my-vue-app.git']]])        }
      }
    }
    stage('sonar 质量检查') {
          steps {
             container('jnlp-docker') {
              sh '/var/jenkins_home/sonar-scanner/bin/sonar-scanner -Dsoanr.sources=./src  -Dsonar.projectname=${JOB_NAME} -Dsonar.projectKey=${JOB_NAME} -Dsonar.java.binaries=. -Dsonar.login=37871da48c8a308125cff65b031d561402264a98'
         }
       }
    }
    stage('npm打包'){
      steps {
        container('nodejs12') {
          sh '''
                node --version
                npm --version
                npm install
                npm run build
               '''
        }
      }
    }
    stage('build'){
      steps {
        container('jnlp-docker') {
          sh 'docker build -t ${imageName}  .'
        }
      }
    }
    stage('上传镜像仓库'){
      steps {
        container('jnlp-docker') {
          sh '''docker login -u ${harborHubUser} -p ${harborHubPassword} ${harborHubUrl};
                docker tag ${imageName}  ${imageName}
                docker push ${imageName}
            '''
        }
      }
    }
    stage('k8s 部署 '){
      steps {
        container('kubectl') {
         sh ' kubectl version '
        }
      }
    }
  }
}