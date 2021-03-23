#!/bin/sh
qemu-system-x86_64 \
    -drive if=pflash,file=$(pwd)/devenv/OVMF_CODE.fd \
    -drive if=pflash,file=$(pwd)/devenv/OVMF_VARS.fd \
    -hda disk.img


