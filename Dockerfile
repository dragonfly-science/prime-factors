FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install python3-pip
RUN pip3 install umap-learn