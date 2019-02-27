#!/bin/bash

FILE=$1

#sed -i -e "s/\(Imm[0-9]*\):Imm/\1:MInt/g" $FILE
#sed -i -e "s/handleImmediateWithSignExtend(\(Imm[0-9]*\), [0-9]*, [0-9]*)/\1/g" $FILE
sed -i -e "s/signExtend(\(Imm[0-9]*\), \([0-9]*\), \([0-9]*\))/signExtend(\1, \3)/g" $FILE
