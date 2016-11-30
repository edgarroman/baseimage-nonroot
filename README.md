# baseimage-nonroot
Docker Image base ubuntu image that is able to run as any user.  Based on phusion/baseimage but extended to allow non-root capabilities so that
derived Docker Images will be compatible with OpenShift.  This has extra capabilities since OpenShift will run the Docker container with a 
random user id for security purposes.

See 'Why doesn't my Docker image run on OpenShift?' on this page: https://github.com/openshift/origin/

## Helpful references

* The Base Image is very helpful and insightful
  * https://github.com/phusion/baseimage-docker

* A series of blog posts by Graham Dumpleton that walks through this process
  * http://blog.dscpl.com.au/2015/12/don-run-as-root-inside-of-docker.html
  * http://blog.dscpl.com.au/2015/12/overriding-user-docker-containers-run-as.html
  * http://blog.dscpl.com.au/2015/12/random-user-ids-when-running-docker.html
  * http://blog.dscpl.com.au/2015/12/unknown-user-when-running-docker.html

## Image Build Shortcuts

### To build python dock

```sh
docker build -t <image name>[:<version tag>] .
```

### To run an interactive bash docker to look around
```sh
docker run --rm -ti <image name>[:<version tag>] /sbin/my_init -- bash -l
```
