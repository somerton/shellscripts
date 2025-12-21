#!/bin/sh

    
# removing old ISO files
#sudo rm -rf /mnt/hgfs/SHARE/NCORE*.iso

# set the name of the ISO becuase of the timestamp / called in multiple commands
ISO_NAME=RHEL-7.8-puppet6.18-$(date +%F_%T | tr "[:]" "[;]").iso

# change into the os-iso directory because mkisofs needs to be called locally
cd /NCORE/os-iso

# create the new custom RHEL image 
sudo mkisofs -o /mnt/hgfs/SHARE/$ISO_NAME -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot --boot-load-size 4 --boot-info-table  -eltorito-alt-boot  -eltorito-boot images/efiboot.img -no-emul-boot -J -R -V AFATDS-7.0 .
#sudo mkisofs -o /iso/$ISO_NAME -b isolinux/isolinux.bin -c isolinux/boot.cat --no-emul-boot --boot-load-size 4 --boot-info-table  -eltorito-alt-boot  -eltorito-boot images/efiboot.img -no-emul-boot -J -R -V AFATDS-7.0 .

