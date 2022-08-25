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
  post{

     success{

        emailext to:'957488199@qq.com,shenzhuang@aliyun.com',
        subject:"'SUCCESSFUL: Job ${env.JOB_NAME} [${env.BUILD_NUMBER}]' 更新正常",
        body:'''<!DOCTYPE html>
                  <html>
                  <head>
                  <meta charset="UTF-8">
                  <title>${ENV, var="JOB_NAME"}-第${BUILD_NUMBER}次构建日志</title>
                  </head>
                  <body leftmargin="8" marginwidth="0" topmargin="8" marginheight="4"
                      offset="0">
                      <table width="95%" cellpadding="0" cellspacing="0"  style="font-size: 11pt; font-family: Tahoma, Arial, Helvetica, sans-serif">
                          <tr>
                              <td>此次项目构建<strong>成功</strong>，大家好，以下为${PROJECT_NAME }项目构建信息</td>
                          </tr>
                          <tr>
                              <td><br />
                              <b><font color="#0B610B">构建信息</font></b>
                              <hr size="2" width="100%" align="center" /></td>
                          </tr>
                          <tr>
                              <td>
                                  <ul>
                                      <li>项目名称 ： ${PROJECT_NAME}</li>
                                      <li>构建编号 ： 第${BUILD_NUMBER}次构建</li>
                                      <li>触发原因： ${CAUSE}</li>
                                      <li>构建状态： ${BUILD_STATUS}</li>
                                      <li>构建日志： <a href="${BUILD_URL}console">${BUILD_URL}console</a></li>
                                      <li>构建  Url ： <a href="${BUILD_URL}">${BUILD_URL}</a></li>
                                      <li>工作目录 ： <a href="${PROJECT_URL}ws">${PROJECT_URL}ws</a></li>
                                      <li>项目  Url ： <a href="${PROJECT_URL}">${PROJECT_URL}</a></li>
                                  </ul>
                              </td>
                          </tr>
                          <tr>
                              <td><b><font color="#0B610B">历史变更记录:</font></b>
                              <hr size="2" width="100%" align="center" /></td>
                          </tr>
                          <tr>
                              <td>
                                  ${CHANGES_SINCE_LAST_SUCCESS,reverse=true, format="Changes for Build #%n:<br />%c<br />",showPaths=true,changesFormat="<pre>[%a]<br />%m</pre>",pathFormat="&nbsp;&nbsp;&nbsp;&nbsp;%p"}
                              </td>
                          </tr>
                      </table>
                  </body>
                  </html> '''

    }

    failure{

        emailext to:'957488199@qq.com,shenzhuang@aliyun.com,18254090527@163.com,17621621226@126.com',
        subject:"'FAILED: Job ${env.JOB_NAME} [${env.BUILD_NUMBER}]' 更新失败",
        body:''' <!DOCTYPE html>
          <html>
          <head>
          <meta charset="UTF-8">
          <title>${ENV, var="JOB_NAME"}-第${BUILD_NUMBER}次构建日志</title>
          </head>
          <body leftmargin="8" marginwidth="0" topmargin="8" marginheight="4"
              offset="0">
              <table width="95%" cellpadding="0" cellspacing="0"  style="font-size: 11pt; font-family: Tahoma, Arial, Helvetica, sans-serif">
                  <tr>
                      <td>大家好，很不幸，此次项目构建<strong>失败</strong> ，以下为${PROJECT_NAME }项目构建信息</td>
                  </tr>
                  <tr>
                      <td><br />
                      <b><font color="#0B610B">构建信息</font></b>
                      <hr size="2" width="100%" align="center" /></td>
                  </tr>
                  <tr>
                      <td>
                          <ul>
                              <li>项目名称 ： ${PROJECT_NAME}</li>
                              <li>构建编号 ： 第${BUILD_NUMBER}次构建</li>
                              <li>触发原因： ${CAUSE}</li>
                              <li>构建状态： ${BUILD_STATUS}</li>
                              <li>构建日志： <a href="${BUILD_URL}console">${BUILD_URL}console</a></li>
                              <li>构建  Url ： <a href="${BUILD_URL}">${BUILD_URL}</a></li>
                              <li>工作目录 ： <a href="${PROJECT_URL}ws">${PROJECT_URL}ws</a></li>
                              <li>项目  Url ： <a href="${PROJECT_URL}">${PROJECT_URL}</a></li>
                          </ul>
                      </td>
                  </tr>
                  <tr>
                      <td><b><font color="#0B610B">历史变更记录:</font></b>
                      <hr size="2" width="100%" align="center" /></td>
                  </tr>
                  <tr>
                      <td>
                          ${CHANGES_SINCE_LAST_SUCCESS,reverse=true, format="Changes for Build #%n:<br />%c<br />",showPaths=true,changesFormat="<pre>[%a]<br />%m</pre>",pathFormat="&nbsp;&nbsp;&nbsp;&nbsp;%p"}
                      </td>
                  </tr>
              </table>
          </body>
          </html> '''
    }

  }
}