#!/bin/bash
exec qemu-system-x86_64 -enable-kvm \
        -cpu host \
        -cdrom install-amd64-minimal-20190821T214502Z.iso \
        -boot d \
        -drive file=gentoo-vm,if=virtio \
        -net nic -net user,hostname=Gentoo-VM \
        -m 256M \
        -monitor stdio \
        -name "Gentoo VM" \
        $@

