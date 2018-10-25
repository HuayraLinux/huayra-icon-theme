#!/bin/bash

# Iconator v1
# Convierte los iconos .SVG de todas las categorías a PNG, para todos los tamaños definidos en $sizes.
# Uso: ./iconator.sh RUTA
# RUTA es la carpeta raiz del tema de iconos (ej. huayra-fresco-verde/)

root_folder=$1

if [ ! -d "$1" ];then
    echo "$1 no es un directorio valido"
    exit 1
fi

sizes="256 128 64 48 32 24 22 16 8"
folders="actions apps categories devices emblems mimetypes places status"

# Entramos en directorio raiz
cd $root_folder

files=$(find scalable/ -type f) # Usamos find para encontrar recursivamente todos los archivos dentro de scalable.
links=$(find scalable/ -type l) # Usamos find para encontrar recursivamente todos los symlinks.

# Verificamos que existan las carpetas de tamaños y las categorias, si no las creamos (Esto se tiene que poder optimizar!!!)

for size in $sizes; do
	sizeFolder="${size}x${size}"
	if [ -d $sizeFolder ]; then
		echo "La carpeta de tamaño $sizeFolder ya existe, continuando...."
		for folder in $folders; do
			if [ -d $folder ]; then
				echo "La carpeta de categoria $folder ya existe dentro de $sizeFolder, continuando...."
			else
				echo "La carpeta de categoria $folder no existe dentro de $sizeFolder, creando..."
				mkdir -p $sizeFolder/$folder
			fi
		done
	else
		echo "La carpeta de tamaño $sizeFolder no existe, creando..."
		mkdir $sizeFolder
		for folder in $folders; do
			if [ -d $folder ]; then
				echo "La carpeta de categoria $folder ya existe dentro de $sizeFolder, continuando...."
			else
				echo "La carpeta de categoria $folder no existe dentro de $sizeFolder, creando..."
				mkdir -p $sizeFolder/$folder
			fi
		done
	fi
done

## Recorremos archivos
for file in $files; do # Iteramos en cada entrada 
	if [ ${file: -4} == ".svg" ]; then # Verificamos que sea un .svg
		echo "El archivo $file es un archivo REAL de tipo SVG, convirtiendo..."
		iconName=$(basename $file)
		iconPngName=$( echo $iconName | cut -d . -f -1 )".png"
		iconCat=$( basename `dirname $file` )
		iconFolder=$( dirname $file )
		# Exportamos el svg original a png 512x512, para tener un png desde donde convertir
		inkscape --without-gui --export-png=$iconPngName --export-dpi=72 --export-background-opacity=0 --export-width=512 --export-height=512 $file 
		pids=''
    results=''
    for size in $sizes; do
			prefix="${size}x${size}"
			echo "[$root_folder] Convirtiendo $iconPngName a $prefix/$iconCat/$iconPngName..."
			mkdir -p $prefix"/"$iconCat"/"
			(convert -filter Sinc -resize ${size}x${size} $iconPngName $prefix"/"$iconCat"/"$iconPngName) & pid=$!
      pids="$pids $pid"
		done
    echo "Procesos: $pids"
    for pid in $pids; do
      wait $pid
    done
    echo "Fin de todos los procesos $pids"
    echo "Limpiando PNG 512 (termporal)"
		rm $iconPngName # Borramos el PNG de 512x512
	else
		echo "El archivo $file es un archivo REAL pero NO ES SVG, ignorando..."
	fi
done

#Recorremos enlaces
for file in $links; do
	original=$(readlink $file)
	echo "El archivo $file es un ENLACE SIMBOLICO a $original..."		
	iconName=$(basename $file)
	iconPngName=$( echo $iconName | cut -d . -f -1 )".png"
	iconCat=$( basename `dirname $file` )
	iconFolder=$( dirname $file )
	#echo "iconName: $iconName --- iconPngName: $iconPngName --- iconCat: $iconCat --- iconFolder: $iconFolder"
	target=$( echo $original | cut -d . -f -1)".png" # y finalmente corto el .svg y lo reemplazo por .png
	for size in $sizes; do
		prefix="${size}x${size}"
		echo "Enlazando $iconPngName a $target en $prefix/$iconCat..."
		#creamos el direcotrio de la categoria si no existe
		mkdir -p $prefix"/"$iconCat"/" 
		cd $prefix"/"$iconCat"/" # Entro en el directorio correspondiente
		ln -sf $target $iconPngName # Creo link al PNG (si fue creado anteriormente)
		cd "../../"
	done	
done

