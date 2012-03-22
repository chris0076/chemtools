#!/bin/bash

WINPYDIR="c:/Python27"
WINPYTHON="wine $WINPYDIR/python.exe"
WINPWD=`winepath -w \`pwd\``
PYINSTALLER="/home/chris/Desktop/pyinstaller"
PROGRAM=${PWD##*/}

$WINPYTHON $PYINSTALLER/pyinstaller.py --onefile $PROGRAM.py
python $PYINSTALLER/pyinstaller.py --onefile $PROGRAM.py

cp dist/$PROGRAM.exe ../bin/$PROGRAM.exe
cp dist/$PROGRAM ../bin/$PROGRAM

rm warn$PROGRAM.txt
rm logdict*.log
rm $PROGRAM.spec

rm -rf build
rm -rf dist

