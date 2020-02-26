module COMMON-MEMORY-OPAQUE-SORTS
  // This sort should be provided by the client and represents the scalar values
  // that can be stored in memory cells.
  syntax AbstractValue [smt-prelude]
endmodule


module COMMON-MEMORY-SORTS
  syntax MemLoc    [smt-prelude]
  syntax MemData   [smt-prelude]
  syntax MemValue
  syntax MemoryMap [smt-prelude]
  syntax MemorySet [smt-prelude]
  syntax Memory
endmodule


module COMMON-MEMORY-OPAQUE-SYNTAX
  imports COMMON-MEMORY-OPAQUE-SORTS

  // This function should be implemented by the client. It returns the default
  // AbstractValue to be used for uninitialized memory cells.
  syntax AbstractValue ::= getDefaultAbstractValue() [function]
endmodule


// A map to be used for memory contents: MemLoc -> AbstractValue.
// This map uses array theory and is implemented as a complete mapping, using
// the default AbstractValue as the initial binding for any key.
module COMMON-MEMORY-MAP-SYNTAX
  imports COMMON-MEMORY-OPAQUE-SORTS
  imports COMMON-MEMORY-SORTS

  // Empty MemoryMap
  syntax MemoryMap ::= ".MemoryMap" [function]

  // Retrieve the AbstractValue associated with the given MemLoc.
  syntax AbstractValue ::= selectMemoryMap(MemoryMap, MemLoc)
    [function, smtlib(select)]

  // Update a MemoryMap with a new AbstractValue binding for MemLoc.
  syntax MemoryMap ::= storeMemoryMap(MemoryMap, MemLoc, AbstractValue)
    [function, smtlib(store)]
endmodule


// A set to be used to keep track of freed memory locations. This set
// is implemented as a complete array from MemLoc to Bool.
module COMMON-MEMORY-SET-SYNTAX
  imports COMMON-MEMORY-OPAQUE-SORTS
  imports COMMON-MEMORY-SORTS

  // Empty MemorySet
  syntax MemorySet ::= ".MemorySet" [function, smtlib(smt_set_emp)]

  // Check for membership
  syntax Bool ::= inMemorySet(MemLoc, MemorySet)
    [function, smtlib(smt_set_mem)]

  // Add a MemLoc to the set.
  syntax MemorySet ::= addMemorySet(MemorySet, MemLoc)
    [function, smtlib(smt_set_add)]
endmodule


module COMMON-MEMORY-SYNTAX
  imports COMMON-MEMORY-SORTS
  imports COMMON-MEMORY-OPAQUE-SORTS

  imports INT

  // A symbolically addressed memory location.
  syntax MemLoc ::= symloc(/* location ID */ Int,
                           /* alignment in bits */ Int,
                           /* location size in elements */ Int,
                           /* element size in bits */ Int,
                           /* offset in elements */ Int)
    [smtlib(symloc), smt-prelude]

  // The memory model supports concrete addresses for memory locations.
  // They are guaranteed to not be aliased with any of the symbolically
  // addressed memory locations, but the client is responsible for not
  // overlapping two or more memory locations with concrete addresses.
  syntax MemLoc ::= loc(/* actual address */ Int,
                        /* location size in elements */ Int,
                        /* element size in bits */ Int,
                        /* offset in elements */ Int)
    [smtlib(loc), smt-prelude]

  syntax Bool ::= isMemLocAlignedAt(/* alignment requirement in bits */ Int,
                                    MemLoc)
    [function]

  syntax Bool ::= isMemLocNull(MemLoc) [function]

  syntax MemData ::= ".MemData"            [smtlib(emptyMemData)]
                   | AbstractValue MemData [smtlib(memData)]

  syntax Int ::= lengthMemData(MemData) [function]
  syntax MemData ::= appendMemData(MemData, MemData) [function]
  syntax MemData ::= revMemData(MemData) [function]
  syntax MemData ::= takeMemData(Int, MemData) [function]
  syntax MemData ::= dropMemData(Int, MemData) [function]
  syntax MemData ::= makeMemData(/* number of elements */ Int,
                                 /* initial element value */ AbstractValue)
    [function]

  syntax MemValue ::= mList(/* size in elements */ Int,
                            /* element size in bits */ Int,
                            /* list of elements */ MemData)

  syntax Int ::= bitSizeOfMemValue(MemValue) [function]

  syntax Memory ::= mem(MemoryMap)

  syntax KItem ::= mSize(MemLoc)

  syntax KItem ::= mAlloc(/* allocation size in elements */ Int,
                          /* element size in bits */ Int,
                          /* alignment in bits */ Int)

  syntax KItem ::= mRead(MemLoc,
                         /* offset in bits */ Int,
                         /* size to read in elements */ Int,
                         /* element size in bits */ Int)

  syntax KItem ::= mWrite(MemLoc, /* offset in bits */ Int, MemValue)

  syntax KItem ::= mClear(MemLoc)

  // Int is a KResult, since mSize evaluates to an Int
  syntax KResult ::= Int

  // MemLoc is a KResult, since mAlloc evaluates to a MemLoc
  syntax KResult ::= MemLoc

  // MemValue is a KResult, since mRead evaluates to a MemValue
  syntax KResult ::= MemValue
endmodule


module COMMON-MEMORY-CONFIGURATION
  imports COMMON-MEMORY-MAP-SYNTAX
  imports COMMON-MEMORY-SET-SYNTAX
  imports COMMON-MEMORY-SYNTAX

  configuration
    <memory>
      <nextLoc> 1               </nextLoc> // TODO: should be randomly initialized
      <objects> mem(.MemoryMap) </objects>
      <freed>   .MemorySet      </freed>
    </memory>
endmodule


module COMMON-MEMORY
  imports COMMON-MEMORY-SYNTAX
  imports COMMON-MEMORY-OPAQUE-SYNTAX
  imports COMMON-MEMORY-MAP-SYNTAX
  imports COMMON-MEMORY-SET-SYNTAX
  imports COMMON-ERROR-SYNTAX
  imports COMMON-UTILS-SYNTAX
  imports COMMON-CONFIGURATION

  imports MAP
  imports SET

  rule isMemLocAlignedAt(A:Int, loc(Addr:Int, _:Int, _:Int, _:Int))
       =>
       Addr %Int A ==Int 0
  rule isMemLocAlignedAt(A:Int, symloc(_:Int, LocA:Int, _:Int, _:Int, _:Int))
       =>
       A <=Int LocA

  rule isMemLocNull(loc(Addr:Int, _:Int, _:Int, _:Int)) => Addr ==Int 0
  rule isMemLocNull(symloc(_:Int, _:Int, _:Int, _:Int, _:Int)) => false

  rule lengthMemData(D:MemData) => lengthMemDataAux(D, 0)

  syntax Int ::= lengthMemDataAux(MemData, Int) [function]
  rule lengthMemDataAux(.MemData, Len:Int) => Len
  rule lengthMemDataAux(_:AbstractValue D:MemData, Len:Int)
       =>
       lengthMemDataAux(D, Len +Int 1)

  rule appendMemData(D1:MemData, D2:MemData)
       =>
       revAppendMemData(revMemData(D1), D2)

  rule revMemData(D:MemData) => revAppendMemData(D, .MemData)

  syntax MemData ::= revAppendMemData(MemData, MemData) [function]
  rule revAppendMemData(.MemData, D:MemData) => D
  rule revAppendMemData(V:AbstractValue D1:MemData, D2:MemData)
       =>
       revAppendMemData(D1, V D2)

  rule takeMemData(N:Int, D:MemData) => takeMemDataAux(N, D, .MemData)

  syntax MemData ::= takeMemDataAux(Int, MemData, MemData) [function]
  rule takeMemDataAux(N:Int, _:MemData, D:MemData) => revMemData(D)
    requires N ==Int 0
  rule takeMemDataAux(N:Int, V:AbstractValue D:MemData, Acc:MemData)
       =>
       takeMemDataAux(N -Int 1, D, V Acc)
    requires N >Int 0

  rule dropMemData(N:Int, D:MemData) => D
    requires N ==Int 0
  rule dropMemData(N:Int, V:AbstractValue D:MemData) => dropMemData(N -Int 1, D)
    requires N >Int 0

  rule makeMemData(N:Int, V:AbstractValue) => makeMemDataAux(N, V, .MemData)

  syntax MemData ::= makeMemDataAux(Int, AbstractValue, MemData) [function]
  rule makeMemDataAux(N:Int, _:AbstractValue, D:MemData) => D
    requires N ==Int 0
  rule makeMemDataAux(N:Int, V:AbstractValue, Acc:MemData)
       =>
       makeMemDataAux(N -Int 1, V, V Acc)
    requires N >Int 0

  rule bitSizeOfMemValue(mList(N:Int, Sz:Int, _:MemData)) => N *Int Sz

  syntax Bool ::= inBoundsAccess(/* size in elements */ Int,
                                 /* element size in bits */ Int,
                                 /* offset in bits */ Int,
                                 /* access size in bits */ Int)
    [function]
  rule inBoundsAccess(N:Int, Sz:Int, Offs:Int, AccessSz:Int)
       =>
       Offs >=Int 0 andBool AccessSz >=Int 0 andBool
       Offs +Int AccessSz <=Int N *Int Sz andBool
       Offs %Int Sz ==Int 0

  // This function assumes that the memory access is inbounds
  syntax MemValue ::=
    readMemValue(/* pointer in memory location */ MemLoc,
                 /* offset in bits */ Int,
                 /* number of elements to read */ Int,
                 /* element size in bits */ Int,
                 /* memory to read from */ Memory)
    [function]
  rule readMemValue(loc(Addr:Int, N:Int, Sz:Int, I:Int),
                    Offs:Int, NumElems:Int, ElemSz:Int, mem(M:MemoryMap))
       =>
       mList(NumElems, Sz, readMemValueAux(loc(Addr, N, Sz, I),
                                           Offs /Int Sz +Int NumElems -Int 1,
                                           NumElems,
                                           M, .MemData))
    requires ElemSz ==Int Sz
  // TODO: More cases needed when sizes do not agree
  rule readMemValue(symloc(LocID:Int, A:Int, N:Int, Sz:Int, I:Int),
                    Offs:Int, NumElems:Int, ElemSz:Int, mem(M:MemoryMap))
       =>
       mList(NumElems, Sz, readMemValueAux(symloc(LocID, A, N, Sz, I),
                                           Offs /Int Sz +Int NumElems -Int 1,
                                           NumElems,
                                           M, .MemData))
    requires ElemSz ==Int Sz
  // TODO: More cases needed when sizes do not agree

  syntax MemData ::= readMemValueAux(MemLoc, Int, Int, MemoryMap, MemData)
    [function]
  rule readMemValueAux(_:MemLoc, OffsI:Int, ElemsToRead:Int, _:MemoryMap,
                       D:MemData)
       =>
       D
       requires ElemsToRead ==Int 0
  rule readMemValueAux(loc(Addr:Int, N:Int, Sz:Int, I:Int),
                       OffsI:Int, ElemsToRead:Int, M:MemoryMap, D:MemData)
       =>
       readMemValueAux(loc(Addr, N, Sz, I), OffsI -Int 1, ElemsToRead -Int 1, M,
                       selectMemoryMap(M, loc(Addr, N, Sz, I +Int OffsI)) D)
       requires ElemsToRead >Int 0
  rule readMemValueAux(symloc(LocID:Int, A:Int, N:Int, Sz:Int, I:Int),
                       OffsI:Int, ElemsToRead:Int, M:MemoryMap, D:MemData)
       =>
       readMemValueAux(
         symloc(LocID, A, N, Sz, I), OffsI -Int 1, ElemsToRead -Int 1, M,
         selectMemoryMap(M, symloc(LocID, A, N, Sz, I +Int OffsI)) D)
       requires ElemsToRead >Int 0

  // This function assumes that the memory access is inbounds
  syntax Memory ::= writeMemValue(/* memory to write into */ Memory,
                                  /* pointer in memory location */ MemLoc,
                                  /* offset in bits */ Int,
                                  /* value to write */ MemValue)
    [function]
  rule writeMemValue(mem(M:MemoryMap), loc(Addr:Int, N:Int, Sz:Int, I:Int),
                     Offs:Int, mList(NumElems:Int, ElemSz:Int, D:MemData))
       =>
       mem(writeMemValueAux(loc(Addr, N, Sz, I),
                            Offs /Int Sz,
                            NumElems,
                            D, M))
    requires ElemSz ==Int Sz
  // TODO: More cases needed when sizes do not agree
  rule writeMemValue(mem(M:MemoryMap),
                     symloc(LocID:Int, A:Int , N:Int, Sz:Int, I:Int),
                     Offs:Int, mList(NumElems:Int, ElemSz:Int, D:MemData))
       =>
       mem(writeMemValueAux(symloc(LocID, A, N, Sz, I),
                            Offs /Int Sz,
                            NumElems,
                            D, M))
    requires ElemSz ==Int Sz
  // TODO: More cases needed when sizes do not agree

  syntax MemoryMap ::= writeMemValueAux(MemLoc, Int, Int, MemData, MemoryMap)
    [function]
  rule writeMemValueAux(_:MemLoc, OffsI:Int, ElemsToWrite:Int, .MemData,
                        M:MemoryMap)
       =>
       M
       requires ElemsToWrite ==Int 0
  rule writeMemValueAux(loc(Addr:Int, N:Int, Sz:Int, I:Int),
                        OffsI:Int, ElemsToWrite:Int, V:AbstractValue D:MemData,
                        M:MemoryMap)
       =>
       writeMemValueAux(loc(Addr, N, Sz, I), OffsI +Int 1, ElemsToWrite -Int 1,
                        D, storeMemoryMap(M, loc(Addr, N, Sz, I +Int OffsI), V))
       requires ElemsToWrite >Int 0
  rule writeMemValueAux(symloc(LocID:Int, A:Int, N:Int, Sz:Int, I:Int),
                        OffsI:Int, ElemsToWrite:Int, V:AbstractValue D:MemData,
                        M:MemoryMap)
       =>
       writeMemValueAux(
         symloc(LocID, A, N, Sz, I), OffsI +Int 1, ElemsToWrite -Int 1, D,
         storeMemoryMap(M, symloc(LocID, A, N, Sz, I +Int OffsI), V))
       requires ElemsToWrite >Int 0

  rule mSize(loc(_:Int, N:Int, Sz:Int, _:Int)) => N *Int Sz
  rule mSize(symloc(_:Int, _:Int, N:Int, Sz:Int, _:Int)) => N *Int Sz

  rule <k> mAlloc(N:Int, Sz:Int, A:Int) => symloc(LocID, A, N, Sz, 0) ...</k>
       <nextLoc> LocID:Int => LocID +Int 1 </nextLoc>

  rule <k>
         mRead(loc(Addr:Int, N:Int, Sz:Int, I:Int),
               Offs:Int, NumElems:Int, ElemSz:Int)
         =>
         readMemValue(loc(Addr, N, Sz, I), Offs, NumElems, ElemSz, M)
       ...</k>
       <objects> M:Memory </objects>
       <freed> F:MemorySet </freed>
       requires notBool inMemorySet(loc(Addr, N, Sz, 0), F)
                andBool inBoundsAccess(N, Sz, I *Int Sz +Int Offs,
                                       NumElems *Int ElemSz)
  rule <k>
         mRead(symloc(LocID:Int, A:Int, N:Int, Sz:Int, I:Int),
               Offs:Int, NumElems:Int, ElemSz:Int)
         =>
         readMemValue(symloc(LocID, A, N, Sz, I), Offs, NumElems, ElemSz, M)
       ...</k>
       <objects> M:Memory </objects>
       <freed> F:MemorySet </freed>
       requires notBool inMemorySet(symloc(LocID, A, N, Sz, 0), F)
                andBool inBoundsAccess(N, Sz, I *Int Sz +Int Offs,
                                       NumElems *Int ElemSz)
  rule <k>
         mRead(loc(Addr:Int, N:Int, Sz:Int, I:Int),
               Offs:Int, NumElems:Int, ElemSz:Int)
         =>
         error(outOfBoundsMemoryAccess)
       ...</k>
       <freed> F:MemorySet </freed>
       requires notBool inBoundsAccess(N, Sz, I *Int Sz +Int Offs,
                                       NumElems *Int ElemSz)
                orBool inMemorySet(loc(Addr, N, Sz, 0), F)
  rule <k>
         mRead(symloc(LocID:Int, A:Int, N:Int, Sz:Int, I:Int),
               Offs:Int, NumElems:Int, ElemSz:Int)
         =>
         error(outOfBoundsMemoryAccess)
       ...</k>
       <freed> F:MemorySet </freed>
       requires notBool inBoundsAccess(N, Sz, I *Int Sz +Int Offs,
                                       NumElems *Int ElemSz)
                orBool inMemorySet(symloc(LocID, A, N, Sz, 0), F)

  rule <k>
         mWrite(loc(Addr:Int, N:Int, Sz:Int, I:Int), Offs:Int, MV:MemValue)
         =>
         .
       ...</k>
       <objects>
         M:Memory => writeMemValue(M, loc(Addr, N, Sz, I), Offs, MV)
       </objects>
       <freed> F:MemorySet </freed>
       requires notBool inMemorySet(loc(Addr, N, Sz, 0), F)
                andBool inBoundsAccess(N, Sz, I *Int Sz +Int Offs,
                                       bitSizeOfMemValue(MV))
  rule <k>
         mWrite(symloc(LocID:Int, A:Int, N:Int, Sz:Int, I:Int),
                Offs:Int, MV:MemValue)
         =>
         .
       ...</k>
       <objects>
         M:Memory => writeMemValue(M, symloc(LocID, A, N, Sz, I), Offs, MV)
       </objects>
       <freed> F:MemorySet </freed>
       requires notBool inMemorySet(symloc(LocID, A, N, Sz, 0), F)
                andBool inBoundsAccess(N, Sz, I *Int Sz +Int Offs,
                                       bitSizeOfMemValue(MV))
  rule <k>
         mWrite(loc(Addr:Int, N:Int, Sz:Int, I:Int), Offs:Int, MV:MemValue)
         =>
         error(outOfBoundsMemoryAccess)
       ...</k>
       <freed> F:MemorySet </freed>
       requires notBool inBoundsAccess(N, Sz, I *Int Sz +Int Offs,
                                       bitSizeOfMemValue(MV))
                orBool inMemorySet(loc(Addr, N, Sz, 0), F)
  rule <k>
         mWrite(symloc(LocID:Int, A:Int, N:Int, Sz:Int, I:Int),
                Offs:Int, MV:MemValue)
         =>
         error(outOfBoundsMemoryAccess)
       ...</k>
       <freed> F:MemorySet </freed>
       requires notBool inBoundsAccess(N, Sz, I *Int Sz +Int Offs,
                                       bitSizeOfMemValue(MV))
                orBool inMemorySet(symloc(LocID, A, N, Sz, 0), F)

  rule <k> mClear(loc(Addr:Int, N:Int, Sz:Int, I:Int)) => . ...</k>
       <freed> F:MemorySet => addMemorySet(F, loc(Addr, N, Sz, 0)) </freed>
       requires I ==Int 0
  rule <k> mClear(symloc(LocID:Int, A:Int, N:Int, Sz:Int, I:Int)) => . ...</k>
       <freed>
         F:MemorySet => addMemorySet(F, symloc(LocID, A, N, Sz, 0))
       </freed>
       requires I ==Int 0

  // Concrete implementation for MemoryMap
  syntax MemoryMap ::= Map

  rule .MemoryMap => .Map //[concrete]

  rule selectMemoryMap(M:Map, L:MemLoc) => {M[L]}:>AbstractValue
       requires L in_keys(M)
    //[concrete]
  rule selectMemoryMap(M:Map, L:MemLoc) => getDefaultAbstractValue()
       requires notBool (L in_keys(M))
    //[concrete]

  rule storeMemoryMap(M:Map, L:MemLoc, V:AbstractValue) => M[L <- V] //[concrete]

  // Concrete implementation for MemorySet
  syntax MemorySet ::= Set

  rule .MemorySet => .Set //[concrete]

  rule inMemorySet(L:MemLoc, S:Set) => L in S //[concrete]

  rule addMemorySet(S:Set, L:MemLoc) => SetItem(L) S //[concrete]
endmodule
