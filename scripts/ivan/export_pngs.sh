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
target_a=""
target=""


icon=$curdir$icon
usingGui="false"

iconName=$(basename $icon)
iconDir=$(basename `dirname $icon`)
iconPngName=$( echo $iconName | cut -d . -f -1 )".png"

if [ $symlink -eq "0" ]; then # No genero ningun PNG si es un enlace simbolico
	echo "Trabajando en archivo $iconName \n" 
	inkscape --without-gui --export-png=$iconPngName --export-dpi=72 --export-background-opacity=0 --export-width=512 --export-height=512 $icon > /dev/null 

	for size in $sizes; do
		prefix="../${size}x${size}"
		convert -filter Sinc -resize ${size}x${size} $iconPngName "../"${size}x${size}"/"$iconDir"/"$iconPngName
		echo "Converti el icono "$( echo $iconName | cut -d . -f -1 )" a : " $size
	done
	rm $iconPngName
fi

if [ $symlink -eq "1" ]; then # Si es un enlace, creamos los enlaces correspondientes en las distintas carpetas
	echo "El archivo es un enlace, generando enlaces\n==========\n"
	target_a=$(readlink $icon)	# Obtengo el nombre del archivo al que debo apuntar, uso $icon porque necesita el path completo
	target_b=$(basename $target_a) # Luego me quedo solo con el nombre del archivo
	target=$( echo $target_b | cut -d . -f -1)".png" # y finalmente corto el .svg y lo reemplazo por .png
	for size in $sizes; do
		prefix="../${size}x${size}"
		cd $prefix"/"$iconDir"/" # Entro en el directorio correspondiente
		ln -sf $target $iconPngName # Creo link al PNG (si fue creado anteriormente)
		cd "../../scalable/"
		echo " link: $icon \n Icono posta (target_a): $target_a \n target: $target \n iconPngName: $iconPngName\n"
	done
fi


if $usingGui; then
  kdialog --msgbox "Icon converted and added to SVN"
else
  echo "Icon converted\n=============================\n\n"
fi
