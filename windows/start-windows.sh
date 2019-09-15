#!/bin/sh
exec qemu-system-x86_64 -enable-kvm \
        -cpu host,kvm=off \
        -drive file=windows.qcow2,if=virtio \
        -net nic -net user,hostname=windowsvm \
        -device vfio-pci,host=01:00.0 \
        -m 1G \
        -monitor stdio \
        -name "Windows" \
        "$@"
