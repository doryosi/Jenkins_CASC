#!/bin/bash

# Install Docker

sudo apt update && sudo apt upgrade -y

sudo apt install docker.io docker-compose

# Provison the Jenkins server

sudo docker-compose up -d

# Prompt the user
echo "##############################################"
echo "Open the browser and connect to 127.0.0.1:8080"
echo "##############################################"
