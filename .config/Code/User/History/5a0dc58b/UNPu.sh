#######################################
INSTALL QEMU VirtManager on Arch
#######################################
https://computingforgeeks.com/install-kvm-qemu-virt-manager-arch-manjar/

https://christitus.com/vm-setup-in-linux/

##################
Required Packages
##################
archlinux-keyring
qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat ebtables iptables libguestfs edk2-ovmf 


#Enable and Start Libvirt
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

#Set default network, autostartm, check status
sudo virsh net-start default
sudo virsh net-autostart default
sudo virsh net-list --all

#EDIT TO USE LINUX ACCOUNT
sudo code /etc/libvirt/libvirtd.conf
LINE 81:  unix_sock_group = "libvirt"
LINE 104: unix_sock_rw_perms = "0770"


#Add user and new group
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt

#Restart Libvirt and set default network
sudo systemctl restart libvirtd.service
