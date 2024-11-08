#!/bin/bash

WORKSPACEFOLDER=$1
OUTPUTDIR=$WORKSPACEFOLDER/out/qmake
MAKEFILE=$OUTPUTDIR/Makefile

if [ ! -d "$OUTPUTDIR" ]; then
    printf "Creating qmake output directory\n\n"
    mkdir -p $OUTPUTDIR
fi

if [ ! -f "$MAKEFILE" ]; then
    printf "Executing qmake to create Makefile\n\n"
    (cd $OUTPUTDIR && /usr/bin/aarch64-linux-gnu-qmake -spec linux-aarch64-gnu-g++ $WORKSPACEFOLDER/qt-test.pro)
fi

printf "Executing make\n\n"
(cd $OUTPUTDIR && make)
