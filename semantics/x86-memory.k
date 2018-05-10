require "x86-configuration.k"

module X86-MEMORY-SYNTAX
  imports MINT-WRAPPER-SYNTAX


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
    Allocate memory: Used for allocating local memory
  */
  syntax KItem ::= allocateLocalMemory(
      /* Number of elements */ Int,
      /* Alignment in bits */ Int)

  /*@
    Free memory allocated for stack.
  */
  syntax KItem ::= "freeMemory" [token]

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
                      /* Data */ MInt,
                      /* Address */ MInt,
                      /* Store size in bits*/ Int)

endmodule


module X86-MEMORY
  imports COMMON-MEMORY-SYNTAX
  imports X86-CONFIGURATION

  /// Decomposition of a dynamic value into bytes
  syntax ByteVal ::= byte(/* position, 0 being the LSB */ Int, MInt)

  // AbstractValue sort defintion for x86 semantics
  syntax AbstractValue ::= ByteVal

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
  rule fromMemValue(mList(_:Int, 8, Bytes:MemData), N:Int) => fromBytes(takeMemData(N /Int 8, Bytes))

  syntax MInt ::= fromBytes(MemData) [function]
  rule fromBytes(byte(I:Int, MI:MInt) Rest) => extractMask(MI, 8, I *Int 8)
    requires Rest ==K .MemData
  rule fromBytes(byte(I:Int, MI:MInt) Rest:MemData) => concatenateMInt(fromBytes(Rest), extractMask(MI, 8, I *Int 8))
    requires Rest =/=K .MemData

  // x86 memory API implementation

  /*@
    Allocate stack memory: Used for allocating stack memory and saving the stack base address
    N ::= Environment Memor (upper 64 slots) + Stack Memory (Rest)
  */
  rule <k> allocateStackMemory(N:Int, A:Int) =>  
    saveAllocPointer(allocateLocalMemory(N, A)) ... </k>
      <regstate> RSMAP => RSMAP["RSP" <- mi(64, N -Int 64)] </regstate>
      //<argv> _ => mi(64, N -Int 64) </argv>

  /*@
    Save the allocation id for later reads/writes/free.
  */
  syntax KItem ::=  saveAllocPointer(K) [strict(1)]
  rule <k> saveAllocPointer(L:MemLoc) => .
  ... </k>
    <stackbase> _:K => L:MemLoc </stackbase>

  /*@
    Allocate memory: Used for allocating local memory
    `makeUndefMIntMap(N)` creates N 1 byte undef and return a Map storing them
    in byte granularity, which are then store in memory.
  */
  rule <k> allocateLocalMemory(N:Int, A:Int) => 
          mAlloc(
            toMemValue(makeUndefMIntMap(N), N *Int 8),
            A)
  ... </k>

  rule <k> freeMemory => mClear(Loc) ... </k>
    <stackbase> Loc:MemLoc </stackbase>

  /*@
    Load memory Nbits:Int bits from Address represented AddrMI:MInt
  */
  rule <k>
    loadFromMemory(AddrMI:MInt, Nbits:Int) =>
      fromMemValue(mRead(L, uvalueMInt(AddrMI) *Int 8, Nbits /Int 8, 8), Nbits)
  ... </k>
    <stackbase> L </stackbase>
      requires Nbits %Int 8 ==Int 0

  /*@
    Store 'Val' in 'Nbits' of memory starting at address 'AddrMI'
  */
  rule <k>
    storeToMemory(Val:MInt, AddrMI:MInt, Nbits:Int) => mWrite(L, uvalueMInt(AddrMI) *Int 8, toMemValue(Val, Nbits))
  ... </k>
    <stackbase> L </stackbase>
      requires Nbits %Int 8 ==Int 0

endmodule
