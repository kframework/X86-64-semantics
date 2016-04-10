### Build instructions

```
cd source
./configure --with-llvmsrc=<llvm-3.5.0.src> --with-llvmobj=<llvm-3.5.0.build>
CXXFLAGS+=-std=c++11 make -j 16
```

