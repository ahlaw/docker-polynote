FROM ubuntu:18.04
LABEL maintainer="amos.law98@gmail.com"

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    openjdk-8-jdk \
    python3-dev \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3 /usr/bin/python & \
    ln -s /usr/bin/pip3 /usr/bin/pip
    
RUN pip install \
    jedi \
    jep \
    virtualenv

WORKDIR /opt

ARG POLYNOTE_VERSION=0.2.11
ENV RELEASE_URL https://github.com/polynote/polynote/releases/download/${POLYNOTE_VERSION}/polynote-dist.tar.gz

RUN curl -L $RELEASE_URL | tar -zxvpf -

COPY ["config.yml", "/opt/polynote"]

EXPOSE 8192

ENTRYPOINT ["./polynote/polynote"]
