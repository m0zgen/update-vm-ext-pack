#!/bin/bash
# Created by Yevgeniy Goncharov
# https://sys-adm.in

# Section for VB update
# dnf update VirtualBox*

#dracut -v -f
#akmods --force
#dracut -f /boot/initramfs-$(uname -r).img $(uname -r)

VBOXVERSION=`VBoxManage --version | sed -r 's/([0-9])\.([0-9])\.([0-9]{1,2}).*/\1.\2.\3/'`
wget -q -N "http://download.virtualbox.org/virtualbox/$VBOXVERSION/Oracle_VM_VirtualBox_Extension_Pack-$VBOXVERSION.vbox-extpack"
VBoxManage extpack install --replace Oracle*.vbox-extpack

rm -f *.vbox-extpack