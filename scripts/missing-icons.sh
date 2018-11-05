#!/bin/sh

mayo_vs_verde(){

    for i in `ls huayra-mayo`;
    do 
        echo "$i: `[ -f huayra-fresco-verde/scalable/all/$i ]||echo "no "`existe"; 
    done
}

verde_vs_mayo(){

    for i in `ls huayra-fresco-verde`;
    do 
        echo "$i: `[ -f huayra-mayo/scalable/all/$i ]||echo "no "`existe"; 
    done
}

violeta_vs_mayo(){
    for ii in `find huayra -type f`;
    do 
        i=`basename $ii`;
        echo "$i: `[ -f huayra-mayo/scalable/all/$i ]||echo "no "`existe"; 
    done
}

violeta_vs_verde(){
    for ii in `find huayra -type f`;
    do 
        i=`basename $ii`;
        echo "$i: `[ -f huayra-fresco-verde/scalable/all/$i ]||echo "no "`existe"; 
    done
}

[ -z $1 ] && exit 0 || $1;