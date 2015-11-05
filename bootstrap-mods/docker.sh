#!/usr/bin/env bash

# Following from http://docs.docker.com/engine/installation/ubuntulinux/

apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

cat <<DOCKER_LIST>> /etc/apt/sources.list.d/docker.list
# Ubuntu Trusty
deb https://apt.dockerproject.org/repo ubuntu-trusty main
DOCKER_LIST

apt-get -y update

apt-get purge lxc-docker*

apt-get install -y docker-engine
