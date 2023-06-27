#!/bin/bash

jenkins
#kubectl

if [ $? -eq 1 ]
then
  echo "jenkins is already installed"
else

 curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
 echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
 sudo apt-get update
 sudo apt-get install jenkins -y 
 sudo apt update -y
 sudo apt install openjdk-11-jre -y
 java -version
#openjdk version "11.0.12" 2021-07-20
#OpenJDK Runtime Environment (build 11.0.12+7-post-Debian-2)
#OpenJDK 64-Bit Server VM (build 11.0.12+7-post-Debian-2, mixed mode, sharing)

fi