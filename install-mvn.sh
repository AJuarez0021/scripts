#!/bin/bash

MAVEN_VERSION=3.9.7

echo Downloading and installing Maven ${MAVEN_VERSION}...
wget https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
sudo tar xvzf apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt
rm apache-maven-${MAVEN_VERSION}-bin.tar.gz

export MAVEN_HOME=/opt/apache-maven-${MAVEN_VERSION}
export PATH="${MAVEN_HOME}/bin:${PATH}"

mvn -version

