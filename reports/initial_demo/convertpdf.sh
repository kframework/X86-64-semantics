#!/bin/sh
FILENAME=$1
convert -density 600 ${FILENAME}.pdf ${FILENAME}.png

SORT_LIST=$(ls -v ${FILENAME}-*.png )
convert ${SORT_LIST} -append  ${FILENAME}.png

rm  ${FILENAME}-*.png
