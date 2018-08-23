FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y tzdata
RUN echo "Pacific/Auckland" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN apt-get -y install python3-pip python3-tk
RUN pip3 install umap-learn matplotlib
