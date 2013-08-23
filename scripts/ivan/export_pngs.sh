#!/bin/bash

sizes="256 128 64 48 32 24 22 16 8"
folders="actions apps devices filesystems mimetypes"
smallexport="yes"
date=`date '+%F-%H-%M'`
curdir=$(pwd)'/'
icon=$1
usingGui="true"
max_small="48"
symlink=$2 #flag para ver si es symlink 0 no, 1 si.

#if [ "$icon" == "" ]; then
#  icon=$(kdialog --getopenfilename $curdir)
#	echo $icon
#else
  icon=$curdir$icon
  usingGui="false"
#	echo $icon
#fi

if [ $symlink -eq "1" ]; then
	echo "Es un enlace simbolico\n"
elif [ $symlink -eq "0" ]; then
	echo "Es un archivo posta\n"
fi

iconName=$(basename $icon)
iconDir=$(basename `dirname $icon`)
iconPngName=$( echo $iconName | cut -d . -f -1 )".png"

inkscape --without-gui --export-png=$iconPngName --export-dpi=72 --export-background-opacity=0 --export-width=512 --export-height=512 $icon > /dev/null

for size in $sizes; do
	prefix="../${size}x${size}"
	if [ $symlink -eq "0" ]; then #Si no es un enlace, generamos todo
		# ====== shall we use a small icon if available?
		if [ $size -le $max_small ]; then
	    smallicon="$iconDir/small/${size}x${size}/$iconName"
			if [ -e $smallicon ]; then
				inkscape --without-gui --export-png="../"${size}x${size}"/"$iconDir"/"$iconPngName --export-dpi=72 --export-background-opacity=0 --export-width=$size --export-height=$size $smallicon > /dev/null
			else
				convert -filter Sinc -resize ${size}x${size} $iconPngName "../"${size}x${size}"/"$iconDir"/"$iconPngName
			fi
		else
			convert -filter Sinc -resize ${size}x${size} $iconPngName "../"${size}x${size}"/"$iconDir"/"$iconPngName
		fi
		echo "Converted the icon named "$( echo $iconName | cut -d . -f -1 )" to size: " $size
	elif [ $symlink -eq "1" ]; then # Si es un enlace, creamos los enlaces correspondientes en las distintas carpetas
		echo "El archivo es un enlace, generando enlaces en " $size "\n"
#		ln -sf 
	fi
done

rm $iconPngName


if $usingGui; then
  kdialog --msgbox "Icon converted and added to SVN"
else
  echo "Icon converted"
fi
