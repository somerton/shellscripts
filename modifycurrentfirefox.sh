#!/bin/bash
# remove any existing AFATDS Firefox files
rm -rf afatds-firefox.tar.gz
rm -rf afatds-firefox.tar.bz2 
rm -rf firefox/

# extract the original version of firefox
tar -C /home/user/Desktop/folder/firefox -xjvf /CORE/os-iso/addons/AdditionalSecurity/afatds-firefox.tar.bz2 

# copy the configuration files
cp local-settings.js firefox/defaults/pref/
cp mozilla.cfg firefox/
#mkdir firefox/distribution
#rm firefox/policies.json
cp policies.json firefox/distribution/
#rm firefox/defaults/pref/autoconfig.js
#rm firefox/afatds-firefox.cfg

# compress the new AFATDS Firefox 
tar -cjvf afatds-firefox.tar.bz2 firefox

# Remove Old version of AFATDS Firefox 
rm /CORE/os-iso/addons/AdditionalSecurity/afatds-firefox.tar.bz2 

# Move new AFATDS Firefox version to Core
mv /home/user/Desktop/folder/firefox/afatds-firefox.tar.bz2 /CORE/os-iso/addons/AdditionalSecurity/afatds-firefox.tar.bz2

# remove the temp folder "firefox"
rm -rf firefox/
