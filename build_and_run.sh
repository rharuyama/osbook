#!/bin/bash -ex

VERSION=$1

if [ $# -ne 1 ]; then
    echo "usage: bash build_and_run.sh day0Xa" 1>&2
    exit 1
fi

ln -s /home/vagrant/osbook/$VERSION/MikanLoaderPkg/ /home/vagrant/edk2/   
source /home/vagrant/edk2/edksetup.sh

build 

bash /home/vagrant/osbook/devenv/run_qemu.sh /home/vagrant/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi

