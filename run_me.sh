#!/bin/bash

# Install Docker

sudo apt update && sudo apt upgrade -y

sudo apt install docker.io docker-compose

sudo systemctl start docker.service

# Enter Creds for Jenkins Server

read -p "Choose Username for Jenkins Server: " USERNAME
read -p "Choose Password for Jenkins Server: " PASSWORD
echo "USERNAME=$USERNAME" > .env
echo "PASSWORD=$PASSWORD" >> .env

# Provison the Jenkins server

sudo docker-compose up -d

# Prompt the user
echo "##############################################"
echo "Open the browser and connect to 127.0.0.1:8080"
echo "##############################################"


