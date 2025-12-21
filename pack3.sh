#!/bin/sh
cd /NCORE/os-iso/Packages
tar -uvf /home/developer/Desktop/pck.tar avahi*
tar -uvf /home/developer/Desktop/pck.tar accou*
tar -uvf /home/developer/Desktop/pck.tar anac*
##tar -uvf /home/developer/Desktop/pck.tar base*
tar -uvf /home/developer/Desktop/pck.tar bash*
tar -uvf /home/developer/Desktop/pck.tar bin*
tar -uvf /home/developer/Desktop/pck.tar cpio*
tar -uvf /home/developer/Desktop/pck.tar blktrace*
tar -uvf /home/developer/Desktop/pck.tar cups*
tar -uvf /home/developer/Desktop/pck.tar curl*
tar -uvf /home/developer/Desktop/pck.tar post*
tar -uvf /home/developer/Desktop/pck.tar x2d*
tar -uvf /home/developer/Desktop/pck.tar dhcp*
tar -uvf /home/developer/Desktop/pck.tar elfutils*
tar -uvf /home/developer/Desktop/pck.tar evolution*
tar -uvf /home/developer/Desktop/pck.tar exempi*
tar -uvf /home/developer/Desktop/pck.tar exiv2*
tar -uvf /home/developer/Desktop/pck.tar expat*
tar -uvf /home/developer/Desktop/pck.tar file*
tar -uvf /home/developer/Desktop/pck.tar fuse*
tar -uvf /home/developer/Desktop/pck.tar flatpak*
tar -uvf /home/developer/Desktop/pck.tar freerdp*
tar -uvf /home/developer/Desktop/pck.tar fribidi*
tar -uvf /home/developer/Desktop/pck.tar gettext*
tar -uvf /home/developer/Desktop/pck.tar ghostscript*
tar -uvf /home/developer/Desktop/pck.tar glibc*
tar -uvf /home/developer/Desktop/pck.tar gnome*
tar -uvf /home/developer/Desktop/pck.tar gvfs*
tar -uvf /home/developer/Desktop/pck.tar icu*
tar -uvf /home/developer/Desktop/pck.tar iso*
tar -uvf /home/developer/Desktop/pck.tar geniso*
tar -uvf /home/developer/Desktop/pck.tar iscsi*
tar -uvf /home/developer/Desktop/pck.tar libarchive*
tar -uvf /home/developer/Desktop/pck.tar libcgroup*
tar -uvf /home/developer/Desktop/pck.tar libexif*
tar -uvf /home/developer/Desktop/pck.tar libjpeg-turbo*
tar -uvf /home/developer/Desktop/pck.tar libmspack*
tar -uvf /home/developer/Desktop/pck.tar libosinfo*
tar -uvf /home/developer/Desktop/pck.tar libsndfile*
tar -uvf /home/developer/Desktop/pck.tar libssh2*
tar -uvf /home/developer/Desktop/pck.tar libtiff*
tar -uvf /home/developer/Desktop/pck.tar libvirt*
#tar -uvf /home/developer/Desktop/pck.tar linux-firmware*
tar -uvf /home/developer/Desktop/pck.tar mariadb*
tar -uvf /home/developer/Desktop/pck.tar microcode_ctl*
tar -uvf /home/developer/Desktop/pck.tar net-snmp*
tar -uvf /home/developer/Desktop/pck.tar NetworkManager*
tar -uvf /home/developer/Desktop/pck.tar nss-softokn*
tar -uvf /home/developer/Desktop/pck.tar nss-util*
tar -uvf /home/developer/Desktop/pck.tar ntp*
tar -uvf /home/developer/Desktop/pck.tar openssh*
tar -uvf /home/developer/Desktop/pck.tar openssl*
tar -uvf /home/developer/Desktop/pck.tar pango*
tar -uvf /home/developer/Desktop/pck.tar perl*
tar -uvf /home/developer/Desktop/pck.tar polkit*
tar -uvf /home/developer/Desktop/pck.tar poppler*
tar -uvf /home/developer/Desktop/pck.tar procps-ng*
tar -uvf /home/developer/Desktop/pck.tar python*
tar -uvf /home/developer/Desktop/pck.tar plymouth*
tar -uvf /home/developer/Desktop/pck.tar qemu-kvm*
tar -uvf /home/developer/Desktop/pck.tar qt5*
tar -uvf /home/developer/Desktop/pck.tar rsyslog*
tar -uvf /home/developer/Desktop/pck.tar samba*
tar -uvf /home/developer/Desktop/pck.tar sox*
tar -uvf /home/developer/Desktop/pck.tar spice*
tar -uvf /home/developer/Desktop/pck.tar spice-gtk*
tar -uvf /home/developer/Desktop/pck.tar sqlite*
tar -uvf /home/developer/Desktop/pck.tar sssd*
tar -uvf /home/developer/Desktop/pck.tar sudo*
tar -uvf /home/developer/Desktop/pck.tar systemd*
tar -uvf /home/developer/Desktop/pck.tar taglib*
tar -uvf /home/developer/Desktop/pck.tar tcpdump*
tar -uvf /home/developer/Desktop/pck.tar udisks2*
tar -uvf /home/developer/Desktop/pck.tar unbound*
tar -uvf /home/developer/Desktop/pck.tar unzip*
tar -uvf /home/developer/Desktop/pck.tar vim*
tar -uvf /home/developer/Desktop/pck.tar vina*
tar -uvf /home/developer/Desktop/pck.tar acc*
tar -uvf /home/developer/Desktop/pck.tar wget*
tar -uvf /home/developer/Desktop/pck.tar Xorg*
tar -uvf /home/developer/Desktop/pck.tar xorg-x11-server*
set -x
cd /home/developer/Desktop
gzip pck.tar
sudo rm os.tar.gz
mv pck.tar.gz os.tar.gz
sudo mv os.tar.gz /CORE/os-iso/addons/Addition*/.
cd /home/developer/bin
sh Core_ISO_16.sh
