FROM golang:1.5.3

RUN wget -O /swarm.jar http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/1.22/swarm-client-1.22-jar-with-dependencies.jar
RUN apt-get update
RUN apt-get -y install openjdk-7-jdk

CMD java -jar /swarm.jar -username $JENKINS_USERNAME -password $JENKINS_APIKEY -labels 'golang swarm'
