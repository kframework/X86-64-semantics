In mcsema, the recovred IR has the following format:

For the source code,

```
int main(){ 
  int z; 
  z = foo(10,20); 
  return z;
} 

int foo(int a, int b) { 
  int temp1; 
  temp1 = a+b; 
  return temp3;
}
```

The mcsema recovered IR is:

```
int main(struct regcntx r){ 
  r.ESP = r.ESP-2; //Local Allocation
  
  r.ESP[1] = 20; //Outgoing argument 
  r.ESP[0] = 10; 
  
  int llvm_tmp_3 = rewritten_foo(r); 
  return llvm_tmp3;
}

int rewritten_foo(struct regcntx r) {
  int* llvm_EBP = r.ESP; //Local Frame Pointer
  llvm_ESP = llvm_ESP-10; //Local Allocation

  int tmpIn1 = llvm_EBP[0]; //Incoming Arg 
  int tmpIn2; = llvm_EBP[1];

  int llvm_tmp2 = tmpIn1+tmpIn2; 
  llvm_ESP[2] = llvm_tmp2;

  return llvm_tmp2;
}

```
