FROM ubuntu:14.04.1
MAINTAINER Paweł Wiechowski

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN sudo apt-get update
RUN sudo apt-get install python-software-properties -y
RUN sudo apt-get install software-properties-common -y
RUN sudo add-apt-repository ppa:webupd8team/java -y
RUN sudo apt-get update
RUN sudo apt-get install oracle-java8-installer -y
RUN sudo apt-get install oracle-java8-set-default -y
