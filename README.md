# docker-polynote

*Unofficial* docker image for [polynote](https://polynote.org/).

## Usage

This command starts a container running a Polynote server and exposes the server on host port 8192. Access Polynote application on the browser at http://localhost:8192

```
docker run -p 8192:8192 ahlaw/polynote
```

By default, notebooks in the container are written to `/opt/polynote/notebooks`. The following command mounts the current working directory there.

```
docker run -p 8192:8192 -v "$PWD":/opt/polynote/notebooks ahlaw/polynote
```

## License

All scripts and files hosted in this project are released under the MIT license.
The container image contains `Polynote`, which is under the Apache 2.0 license. 
This image may contain some other software under different licenses.
