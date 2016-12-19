#!/bin/bash
# https://www.youtube.com/watch?v=SLU9DBj_zt0
# Quickly sets up vSRX instance post instance creation.
# Takes care of I/O APIC enabling, CPU/memory settings, etc.
if [[ -z "$1" ]] || [[ -z "$2" ]]; then
  echo -e "Correct syntax is './scriptname <VMNAME> <HOST INTERFACE NAME>'"
  exit
fi

####Extract .ova
# tar -xvf *.ova

####Main configs in 1 line, set bridge adapter interface
VBoxManage modifyvm "$1" --ioapic on --cpus 2 --memory 2048 --pae on --audio none --uart1 0x3F8 4 --nic1 bridged --nictype1 virtio --nic2 intnet --intnet2  "intnet" --nictype2 virtio --nic3 intnet --intnet3  "intnet" --nictype3 virtio --nic4 intnet --intnet4  "intnet" --nictype4 virtio --nic5 intnet --intnet5  "intnet" --nictype5 virtio --nic6 intnet --intnet6  "intnet" --nictype6 virtio --nic7 intnet --intnet7  "intnet" --nictype7 virtio --nic8 intnet --intnet8  "intnet" --nictype8 virtio
VBoxManage modifyvm "$1" --bridgeadapter1 $2
echo -e "$1 set up complete."

# All Modifies
# VBoxManage modifyvm "$1" --ioapic on
# VBoxManage modifyvm "$1" --cpus 2
# VBoxManage modifyvm "$1" --memory 2048
# VBoxManage modifyvm "$1" --pae on
# VBoxManage modifyvm "$1" --audio none
# VBoxManage modifyvm "$1" --uart1 0x3F8 4
#
# VBoxManage modifyvm "$1" --nic1 bridged
# VBoxManage modifyvm "$1" --bridgeadapter1 en0
# VBoxManage modifyvm "$1" --nictype1 virtio
#
# VBoxManage modifyvm "$1" --nic2 intnet
# VBoxManage modifyvm "$1" --intnet2  "intnet"
# VBoxManage modifyvm "$1" --nictype2 virtio
#
# VBoxManage modifyvm "$1" --nic3 intnet
# VBoxManage modifyvm "$1" --intnet3  "intnet"
# VBoxManage modifyvm "$1" --nictype3 virtio
#
# VBoxManage modifyvm "$1" --nic4 intnet
# VBoxManage modifyvm "$1" --intnet4  "intnet"
# VBoxManage modifyvm "$1" --nictype4 virtio
#
# VBoxManage modifyvm "$1" --nic5 intnet
# VBoxManage modifyvm "$1" --intnet5  "intnet"
# VBoxManage modifyvm "$1" --nictype5 virtio
#
# VBoxManage modifyvm "$1" --nic6 intnet
# VBoxManage modifyvm "$1" --intnet6  "intnet"
# VBoxManage modifyvm "$1" --nictype6 virtio
#
# VBoxManage modifyvm "$1" --nic7 intnet
# VBoxManage modifyvm "$1" --intnet7  "intnet"
# VBoxManage modifyvm "$1" --nictype7 virtio
#
# VBoxManage modifyvm "$1" --nic8 intnet
# VBoxManage modifyvm "$1" --intnet8  "intnet"
# VBoxManage modifyvm "$1" --nictype8 virtio
