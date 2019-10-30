[![Build Status](https://travis-ci.com/ahlaw/docker-polynote.svg?branch=master)](https://travis-ci.com/ahlaw/docker-polynote)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/ahlaw/polynote)](https://hub.docker.com/r/ahlaw/polynote/builds)

# docker-polynote

*Unofficial* docker image for [Polynote](https://polynote.org/).

## Installation

Pull the image from the Docker repository.

```
docker pull ahlaw/polynote
```

Alternatively, pull the following image for Spark and PySpark support.

```
docker pull ahlaw/polynote-spark
```

All further examples will use the base image name but should be replaced if with the Spark version if desired.

## Usage

This command starts a container running a Polynote server and exposes the server on host port 8192. Polynote application can be accessed on the browser at http://localhost:8192

```
docker run -p 8192:8192 ahlaw/polynote
```

By default, notebooks in the container are written to `/opt/polynote/notebooks`. The following command mounts the current working directory there.

```
docker run -p 8192:8192 -v "$PWD":/opt/polynote/notebooks ahlaw/polynote
```

## Installing Additional Python Packages

Create a new Dockerfile like below.

```
FROM ahlaw/polynote:latest
RUN pip install numpy
```

Then build the image.

```
docker build --rm -t custom-image-name .
```

If you have a `requirements.txt` file, create a Dockerfile as shown below.

```
FROM ahlaw/polynote:latest
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
```

If the above does not suit your needs, you can start a shell in the container and install packages there. However, these will not persist once the container has terminated.

```
docker exec --it container_name /bin/bash
pip install numpy
```

## Versioning

The docker image follows the latest [Polynote release](https://github.com/polynote/polynote). 

### Base Polynote Image

* JDk 8
* Python 3.6

### Spark Polynote Image

* Apache Spark 2.4.4
* Hadoop 2.7

The latest version of all python packages in the image was installed.

## License

All scripts and files hosted in this project are released under the MIT license.
The container image contains `Polynote`, which is under the Apache 2.0 license. 
This image may contain some other software under different licenses.
