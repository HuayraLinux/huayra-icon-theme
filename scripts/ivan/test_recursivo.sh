#!/bin/bash

# Busca recursivamente los archivos de iconos svg y los convierte a los distintos tamaños.
# Si el archivo es un enlace, crea los enlaces correspondientes en las carpetas de los distintos tamaños
# $1 Ruta a escanear

search_path=$1

ls -A -R $search_path | while read line; do
	file=$search_path$line
	if [ -f "$file" ]; then		# Si la linea es un archivo
		if [ -h "$file" ]; then # Si el archivo es un enlace
			echo "$file Esto es un enlace simbolico!"
			symlink="1"
			sh export_pngs.sh $file $symlink
		else					# El archivo es un archivo real, así que convertimos normalmente
			echo "$file es un archivo posta!"
			symlink="0"
			sh export_pngs.sh $file $symlink
		fi
	else
		echo "$file Esto no es un fichero!"
		echo "============================"
	fi
done

echo "...terminado."
