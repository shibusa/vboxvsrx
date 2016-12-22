Based off of https://www.youtube.com/watch?v=SLU9DBj_zt0 for creating a vSRX lab machine in VirtualBox.  This automates the post Virtual Machine creation procedures.  Does the following:
- enable I/O APIC
- set CPUs to required min of 2
- set memory to required min of 2GB
- enable PAE/NX
- disable audio
- enable serial
- configure all network interfaces

Requirements:
- vSRX.ova
- VirtualBox
- BASH environment

Usage:
1. Set execute permissions on script
chmod +x vsrxinit.sh
2. Run script with following format
./vsrxinit.sh "VM Name" "Host Interface Name"
Example:
./vsrxinit.sh vSRX en0
