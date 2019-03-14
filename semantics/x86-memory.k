require "x86-configuration.k"
require "x86-mint-wrapper.k"
require "x86-abstract-syntax.k"

module X86-MEMORY-SORT
  syntax MemLoadValue
endmodule

module X86-MEMORY-SYNTAX
  imports X86-MEMORY-SORT
  imports X86-ABSTRACT-SORTS
  imports MINT-WRAPPER-SORT
  imports MINT
  imports STRING
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
  syntax K ::= initStackMemory(/* Number of elements */ Int, /* Alignment in bits */ Int)

  syntax K ::= initHeapMemory(/* Number of elements */ Int, /* Alignment in bits */ Int)

  syntax K ::= changeHeapSize(/* New Size */Int)

  syntax K ::= allocateHeapMemory(/* Number of bytes */ Int)
  syntax K ::= freeMemory(MInt)

  /*@
    Load memory at Address represented by MInt for Int bits
  */
  syntax KItem ::= loadFromMemory(/* Address */ MInt, /* Load size in bits */ Int)

  /*@
    Sorts to be stored in memory.
  */  
  syntax StoreVal ::= MInt | MIntMap

  /*@
    Store 'Val' in 'Nbits' of memory starting at address 'AddrMI'
  */
  syntax KItem ::=  storeToMemory(/* Data */ StoreVal, /* Address */ MInt, /* Store size in bits*/ Int)

  syntax Bool ::= isCanonicalAddress(MInt) [function]
  
  syntax Int ::= "logicalAddressWidth" | "physicalAddressWidth" | "canonicalAddressBits" | "StackSpaceForEnvs"

  rule logicalAddressWidth => 64 [macro]
  rule physicalAddressWidth => 48 [macro] // Chosen to match real x86_64 processors.
  rule canonicalAddressBits => 1 +Int logicalAddressWidth -Int physicalAddressWidth [macro] 


  syntax ROMSegment ::= StringSegment(Int, Int, String)
endmodule


module X86-MEMORY
  imports X86-MEMORY-SYNTAX
  imports X86-CONFIGURATION


  rule isCanonicalAddress(MI) => eqMInt(extractMInt(MI, 0, canonicalAddressBits), mi(canonicalAddressBits, 0)) orBool
                                 eqMInt(extractMInt(MI, 0, canonicalAddressBits), mi(canonicalAddressBits, (1 <<Int canonicalAddressBits) -Int 1))

  rule StackSpaceForEnvs => 8 [macro]

  // TODO: Maybe.  x86 Manual says that stack may be placed anywhere in memory where it doesn't collide with the other program segments.  So this is overly specific.  
  // But how should we generalize? Random position? Symbolic position?
  syntax Int ::= BaseStackAddress(/* Stack alignment requirements in bytes */ Int) [function]
  rule BaseStackAddress(I) => (1 <<Int 64) -Int (1 <<Int (I -Int 1)) requires 2 ^Int log2Int(I) ==Int I // AKA: requires I is a power of 2

  // x86 memory API implementation

  syntax K ::= makeStack(/* Base */ Int, /* Size */ Int)

  rule initStackMemory(N, A) => makeStack(BaseStackAddress(A), N)

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
  rule <k> makeStack(Base, Size) => . ... </k>
       <argv> _ => mi(logicalAddressWidth, Size -Int StackSpaceForEnvs +Int 8) </argv>
       <stackbase> _ => mi(logicalAddressWidth, Base)  </stackbase>
       <regstate> RSMap => updateMap(RSMap, ("RSP" |-> mi(logicalAddressWidth, Base)) ("RBP" |-> mi(logicalAddressWidth, Base))) </regstate>


  syntax KResult ::= Int

  syntax K ::= makeHeap(/* Base */ K, /* Size */ Int) [strict]
  syntax K ::= computeHeapBase(Int)
  syntax K ::= findSegmentMax(List, Int)
  syntax K ::= addAlignment(Int)

  rule initHeapMemory(N, A) => makeHeap(computeHeapBase(A), N)

  rule <k> computeHeapBase(A) => findSegmentMax(L, 0) ~> addAlignment(A) ... </k>
       <ROM> L </ROM>

  rule findSegmentMax(ListItem(StringSegment(_, End, _)) L, M) => findSegmentMax(L, maxInt(M, End))
  rule findSegmentMax(.List, M) => M

  rule I:Int ~> addAlignment(A) => I requires A dividesInt I
  rule I:Int ~> addAlignment(A) => A +Int ((I /Int A) *Int A) requires notBool (A dividesInt I)

  rule <k> makeHeap(S, N) => . ... </k>
       <heapbase> _ => mi(logicalAddressWidth, S) </heapbase>
       <brk> _ => mi(logicalAddressWidth, S +Int N) </brk>


  /* TODO: Revisit this and add rules to terminate execution if the store is out of bounds? */
  rule <k> storeToMemory(Val, Addr, 8) => . ... </k>
       <memory> MemMap => MemMap[Addr <- Val] </memory>
       requires bitwidthMInt(Val) ==Int 8 andBool bitwidthMInt(Addr) ==Int logicalAddressWidth

  rule <k> storeToMemory(Val, Addr, Sz) => 
    storeToMemory(extractMInt(Val, bitwidthMInt(Val) -Int 8, bitwidthMInt(Val)), Addr, 8) ~> 
    storeToMemory(extractMInt(Val, 0, bitwidthMInt(Val) -Int 8), addMInt(Addr, mi(logicalAddressWidth, 1)), Sz -Int 8) ... </k>
  requires bitwidthMInt(Val) >Int 8 andBool 8 dividesInt bitwidthMInt(Val) andBool bitwidthMInt(Addr) ==Int logicalAddressWidth [structural]


  syntax MInt ::= findValueInMemory(MInt, Map, List) [function]
  syntax MInt ::= findValueInROM(MInt, List) [function]

  rule findValueInMemory(A, M, _) => {M[A]}:>MInt requires A in_keys(M)
  rule findValueInMemory(A, M, L) => findValueInROM(A, L) requires notBool(A in_keys(M))

  rule findValueInROM(A, ListItem(StringSegment(Start, End, S)) L) => mi(8, String2Base(substrString(S, 2 *Int (uvalueMInt(A) -Int Start), 2 *Int (uvalueMInt(A) -Int Start) +Int 2), 16))
  requires uvalueMInt(A) >=Int Start andBool 2 *Int (uvalueMInt(A) -Int Start) <Int lengthString(S)

  rule findValueInROM(A, ListItem(StringSegment(Start, End, S)) L) => mi(8, 0) 
  requires 2 *Int (uvalueMInt(A) -Int Start) >=Int lengthString(S) andBool uvalueMInt(A) <Int End

  rule findValueInROM(A, ListItem(StringSegment(Start, End, S)) L) => findValueInROM(A, L)
  requires uvalueMInt(A) <Int Start orBool uvalueMInt(A) >=Int End

  rule findValueInROM(A, .List) => 0 

  rule <k> loadFromMemory(Addr, 8) => memLoadValue(findValueInMemory(Addr, MemMap, ROMList)) ... </k>
       <memory> MemMap => MemMap[Addr <- findValueInMemory(Addr, MemMap, ROMList)] </memory>
       <ROM> ROMList </ROM>

  syntax K ::= CombineReads(K, K) [strict]

  rule loadFromMemory(Addr, Sz) => CombineReads(loadFromMemory(Addr, 8), loadFromMemory(addMInt(Addr, mi(logicalAddressWidth, 1)), Sz -Int 8)) 
  requires Sz >Int 8 andBool 8 dividesInt Sz andBool bitwidthMInt(Addr) ==Int logicalAddressWidth [structural]

  rule CombineReads(memLoadValue(undefMInt), memLoadValue(_)) => memLoadValue(undefMInt) [structural]
  rule CombineReads(memLoadValue(_), memLoadValue(undefMInt)) => memLoadValue(undefMInt) [structural]
  rule CombineReads(memLoadValue(M1), memLoadValue(M2)) => memLoadValue(concatenateMInt(M2, M1))  [structural] // Switching the order here is important, else we would read in big endian order!

  // Trivial memory leak heap implementation for now.
  rule <k> allocateHeapMemory(N) => B ... </k>
       <brk> B => addMInt(B, mi(logicalAddressWidth, N)) </brk>
  rule <k> freeMemory(M) => . ... </k> 
endmodule
