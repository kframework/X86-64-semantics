#!/bin/sh

PROG=$1
COMP=$2

DOTFILES=$(ls *.dot)
PNGFILES=$(echo ${DOTFILES} | sed -e 's/dot/png/g')

for file in ${DOTFILES}; do
  bname=$(basename ${file});
  fname=$(echo $bname | sed -e 's/\.[^.]*$//g')
  cp ${fname}.dot ${fname}.${COMP}.gold
  dot -Tpng ${fname}.dot -o ${fname}.png ;
done

convert ${PNGFILES} -append cfg.${COMP}.png
rm -rf ${PNGFILES}

mv log $1.$2.gold
mv mapping.txt $1.mapping.$2.txt
mv $1.objdump $1.$2.objdump
mv $1.ll $1.$2.ll
mv $1_opt.ll $1_opt.$2.ll
