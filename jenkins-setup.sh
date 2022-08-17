#!/bin/bash
sleep 30
echo "Installing Jenkins"
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
sudo sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo sudo apt-get update
sudo sudo apt-get install jenkins -y
sudo systemctl start jenkins.service
