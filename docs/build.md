### Build instructions
  - Using configure script (Outdated)
  
  ```
  cd source 
  mkdir build
  cd build
  ../configure --with-llvmsrc=$LLVM_HOME \
			 --with-llvmobj=$LLVM_HOME/build \
			 --enable-optimized \
			 --disable-debug-symbols \
			 --disable-docs \
			 --disable-terminfo \
			 --enable-targets=host-only
  CXXFLAGS+=-std=c++11 make -j 16
  ```
  - Using Cmake (Recommended)
  
  ```
  cd source
  mkdir build; cd build;
  cmake .. -DLLVM_ROOT=/home/sdasgup3/Install/llvm-3.5.0.install/  -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Debug -DLLVM_ENABLE_ASSERTIONS=ON
  cmake --build .
  ```

