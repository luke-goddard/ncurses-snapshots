#!/bin/sh
#
# MKhashsize.sh --- generate size include for hash functions
#
echo "/*"
echo " * hashsize.h -- hash and token table constants"
echo " */"

TABSIZE=`grep -v '^[ #]' Caps.filtered | grep -v "^$" | grep -v "^capalias"| grep -v "^infoalias" | wc -l`

echo ""
echo "#define CAPTABSIZE	${TABSIZE}"
echo "#define HASHTABSIZE	(${TABSIZE} * 2)"
