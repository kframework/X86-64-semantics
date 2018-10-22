require "x86-configuration.k"
require "x86-mint-wrapper.k"
require "x86-abstract-syntax.k"

module X86-MEMORY-SORT
  syntax MemLoadValue
endmodule

module X86-MEMORY-SYNTAX
  imports X86-MEMORY-SORT
  imports X86-ASBTRACT-SORTS
  imports MINT-WRAPPER-SORT
  imports MINT
  imports INT

  syntax Int ::= "StackSpaceForEnvs"

  /*@
    Load Return Value Sort
  */
  syntax MemLoadValue ::= memLoadValue ( MInt )

  syntax Bool ::= isAddressAlignedAt(
                    /* alignment requirement in bits */ Int,
                    /* Address */ MInt) [function]

  /*@
    Allocate memory: Used for allocating stack and envionment memory
    If N is the number of stack slots allocated, the upper 64 slots are used for 
    environment memory.
  */
  syntax KItem ::= allocateStackMemory(
      /* Number of elements */ Int,
      /* Alignment in bits */ Int)

  /*@
    Allocate Bss  memory and save allocated pointer
  */
  syntax KItem ::= allocateBssMemory(
      /* Number of elements */ Int,
      /* Alignment in bits */ Int)

  /*@
    Allocate Data  memory and save allocated pointer
  */
  syntax KItem ::= allocateDataMemory(
      /* Number of elements */ Int,
      /* Alignment in bits */ Int)

  /*@
    Allocate memory: Used for allocating Read only memory
  */
  syntax KItem ::= allocateROMemory(
      /* Number of elements */ Int,
      /* Alignment in bits */ Int)

  /*@
    Allocate memory: Used for allocating memory for stdout file IO
  */
  syntax KItem ::= allocateSTDOUTMemory(
      /* Number of elements */ Int,
      /* Alignment in bits */ Int)

  /*@
    Allocate memory: Used for allocating local memory
  */
  syntax KItem ::= allocateLocalMemory(
      /* Number of elements */ Int,
      /* Alignment in bits */ Int)

  /*@
    Free memory allocated for stack.
  */
  //syntax KItem ::= "freeMemory" [token]
  syntax KItem ::= freeMemory(PointerVal)

  /*@
    Load memory at Address represented by MInt for Int bits
  */
  syntax KItem ::=  loadFromMemory(
                      /* Address */ MInt,
                      /* Load size in bits */ Int)

  /*@
    Sorts to be stored in memory.
  */  
  syntax StoreVal ::= MInt | MIntMap

  /*@
    Store 'Val' in 'Nbits' of memory starting at address 'AddrMI'
  */
  syntax KItem ::=  storeToMemory(
                      /* Data */ StoreVal,
                      /* Address */ MInt,
                      /* Store size in bits*/ Int)

endmodule


module X86-MEMORY
  //imports COMMON-MEMORY-OPAQUE-SYNTAX
  imports COMMON-MEMORY-SYNTAX
  imports X86-CONFIGURATION


  rule StackSpaceForEnvs => 8 [macro]

  /// Decomposition of a dynamic value into bytes
  syntax ByteVal ::= byte(/* position, 0 being the LSB */ Int, MInt)

  // AbstractValue sort defintion for x86 semantics
  syntax AbstractValue ::= ByteVal

  //rule getDefaultAbstractValue() => byte(0, undefMInt8)

  // x86 memory helper API implementation for allocation and store.


  /*@
    Create a MemValue out of a storeVal of size Nbits
  */
  syntax MemValue ::= toMemValue(StoreVal, Int)  [function]
  rule toMemValue(V:StoreVal, N:Int) => mList(N /Int 8, 8, toMemData(V, N, .MemData))

  /*@
    Create a MemData out of a storeVal of size Nbits
  */
  syntax MemData ::= toMemData(StoreVal, Int, MemData)  [function, klabel(toMemDataMInt)]

  /*@
    MInt -> MemData
  */
  rule toMemData(V:MInt, N:Int, Bytes:MemData) => toMemDataFromMInt(V, N, Bytes)
    requires bitwidthMInt(V) ==Int N 

  syntax MemData ::= toMemDataFromMInt(MInt, Int, MemData) [function]
  rule toMemDataFromMInt(MI:MInt, N:Int, Bytes:MemData) => appendMemData(Bytes, toBytes(N, MI))

  /*@
    MIntMap -> MemData
  */
  rule toMemData(mimap(M):MIntMap, N:Int, Bytes:MemData) => toMemDataFromMIntMap(M, 0, size(M), Bytes)
    requires bitwidthMInt({M[0]}:>MInt) *Int size(M) ==Int N 

  syntax MemData ::= toMemDataFromMIntMap(Map, Int, Int, MemData) [function]

  rule toMemDataFromMIntMap(_:Map, N:Int, N, Bytes:MemData) => Bytes
  rule toMemDataFromMIntMap(M:Map, I:Int, N:Int, Bytes:MemData) =>
        toMemDataFromMIntMap(M, I +Int 1, N, toMemData({M[I]}:>MInt, bitwidthMInt({M[I]}:>MInt), Bytes))
    requires I <Int N

  /*@
    toBytes(N:Int, MI:MInt)
    Convert MI to 
      List{ byte(0, MI)  byte(1, MI) ... byte(M-1, MI) } where M = N / 8
  */  
  syntax MemData ::= toBytes(Int, MInt) [function]
  rule toBytes(N:Int, MI:MInt) => toBytesAux(N /Int 8, MI, .MemData)

  syntax MemData ::= toBytesAux(Int, MInt, /* bytes accumulator */ MemData) [function]
  rule toBytesAux(0 , _:MInt, Bytes:MemData) => Bytes
  rule toBytesAux(N:Int, MI:MInt, Bytes:MemData)
       =>
       toBytesAux(N -Int 1, MI, byte(N -Int 1, MI) Bytes)
    requires N >Int 0


  // x86 memory helper API implementation for load.
  syntax KItem ::= fromMemValue(K, Int) [strict(1)]
  rule fromMemValue(mList(_:Int, 8, Bytes:MemData), N:Int) => 
   memLoadValue ( fromBytes(takeMemData(N /Int 8, Bytes)) )


  syntax MInt ::= fromBytes(MemData) [function]
  rule fromBytes(byte(I:Int, MI:MInt) Rest) =>  extractMask(MI, 8, I *Int 8)
    requires Rest ==K .MemData
  rule fromBytes(byte(I:Int, MI:MInt) Rest:MemData) =>  concatenateMInt(fromBytes(Rest), extractMask(MI, 8, I *Int 8))
    requires Rest =/=K .MemData

  // x86 memory API implementation

  /*@
    Allocate stack memory: Used for allocating stack memory and saving the stack base address
    N ::= Environment Memory (8 byte fake return address + upper StackSpaceForEnvs slots) + 
    Stack Memory (Rest)

      *    *
   A: *----* <-- rsp, rbp
      *    *                |
 A+8: *    * <-- argv       |
      *    *                v (High Adress)
  */
  rule <k> allocateStackMemory(N:Int, A:Int) =>  
    saveAllocPointer(allocateLocalMemory(N, A)) ... </k>
      //<regstate> RSMap => updateMap(RSMap,
      //                    ("RSP"  |->  mi(addrSize, N -Int StackSpaceForEnvs)) 
      //                    ("RBP"  |->  mi(addrSize, N -Int StackSpaceForEnvs)) ) 
      //</regstate>
      <argv> _ => mi(addrSize, N -Int StackSpaceForEnvs +Int 8) </argv>
      <stackbase> stackBaseInfo(_:K , _:K => mi(addrSize, N -Int StackSpaceForEnvs))  </stackbase>
      /*
      <regstate> RSMap </regstate>
      <argv> _ => mi(addrSize, 
          uvalueMInt({RSMap["RSP"]}:>MInt) +Int StackSpaceForEnvs  // N
          -Int StackSpaceForEnvs +Int 8) </argv>
      <stackbase> stackBaseInfo(_:K , _:K => mi(addrSize, 
            uvalueMInt({RSMap["RSP"]}:>MInt) +Int StackSpaceForEnvs // N 
            -Int StackSpaceForEnvs))  
      </stackbase>
	*/

  /*@
    Save the allocation id for later reads/writes/free.
  */
  syntax KItem ::=  saveAllocPointer(K) [strict(1)]
  rule <k> saveAllocPointer(L:MemLoc) => .
  ... </k>
    <stackbase> stackBaseInfo(_:K => L, BP:MInt)  </stackbase>
    <regstate> RSMap => updateMap(RSMap,
                        ("RSP"  |->  ptr(L, BP)) 
                        ("RBP"  |->  ptr(L, BP)) ) 
    </regstate>

  /*@
    Allocate Bss  memory and save allocated pointer
  */
  rule <k> allocateBssMemory(N:Int, A:Int) =>  
    saveBssPointer(allocateLocalMemory(N, A)) ... </k>
      <bssbase> 
        bssBaseInfo(_:K, _:K => mi(addrSize, 0), _:K => mi(addrSize, 0))  
      </bssbase>

  syntax KItem ::=  saveBssPointer(K) [strict(1)]
  rule <k> saveBssPointer(L:MemLoc) => .
  ... </k>
    <bssbase> bssBaseInfo(_:K => L, _:K, _:K)  </bssbase>

  /*@
    Allocate Data  memory and save allocated pointer
  */
  rule <k> allocateDataMemory(N:Int, A:Int) =>  
    saveDataPointer(allocateLocalMemory(N, A)) ... </k>
      <database> 
        dataBaseInfo(_:K, _:K => mi(addrSize, 0), _:K => mi(addrSize, 0))  
      </database>

  syntax KItem ::=  saveDataPointer(K) [strict(1)]
  rule <k> saveDataPointer(L:MemLoc) => .
  ... </k>
    <database> dataBaseInfo(_:K => L, _:K, _:K)  </database>

  /*@
    Allocate Read Only memory and save allocated pointer
  */
  rule <k> allocateROMemory(N:Int, A:Int) =>  
    saveROPointer(allocateLocalMemory(N, A)) ... </k>
      <robase> 
        roBaseInfo(_:K, _:K => mi(addrSize, 0), _:K => mi(addrSize, 0))  
      </robase>

  syntax KItem ::=  saveROPointer(K) [strict(1)]
  rule <k> saveROPointer(L:MemLoc) => .
  ... </k>
    <robase> roBaseInfo(_:K => L, _:K, _:K)  </robase>

  /*@
    Allocate memory for stdout file pointer
  */
  rule <k> allocateSTDOUTMemory(N:Int, A:Int) =>  
    saveSTDOUTPointer(allocateLocalMemory(N, A)) ... </k>

  syntax KItem ::=  saveSTDOUTPointer(K) [strict(1)]
  rule <k> saveSTDOUTPointer(L:MemLoc) => 
    storeToMemory(mi(32, #stdout), ptr(L, mi(64,1)), 32)
  ... </k>
    <functargets> FMap:Map => FMap[stdout <- ptr(L, mi(64,1))] </functargets>

  /*@
    Allocate memory: Used for allocating local memory
    `makeUndefMIntMap(N)` creates N 1 byte undefMInt and return a Map storing them
    in byte granularity, which are then store in memory.
  */
  rule <k> allocateLocalMemory(N:Int, A:Int) => 
          //mAlloc( N, 8, A)
            //toMemValue(makeUndefMIntMap(N), N *Int 8),
     mAlloc(
            toMemValue(makeUndefMIntMap(N), N *Int 8),
            A)
  ... </k>

  rule <k> freeMemory(PV:PointerVal) => mClear(getMemLoc(PV)) ... </k>
    //<stackbase> stackBaseInfo( Loc:MemLoc, _:K) </stackbase>

  /*@
    Load memory Nbits:Int bits from Address represented AddrMI:MInt
  */
  rule <k>
    //loadFromMemory(AddrMI:MInt, Nbits:Int) =>
    loadFromMemory(ptr(L:MemLoc, AddrMI:MInt), Nbits:Int) =>
      fromMemValue(mRead(L, uvalueMInt(AddrMI) *Int 8, Nbits /Int 8, 8), Nbits)
  ... </k>
    //<stackbase> stackBaseInfo( L:MemLoc, _:K) </stackbase>
      requires Nbits %Int 8 ==Int 0

  /*@
    Store 'Val' in 'Nbits' of memory starting at address 'AddrMI'
  */
  rule <k>
    //storeToMemory(Val:StoreVal, AddrMI:MInt, Nbits:Int) => mWrite(L, uvalueMInt(AddrMI) *Int 8, toMemValue(Val, Nbits))
    storeToMemory(Val:StoreVal, ptr(L:MemLoc, AddrMI:MInt), Nbits:Int) => mWrite(L, uvalueMInt(AddrMI) *Int 8, toMemValue(Val, Nbits))
  ... </k>
    //<stackbase> stackBaseInfo( L:MemLoc, _:K) </stackbase>
      requires Nbits %Int 8 ==Int 0

endmodule
