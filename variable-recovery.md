### variable recovery algorithm 
Following are the steps:

1. Deconstruct the monolithic stack that mcsema uses into local stack for each procedure.
2. For each procedure, convert the accesses on that monolithic stack into accesses on the local stack.
3. For each procedure, identify the abstract locations on its local stack corresponding to recovered variable.
4. Promote the abstract locations into variables. 


### Step 1-2
Consider the source code,

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
  int tmpIn2 = llvm_EBP[1];

  int llvm_tmp2 = tmpIn1+tmpIn2; 
  llvm_ESP[2] = llvm_tmp2;

  return llvm_tmp2;
}

```

The first step is localize the monolithic array
to each procedure.

```
int main(struct regcntx r){ 
  int LOCAL_FRAME[MAX_MAIN];
  
  LOCAL_FRAME[0] = 20; //Outgoing argument 
  LOCAL_FRAME[1] = 10; //Outgoing argument 

  int temp1 = LOCAL_FRAME[0];
  int temp2 = LOCAL_FRAME[1];
  
  int temp3 = rewritten_foo(temp1, temp2); 
  return temp3;
}

int rewritten_foo(int arg1, int arg2) {
  int LOCAL_FRAME[MAX_FOO];


  int temp = tmpIn1+tmpIn2; 
  LOCAL_FRAME[0] = temp;

  return temp;
}

```

### Challenges
![image](Figs/2.png)

### Step 3-4
### Symbol promotion

![image](Figs/3.png)
