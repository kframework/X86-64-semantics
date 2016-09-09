#!/bin/sh

DOTFILES=$(ls *.dot)
PNGFILES=$(echo ${DOTFILES} | sed -e 's/dot/png/g')

for file in ${DOTFILES}; do
  bname=$(basename ${file});
  fname=$(echo $bname | sed -e 's/\.[^.]*$//g')
  dot -Tpng ${fname}.dot -o ${fname}.png ;
done

convert ${PNGFILES} -append cfg.png
rm -rf ${PNGFILES}
