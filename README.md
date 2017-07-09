Based off of [Juniper's guide for creating a vSRX lab machine in VirtualBox](https://www.youtube.com/watch?v=SLU9DBj_zt0).  This automates the post Virtual Machine creation procedures outlined in the post [4 minute mark](https://youtu.be/SLU9DBj_zt0?t=4m) for BASH enabled systems.

The vSRX is a fantastic sandbox for those interested in getting familiar with the JunOS command line and better understanding virtualized networking.

## Does the following:
- enable I/O APIC
- set CPUs to required min of 2
- set memory to required min of 4GB
- enable PAE/NX
- disable audio
- enable serial
- configure all network interfaces

## Requirements
- vSRX.ova
- VirtualBox
- BASH environment

## Usage
1. Set execute permissions on script
```
chmod +x vsrxinit.sh
```
2. Run script with following format
```
./vsrxinit.sh {VM Name} {Host Interface Name}
``
