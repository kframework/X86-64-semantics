### Build instructions
  - Using configure script (Outdated)
  
  ```
  cd source
  ./configure --with-llvmsrc=<llvm-3.5.0.src> --with-llvmobj=<llvm-3.5.0.build>
  CXXFLAGS+=-std=c++11 make -j 16
  ```
  - Using Cmake (Resommended)
  
  ```
  cmake .. -DLLVM_ROOT=/home/sdasgup3/Install/llvm-3.5.0.install/  -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Debug -DLLVM_ENABLE_ASSERTIONS=ON
  ```

