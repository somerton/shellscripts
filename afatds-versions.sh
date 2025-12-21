#!/bin/sh
# Script to show the current status of all AFATDS installs

# OS
OS_VERSION=$(grep -Pos '(\d{4}-\d{2}-\d{2}_\d{1,4})' /etc/systemID.conf)
# geoserver
GEO_VERSION=$(grep -Pos 'build=(\d{4}-\d{2}-\d{2}_\d{1,4})' /opt/geoserver/version.txt  | sed "s|build=||" )
# Dev Tools
DEV_VERSION=$(grep -Pos '(\d{4}-\d{2}-\d{2}_\d{1,4})' /opt/afatds-dev-tools/dev-tools-install.sh )
# AFATDS RPM
RPM_VERSION=$(rpm -qa | grep afatds)
# Training Content RPM
TC_VERSION=$(rpm -qa | grep training)
# AMC
AMC_VERSION=$(grep -Pos 'build=(\d+)' /opt/AMC/version.txt  | sed "s|build=||" )

# output the version of redhat
cat /etc/redhat-release

# output the versions for the AFATDS RPM, AFATDS OS, and the AFATDS Dev Tools
printf "AFATDS RPM: $RPM_VERSION\nTraining RPM: $TC_VERSION\nAFATDS AMC: $AMC_VERSION\nAFATDS OS: $OS_VERSION\nGeoServer: $GEO_VERSION\nAFATDS Dev Tools: $DEV_VERSION\n"

# loop over the commands for the installed software and output if the exist
for command in atom bcompare geckodriver google-chrome docker eclipse gcc git mattermost-desktop node pgadmin4 postman pycharm python3 code wireshark
do
    printf " - {";
    if [ -x "$(command -v $command)" ]; then printf Y; else printf N; fi
    printf "} $command\n";
done
