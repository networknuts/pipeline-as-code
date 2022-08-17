#!/bin/bash
sleep 30
echo "Installing Jenkins"
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
sudo sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo sudo apt-get update
sudo apt install openjdk-8-jre -y
sudo sudo apt-get install jenkins -y
echo "PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/lib/jvm/java-8-openjdk-amd64/bin/" >> /etc/init.d/jenkins
sudo systemctl start jenkins.service
