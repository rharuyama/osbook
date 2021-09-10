#!/bin/bash
set -e

VERSION=$1

if [ $# -ne 1 ]; then
    echo "usage: bash build_and_run.sh day0Xa" 1>&2
    exit 1
fi

# cd /home/vagrant/osbook/$VERSION/kernel/; make
# rm /home/vagrant/edk2/MikanLoaderPkg
# ln -s /home/vagrant/osbook/$VERSION/MikanLoaderPkg/ /home/vagrant/edk2/   
# cd /home/vagrant/edk2/; source edksetup.sh

# build

# sh build_and_run.sh day0Xa

bash $HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ./$VERSION/kernel/kernel.elf

