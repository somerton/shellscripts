#!/bin/sh
# set the name of the ISO becuase of the timestamp / called in multiple commands
BUILD_NUMBER=$(date +%H%M)
ISO_NAME=afatds-7.0.0.0-os-$(date +%F)_$BUILD_NUMBER.iso

#CD to the repos/afatds-os7 directory
cd ~/repos/afatds-os7
# removing old ISO files
rm -rf afatds-7.0.0.0-os*

# change into the os-iso directory becuase genisoimage needs to be called locally
cd os-iso

# update the system identifier for this build
sed -r -i s/0{4}-0{2}-0{2}_[0\ ]{4}/$(date +%F)_$BUILD_NUMBER/ systemID.conf

# create the new custom RHEL image in the parent directory
genisoimage -U -r -v -T -J -joliet-long -V "AFATDS-7.0" -volset "AFATDS-7.0" -A "AFATDS-7.0" -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e images/efiboot.img -no-emul-boot -o ../$ISO_NAME .

# change back to the parent directory
cd ..

# implant an MD5 checksum in the ISO9660 image
implantisomd5 $ISO_NAME

# call utility to modify ISO image to be bootable as a CD-ROM
isohybrid $ISO_NAME

# checkout the system identifier to return it to the git version
git checkout os-iso/systemID.conf
