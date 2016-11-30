# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
FROM phusion/baseimage:0.9.19

MAINTAINER Edgar Roman <emroman@pbs.or>

ADD . /image_build
RUN /image_build/setup.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
EXPOSE 80 443

