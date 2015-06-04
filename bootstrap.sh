#!/usr/bin/env bash

if [ `uname` != "Linux" ]; then
    echo "bootstrap.sh expects to execute on a Linux system"
    exit 1
fi

apt-get -y update
apt-get clean all

# Install bootstrap modules:
BOOTSTRAP_MODS_DIR="/vagrant/bootstrap-mods"
if [ -d "$BOOTSTRAP_MODS_DIR" ]; then
    for module in `find ${BOOTSTRAP_MODS_DIR} -type f -o -type l` ; do
        echo "Running ${module}"
        bash ${module}
    done
fi
