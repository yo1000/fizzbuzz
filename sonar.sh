#!/bin/bash

PULLS_NUMBER=$1
SONAR_USERNAME=$2
SONAR_PASSWORD=$3
GITHUB_OAUTH=$4

if [ $PULLS_NUMBER = 'false' ]; then
  exit
fi

mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.0.1:sonar -Dmaven.test.skip=true -Dclirr=true -Dsonar.host.url=http://sonarqube.yo1000.com -Dsonar.login=${SONAR_USERNAME} -Dsonar.password=${SONAR_PASSWORD} -Dsonar.sourceEncoding=UTF-8 -Dsonar.analysis.mode=issues -Dsonar.github.pullRequest=${PULLS_NUMBER} -Dsonar.github.oauth=${GITHUB_OAUTH} -Dsonar.github.repository=yo1000/fizzbuzz -B -e -V

