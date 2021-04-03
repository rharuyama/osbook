#!/bin/sh
test -f /etc/bootstrapped && exit

// ここに環境構築時に実行したコマンドを羅列する
// sudo apt-get install -y gcc g++ make
sudo apt update -y
sudo apt install -y clang lldb lld nasm make qemu uuid-dev python3-distutils llvm
source /home/vagrant/edk2/edksetup.sh
make -C /home/vagrant/edk2/BaseTools/Source/C
build

date > /etc/bootstrapped
