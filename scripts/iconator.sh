#!/bin/bash

# Iconator v1
# Convierte los iconos .SVG de todas las categorías a PNG, para todos los tamaños definidos en $sizes.
# Uso: ./iconator.sh RUTA
# RUTA es la carpeta raiz del tema de iconos (ej. huayra-fresco-verde/)

root_folder=$1

sizes="256 128 64 48 32 24 22 16 8"
folders="actions apps categories devices emblems mimetypes places status"

# Entramos en directorio raiz
cd $root_folder

files=$(find scalable/ ) # Usamos find para encontrar recursivamente todos los archivos dentro de scalable, para que no tome las carpetas de tamaño. Falta ver si se puede evitar que lea directorios, solo archivos y enlaces.

# Verificamos que existan las carpetas de tamaños y las categorias, si no las creamos (Esto se tiene que poder optimizar!!!)

for size in $sizes; do
	sizeFolder="${size}x${size}"
	if [ -d $sizeFolder ]; then
		echo "La carpeta de tamaño $sizeFolder ya existe, continuando...."
		cd $sizeFolder
		for folder in $folders; do
			if [ -d $folder ]; then
				echo "La carpeta de categoria $folder ya existe dentro de $sizeFolder, continuando...."
			else
				echo "La carpeta de categoria $folder no existe dentro de $sizeFolder, creando..."
				mkdir $folder
			fi
		done
		cd ..
	else
		echo "La carpeta de tamaño $sizeFolder no existe, creando..."
		mkdir $sizeFolder
		cd $sizeFolder
		for folder in $folders; do
			if [ -d $folder ]; then
				echo "La carpeta de categoria $folder ya existe dentro de $sizeFolder, continuando...."
			else
				echo "La carpeta de categoria $folder no existe dentro de $sizeFolder, creando..."
				mkdir $folder
			fi
		done
		cd ..
	fi
done

# Ahora analizamos la lista de archivos
for file in $files; do # Iteramos en cada entrada 
	echo "---------------------------------------------------------------------"
	if [ ! -d $file ]; then # Si la entrada no es un directorio...
		if [ ! -h $file ]; then # ... Si no es un enlace 
			if [ ${file: -4} == ".svg" ]; then # Verificamos que sea un .svg
				echo "El archivo $file es un archivo REAL de tipo SVG, convirtiendo..."
				iconName=$(basename $file)
				iconPngName=$( echo $iconName | cut -d . -f -1 )".png"
				iconCat=$( basename `dirname $file` )
				iconFolder=$( dirname $file )
				# Exportamos el svg original a png 512x512, para tener un png desde donde convertir
				inkscape --without-gui --export-png=$iconPngName --export-dpi=72 --export-background-opacity=0 --export-width=512 --export-height=512 $file > /dev/null 
				for size in $sizes; do
					prefix="${size}x${size}"
					echo "Convirtiendo $iconName a $prefix/$iconCat/$iconPngName..."
					convert -filter Sinc -resize ${size}x${size} $iconPngName $prefix"/"$iconCat"/"$iconPngName
				done
				rm $iconPngName # Borramos el PNG de 512x512
			else
				echo "El archivo $file es un archivo REAL pero NO ES SVG, ignorando..."
			fi

		else # si es un enlace....
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
				cd $prefix"/"$iconCat"/" # Entro en el directorio correspondiente
				ln -sf $target $iconPngName # Creo link al PNG (si fue creado anteriormente)
				cd "../../"
			done	
		fi
	else # si es un directorio, no hacemos nada
		echo "$file es un DIRECTORIO, ignorando..."
	fi
done
