#!/bin/sh

# Verify all changes to the config files have been moved over to CORE
#sudo cp /CORE/os-iso/ks.cfg /backup/ks$(date +%F_%T).cfg
#sudo cp /CORE/os-iso/isolinux/isolinux.cfg /backup/isolinux$(date +%F_%T).cfg
#sudo cp /CORE/os-iso/EFI/BOOT/grub.cfg /backup/grub$(date +%F_%T).cfg
#cp /home/user/Desktop/folder/ER15/ks.cfg /CORE/os-iso/ks.cfg
#cp /home/user/Desktop/folder/ER15/isolinux.cfg /CORE/os-iso/isolinux/isolinux.cfg 
#cp /home/user/Desktop/folder/ER15/grub.cfg /CORE/os-iso/EFI/BOOT/grub.cfg 
# new comment added   
# removing old ISO files
sudo rm -rf /iso/test*.iso

# set the name of the ISO becuase of the timestamp / called in multiple commands
ISO_NAME=test-RHEL-78-AFTDS-70-$(date +%F_%T | tr "[:]" "[;]").iso

# change into the os-iso directory because mkisofs needs to be called locally
cd /CORE/os-iso

# create the new custom RHEL image 
sudo mkisofs -o /mnt/hgfs/SHARE/$ISO_NAME -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot --boot-load-size 4 --boot-info-table  -eltorito-alt-boot  -eltorito-boot images/efiboot.img -no-emul-boot -J -R -V AFATDS-7.0 .
#sudo mkisofs -o /iso/$ISO_NAME -b isolinux/isolinux.bin -c isolinux/boot.cat --no-emul-boot --boot-load-size 4 --boot-info-table  -eltorito-alt-boot  -eltorito-boot images/efiboot.img -no-emul-boot -J -R -V AFATDS-7.0 .

