require "x86-configuration.k"

module X86-MEMORY-SYNTAX
  imports MINT-WRAPPER-SYNTAX


  syntax Bool ::= isAddressAlignedAt(
                    /* alignment requirement in bits */ Int,
                    /* Address */ MInt) [function]

  /*@
    Allocate memory: Used for allocating stack memory
  */
  syntax KItem ::= allocateMemory(Int)

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
  syntax MemValue ::= toMemValue(MInt, Int)  [function, klabel(toMemValueMInt)]
  rule toMemValue(MI:MInt, N:Int) => mList(N /Int 8, 8, toMemData(MI, N, .MemData))

  syntax MemData ::= toMemData(MInt, Int, MemData)  [function, klabel(toMemDataMInt)]
  rule toMemData(MI:MInt, N:Int, Bytes:MemData) => appendMemData(Bytes, toBytes(N, MI))


  syntax MemData ::= toMemDataArray(MInts, Int, Int, MemData) [function]
  rule toMemDataArray(_:MInts, N:Int, N, Bytes:MemData) => Bytes
  rule toMemDataArray(MI MIs:MInts, I:Int, N:Int, Bytes:MemData) =>
        toMemDataArray(MIs, I +Int 1, N, toMemData(MI, 8, Bytes))
    requires I <Int N


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
    Allocate memory: Used for allocating stack memory
  */
  rule <k> allocateMemory(N:Int) =>  saveAllocPointer(
          mAlloc(
            mList(N, 8, toMemDataArray(makeUndefMInts(N), 0, N, .MemData)),
            0))
  ... </k>

  /*@
    Save the allocation id for later reads/writes/free.
  */
  syntax KItem ::=  saveAllocPointer(K) [strict(1)]
  rule <k> saveAllocPointer(L:MemLoc) => .
  ... </k>
    <stackbase> _:K => L:MemLoc </stackbase>


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
