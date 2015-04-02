#Docker container for tophat2 (revised)
FROM ubuntu
MAINTAINER Hidemasa Bono, bonohu@gmail.com
# Install packages
RUN apt-get update &&\
    apt-get upgrade &&\
    apt-get -y install wget &&\
    apt-get clean &&\
    apt-get -y install unzip &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* &&\
    wget http://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.2.5/bowtie2-2.2.5-linux-x86_64.zip &&\
    wget http://ccb.jhu.edu/software/tophat/downloads/tophat-2.0.14.Linux_x86_64.tar.gz &&\
    unzip bowtie2-2.2.5-linux-x86_64.zip &&\
    tar zxvf tophat-2.0.14.Linux_x86_64.tar.gz &&\
    mkdir data
ENV PATH $PATH:/tophat-2.0.14.Linux_x86_64:/bowtie2-2.2.5
