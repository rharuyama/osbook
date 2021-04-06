#!/bin/bash
set -e

VERSION=$1

if [ $# -ne 1 ]; then
    echo "usage: bash build_and_run.sh day0Xa" 1>&2
    exit 1
fi

# rm /home/vagrant/edk2/MikanLoaderPkg
# ln -s /home/vagrant/osbook/$VERSION/MikanLoaderPkg/ /home/vagrant/edk2/   
# source /home/vagrant/edk2/edksetup.sh

# build 

# bash /home/vagrant/osbook/devenv/run_qemu.sh /home/vagrant/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi /home/vagrant/osbook/$VERSION/kernel/kernel.elf

bash $HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi ./$VERSION/kernel/kernel.elf

