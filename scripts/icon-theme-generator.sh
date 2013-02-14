#!/bin/bash
# icon-theme-generator.sh
# mauro@debian.org - 10/2012
# WTFPL.

# DEPENDENCIES:
# imagemagick - findutils - bash

BASE="scalable"
DIRS=("8x8" "16x16" "22x22" "24x24" "32x32" "48x48" "64x64" "128x128" "256x256");
SIZES=("2.4" "4.7" "6.4" "6.9" "9.2" "13.6" "18.1" "36.2" "72");

# gen_icons:
# a partir del directorio BASE genera en los diferentes SIZES
# al set de iconos utilizando `imagemagick`.

gen_icons(){
    shift;
    THEME=$1;
    OUTDIR=$2;
    [ -z "$THEME" ] && exit 1;
    [ -z "$OUTDIR" ] && exit 1;

	count=${#SIZES[*]}
	index=0;
	dir=''
	size=''
    while [ "$index" -lt "$count" ];
    do
		dir=${DIRS[$index]}
		size=${SIZES[$index]}
		size_inkscape=`echo ${DIRS[$index]}|cut -d 'x' -f1`;

        [ -d "$OUTDIR/$THEME/$dir/" ] || mkdir -p $OUTDIR/$THEME/${dir};
        for ORIG in `find "$THEME/${BASE}" -type f`;
        do
            ICON=`basename $ORIG|cut -d '.' -f1`;
            DESTDIR=`dirname $ORIG|sed -s "s,$THEME/scalable/,,g"`
            [ -d "$OUTDIR/$THEME/$dir/$DESTDIR" ] || mkdir -p \
                "$OUTDIR/$THEME/$dir/$DESTDIR";
	        echo "CMD: inkscape -z --export-png=$OUTDIR/$THEME/$dir/$DESTDIR/$ICON.png --export-width=$size_inkscape --export-height=$size_inkscape $ORIG"


          # OLD:imagemagik convert -verbose -background transparent -density $size $ORIG \
          #          $OUTDIR/$THEME/$dir/$DESTDIR/$ICON.png
          inkscape -z --export-png=$OUTDIR/$THEME/$dir/$DESTDIR/$ICON.png --export-width=$size_inkscape --export-height=$size_inkscape $ORIG

        done
		let "index++"
    done
	
	
	cp $OUTDIR/$THEME/16x16/all/start-here.png $OUTDIR/$THEME/16x16/all/start-here-symbolic.png 
	cp $OUTDIR/$THEME/16x16/all/avatar-default.png $OUTDIR/$THEME/16x16/all/avatar-default-symbolic.png 
	cp $OUTDIR/$THEME/48x48/all/avatar-default.png $OUTDIR/$THEME/48x48/all/avatar-default-symbolic.png 
    
    cp -a $THEME/$BASE $OUTDIR/$THEME/$BASE
}


# gen_dhlinks:
# busco los archivos que se encuentren en la lista de directorios que esten
# en OUTDIR y genero al archivo `debian/links`.

gen_dhlinks(){
    shift;
    THEME=$1;
    OUTDIR=$2;
    [ -z "$THEME" ] && exit 1;
    [ -z "$OUTDIR" ] && exit 1;

    ICONPATH="usr/share/icons/$THEME/"
    for s in `echo $SIZES $BASE`;
    do
        for ORIG in `find "$OUTDIR/$THEME/${s}" -type f`;
        do
            ICON=`basename $ORIG|cut -d '.' -f1`;
            ORIGFILE=`echo $ORIG|sed -s "s,$OUTDIR/$THEME/,,g"`;
            DIRICON=`dirname $ORIG|sed -s "s,$OUTDIR/$THEME/,,g"`;
            EXT=`echo $ORIG|sed -e 's,$OUTDIR/$THEME,,g'|cut -d '.' -f2`;

            echo $ICONPATH$ORIGFILE  $ICONPATH$DIRICON/$ICON-symbolic.$EXT;
        done
    done
}

# gen_indextheme:
# en base al directorio donde estamos parados, deducimos al nombre del theme
# y luego generamos al index.theme con los directorios que se encuentren aqui.

gen_indextheme(){
    shift;
    THEMEDIR=$1;
    OUTDIR=$2;
    [ -z "$THEMEDIR" ] && exit 1;
    [ -z "$OUTDIR" ] && exit 1;

    DESTDIR=$OUTDIR/$THEMEDIR

    if [ -f "$THEMEDIR/index.theme"  ];
    then
        cp $THEMEDIR/index.theme $DESTDIR/index.theme;
    else
        TFL=`echo ${THEMEDIR:0:1}|tr [:lower:] [:upper:]`;
        THEMENAME=`echo $TFL${THEMEDIR:1}|sed -s 's,\-, ,g'`;

        _DIRLIST=`find $DESTDIR -type d|sed -s "s,$DESTDIR\/,,g"|grep -v $DESTDIR|grep "\/"|sed -s 's,\.\/,,g'|tr '\n' ','`;

        DIRLIST=$_DIRLIST;

        INDEXTHEME="[Icon Theme]\n";
        INDEXTHEME="${INDEXTHEME}Name=${THEMENAME}\n";
        INDEXTHEME="${INDEXTHEME}Comment=${THEMENAME} icon theme\n"
        INDEXTHEME="${INDEXTHEME}Directories=$DIRLIST\n"
        INDEXTHEME="${INDEXTHEME}"

    # imprimo al 'header'

        echo -e $INDEXTHEME

    # genero las secciones de los png

        for d in `find $DESTDIR -type d|grep -v 'scalable'|sed -s 's,\.\/,,g'`;
        do
            _dir=`echo $d|sed -s "s,$DESTDIR\/,,g"`;
            _section=`echo $_dir|sed -s "s,$DESTDIR\/,,g"`;
            _size=`echo $_dir|cut -d 'x' -f1`;
            _context=`echo $_dir|cut -d '/' -f2`;
          if [ "$DESTDIR" != "$_section" ];then
            if [ "$_context" != "$_dir" ];then
                echo "[$_section]";
                echo "Size=$_size";
                echo "Context=$_context";
                echo "Type=Threshold";
                echo;
            fi
          fi
        done

    # genero las secciones de los svg

        for dir in `find $DESTDIR/scalable -type d|sed -s 's,$DESTDIR\/',,g|sed -s 's,\.\/,,g'|grep '\/'`;
        do
            _section=`echo $dir|sed -s "s,$DESTDIR\/,,g"`;
            _context=`echo $_section|cut -d '/' -f2`;

            if [ "$_context" != "$_section" ];then
                echo "[$_section]";
                echo "MinSize=1";
                echo "Size=256";
                echo "MaxSize=256";
                echo "Context=$_context";
                echo "Type=Scalable";
                echo;
            fi

        done
   fi
}

# build:
# espero un nombre de theme/directorio-con-iconos-en-svg +
# directorio-destino y llamo a gen_icons y gen_indextheme.

build(){
    shift;
    THEME=$1;
    OUTDIR=$2;

    [ -z "$THEME" ] && exit 1;
    [ -z "$OUTDIR" ] && exit 1;
    [ -d "$OUTDIR" ] && mkdir -p "$OUTDIR";

    # hack to allow the execution of the script
    # from the command line because of shifting
    # the first parameter always. and because
    # bash works in mysterious ways.
    # lol

    gen_icons lol "$THEME" "$OUTDIR";
    gen_indextheme lol "$THEME" "$OUTDIR" > "$OUTDIR/$THEME/index.theme";

    exit 0;
}

# clean:
# espero un nombre de theme/directorio-con-iconos-en-svg +
# directorio-destino y borro a todos los png que esten ahi.

clean(){
    shift;
    OUTDIR=$1;

    [ -z "$OUTDIR" ] && exit 1;
    [ -d "$OUTDIR" ] && rm -fr "$OUTDIR";

    exit 0;
}

# como leer:
# no tengo $1 y salgo o 'llamo' a $1 con $@ como parametros (ver shift).
#
# $1 = accion
# $@ = params

[ -z $1 ] && exit 0 || $1 $@;
