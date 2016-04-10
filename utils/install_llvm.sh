#!/bin/bash

# USAGE: export LLVM_HOME=llvm && $0 [VERSION]

if [ "test$LLVM_HOME" == "test" ]; then
	echo "Please set the LLVM_HOME env!"
	exit 1
fi
set -x
VERSION=3.5
[ $# -ge 1 ] && VERSION=$1
case $VERSION in
        "3.1")
                ;;
        "3.5")
                wget http://llvm.org/releases/3.5.0/cfe-3.5.0.src.tar.xz
                wget http://llvm.org/releases/3.5.0/llvm-3.5.0.src.tar.xz
                wget http://llvm.org/releases/3.5.0/compiler-rt-3.5.0.src.tar.xz
                tar -xvf llvm-3.5.0.src.tar.xz && rm -f llvm-3.5.0.src.tar.xz
                tar -xvf cfe-3.5.0.src.tar.xz && rm -f cfe-3.5.0.src.tar.xz
                tar -xvf compiler-rt-3.5.0.src.tar.xz && rm -f compiler-rt-3.5.0.src.tar.xz
                mv llvm-3.5.0.src $LLVM_HOME
                mv cfe-3.5.0.src $LLVM_HOME/tools/clang
                mv compiler-rt-3.5.0.src $LLVM_HOME/projects/compiler-rt
				;;
esac

mkdir -p $LLVM_HOME/build
cd $LLVM_HOME/build
../configure --enable-optimized \
			 --disable-debug-symbols \
			 --disable-docs \
			 --disable-terminfo \
			 --disable-bindings \
			 --enable-targets=host-only \
			 --enable-shared
make -j2
make install

set +x
