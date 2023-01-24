FROM jenkins/jenkins:lts

#disable the First Time Wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

#Configure the environment variable with a yaml manifest file
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

#Copy the plugins file from the docker host
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

#Install the plugins from the plugins.txt file
RUN jenkins-plugin-cli -f  /usr/share/jenkins/ref/plugins.txt

#Copy the configuration as a code manifest file from the docker host
COPY casc.yaml /var/jenkins_home/casc.yaml
