#!/bin/bash
#set -e -u

##################################################################################################################
# Author	:	MrGntlmn
# Website	:	https://www.mrgntlmn.tk/
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo
echo "################################################################## "
tput setaf 2
echo " : "
echo "- Setting General Parameters"
tput sgr0
echo "################################################################## "
echo

# Setting of the general parameters.
archisoRequiredVersion="archiso 50.1-1"
buildFolder=$HOME"/AI-WORK"
outFolder=$HOME"/AI-OUT"
archisoVersion=$(sudo pacman -Q archiso)

echo
echo "################################################################## "
tput setaf 2
echo " : "
echo "- Deleting the build folder if one exists"
echo "- Copying the archiso folder to build folder"
tput sgr0
echo "################################################################## "
echo

echo "Deleting the build folder if one exists - takes some time"
[ -d $buildFolder ] && sudo rm -rf $buildFolder
echo
echo "Copying the archiso folder to build work"
echo
mkdir $buildFolder
cp -r ../archiso $buildFolder/archiso


echo
echo "################################################################## "
tput setaf 2
echo " : "
echo "- Building the iso - this can take a while - be patient"
tput sgr0
echo "################################################################## "
echo

[ -d $outFolder ] || mkdir $outFolder
cd $buildFolder/archiso/
sudo mkarchiso -v -w $buildFolder -o $outFolder $buildFolder/archiso/