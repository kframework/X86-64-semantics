rm -f *.cfg  *.o *.exe  *.bc *.lifted  *.log *_opt.ll  mapping.txt out 
ls *.ll | grep -v clang | grep -v gcc | xargs rm -rf 
ls *.objdump | grep -v clang | grep -v gcc | xargs rm -rf 
