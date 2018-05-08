module X86-MEMORY-SYNTAX
  imports MINT


  syntax Bool ::= isAddressAlignedAt(
                    /* alignment requirement in bits */ Int,
                    /* Address */ MInt) [function]

  /*@
    Allocate memory: Used for allocating stack memory
  */
  syntax KItem ::= allocateMemory( Int )

  /*@
    Free memory allocated for stack.
  */
  syntax KItem ::= freeMemory(MemLoc)

  /*@
    Load memory at Address represented by MInt for Int bits
  */
  syntax KItem ::=  loadFromMemory(  
                      /* Address */ MInt, 
                      /* Load size in bits */ Int)

  /*@
    Store memory at Address represented by MInt for Int bits
  */
  syntax KItem ::=  storeToMemory(   
                      /* Data */ MInt, 
                      /* Address */ MInt, 
                      /* Store size in bits*/ Int)

endmodule


module X86-MEMORY
  imports COMMON-MEMORY-SYNTAX
  imports X86-MEMORY-SYNTAX

  /// Decomposition of a dynamic value into bytes
  syntax ByteVal ::= byte(/* position, 0 being the LSB */ Int, MInt)

  // AbstractValue sort defintion for x86 semantics
  syntax AbstractValue ::= ByteVal

  // x86 helper memory API implementation
  syntax MemValue ::= toMemValue(MInt, Int)  [function, klabel(toMemValueMInt)]
  syntax MemValue ::= toMemValue(MInts, Int)  [function, klabel(toMemValueMInts)]
  rule toMemValue(MI:MInt, N:Int) => mList(N /Int 8, 8, toMemData(MI, N, .MemData))
  rule toMemValue(MIs:MInts, N:Int) => mList(size(MI), 8, toMemData(MIs, N, .MemData))

  syntax MemData ::= toMemData(MInt, Int, MemData)  [function, klabel(toMemDataMInt)]
  syntax MemData ::= toMemData(MInts, Int, MemData)  [function, klabel(toMemDataMInts)]

  rule toMemData(MI:MInt, N:Int, Bytes:MemData) => appendMemData(Bytes, toBytes(N, MI))
  rule toMemData(MIs:MInts, N:Int, Bytes:MemData) => toMemDataArray(MIs, 0, size(MIs), Bytes)

  
  syntax MemData ::= toMemDataArray(MInts, Int, Int, MemData) [function]

  rule toMemDataArray(_:MInts, N:Int, N, Bytes:MemData) => Bytes
  rule toMemDataArray(MI MIs:MInts, I:Int, N:Int, Bytes:MemData) =>
        toMemDataArray(MIs, I +Int 1, N, toMemData(MI, 8, Bytes))
    requires I <Int N


  syntax MemData ::= toBytes(Int, MInt) [function]
  rule toBytes(N:Int, MI:MInt) => toBytesAux(N /Int 8, MI, .MemData)

  syntax MemData ::= toBytesAux(Int, MInt,
                                /* bytes accumulator */ MemData)
    [function]
  rule toBytesAux(0, , _:MInt, Bytes:MemData) => Bytes
  rule toBytesAux(N:Int, MI:MInt, Bytes:MemData)
       =>
       toBytesAux(N -Int 1, MI, byte(N -Int 1, MI) Bytes)
    requires N >Int 0

      
  syntax MInt ::= fromMemData(N, MemData) [function]
  syntax MInt ::= fromMemValue(MemValue, Int) [function]
  rule fromMemValue(mList(_:Int, 8, Bytes:MemData), N:Int) => fromMemData(N, Bytes))
  rule fromMemData(T:SingleValueType, Bytes:MemData) => fromBytes(takeMemData(n /Int 8, Bytes), .MInst)


  syntax MInt ::= fromBytes(MemData) [function]
  rule fromBytes(byte(I:Int, MI:MInt) Rest) => extractMask(MI, 8, I *Int 8)
    requires Rest ==K .MemData                   
  rule fromBytes(byte(I:Int, MI:MInt) Rest:MemData) => concatenateMInt(fromBytes(Rest), extractMask(MI, 8, I *Int 8))
    requires Rest =/=K .MemData      

  // x86 memory API implementation
  rule <k> 
         allocateMemory(N:Int) => . 
       ... </k>  
          // <stackbase> mAlloc(mList(N, 8,  makeUndefMInts(N)), 0) </stackbase>
          <stackbase> mAlloc(toMemValue(makeUndefMInts(N), N *Int 8), 0) </stackbase>
    

  rule <k> 
         freeMemory(Loc:MemLoc) => mClear(Loc) 
       ... </k>  
          <stackbase> Loc </stackbase>

  rule loadFromMemory(AddrMI:MInt, Nbits:Int) => fromMemValue(mRead(L, uvalueMInt(AddrMI), Nbits /Int 8, 8), Nbits)
    <stackbase> L </stackbase>
      requires Nbits %Int 8 ==Int 0 

  rule storeToMemory(Val:MInt, AddrMI:MInt, Nbits:Int) => mWrite(L, uvalueMInt(AddrMI), toMemValue(Val, Nbits))
    <stackbase> L </stackbase>
      requires Nbits %Int 8 ==Int 0

endmodule
