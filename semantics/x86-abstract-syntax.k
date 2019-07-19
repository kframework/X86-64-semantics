require "x86-syntax.k"
require "x86-memory.k"
module  X86-ABSTRACT-SORTS
  syntax PointerVal
  syntax NullVal
endmodule

module X86-ABSTRACT-SYNTAX
  imports MAP
  imports MINT
  imports X86-SORT
  imports X86-MEMORY-SORT
  imports COMMON-MEMORY-SORTS
  imports X86-ABSTRACT-SORTS


  syntax PointerVal ::= ptr(MemLoc, /* offset in bits */ MInt)
  syntax MInt ::= PointerVal
  syntax NullVal ::= "null"
  syntax PointerVal ::= NullVal
  syntax Bool ::= isPointerValNull(PointerVal) [function]
  syntax MemLoc ::= getMemLoc(PointerVal) [function]
  syntax MInt ::= getMIntVal(PointerVal) [function]

  /*@
    Sorts of config cell entities
  */  
  syntax CodeInMemory ::= code(/*PointerVal -> storeInstr(Instruction)*/ Map)
  //syntax CodeInMemory ::= code(/*iloc(MInt) -> storeInstr(Instruction)*/ Map)
  //syntax Int ::= iloc(MInt)
  syntax StackBaseInfo ::= stackBaseInfo(/*MemLoc, Intial Offset*/ K, K)
  syntax ROBaseInfo ::= roBaseInfo(/*MemLoc, Intial Offset, Next location*/ K, K, K)
  syntax DataBaseInfo ::= dataBaseInfo(/*MemLoc, Intial Offset, Next location*/ K, K, K)
  syntax BssBaseInfo ::= bssBaseInfo(/*MemLoc, Intial Offset, Next location*/ K, K, K)

  syntax Abstractinstruction ::= storedInstr(Instruction)
  syntax Abstractinstruction ::= execinstr(Instruction)
  syntax Abstractinstruction ::= "IllegalInstructionException" [token]

  /*@
    Used for late evaluation of memory offset in case of instructions
    like popq_m64
  */
  syntax KItem ::= evaluateMemOffset (KItem) [strict(1)] 

  syntax Int ::= "addrSize"
  rule addrSize => 64 [macro]

  // syntax Int ::= getISize(Instruction) [function]

  syntax KItem ::= "fetch" [token]
  syntax KItem ::= "inforegisters" [token]

  /*@
    Subregs to Regs
  */
  syntax Register ::= convSubRegsToRegs(Register) [function]
  //syntax R64 ::= convSubRegsToRegs(Register) [function]
  //syntax Ymm ::= convSubRegsToRegs(Register) [function]

  /*@
    Reg to Regtstate keys
  */
  syntax String ::= convToRegKeys(Register) [function]
  syntax String ::= convToRegKeysHelper(Register) [function]

  /*@
    Set the registers values.
    
    setRegisterValue(MI, R:RW)
    Assumption: bitwidthMInt(MI) == W
    Updates W bits of `underlying Register`.

    Ex. setRegisterValue(M8, %ah): Updates 8 bits in rax
      starting from lsb 8.
  */
  syntax KItem ::= setRegisterValue(KItem, Register) [strict(1)]

  syntax KResult ::= MInt
                    /*@
                     * For re-writes like 
                     * rule getValidFD(ptr(L:MemLoc, Offs:MInt)) =>
                     *  checkFD(loadFromMemory(...
                     * loadFromMemory will not occur at the top of the K cell
                     * and hence requires to evaluate first to a MemLoadValue.
                     */
                    | MemLoadValue
                    /*@
                     *  Mem Can occur as an operand of an instruction and hence
                     * need to be evaluated strictly to a MemOffset
                     */
                    | MemOffset

  /*@
    Setting the Parent register's values.
      Ex. setParentValue(MI, %ax) -> set MI to %rax
  */  
  syntax MInt  ::= setParentValue(KItem, Register) [strict(1)]

  /*@
    Getting the registers values.
      Ex. getRegisterValue(%al) -> Lower  8 bits of %rax
      Ex. getRegisterValue(%ah) -> higher 8 bits of %rax
      Ex. getRegisterValue(%eax)-> lower 32 bits of %rax
      Ex. getRegisterValue(%rax)-> lower 64 bits of %rax
  */  
  syntax MInt  ::= getRegisterValue(Register, Map) [function]

  /*@
    Getting the Parent register's values.
      Ex. getParentValue(%al) -> 64 bits of %rax
      Ex. getParentValue(%ah) -> 64 bits of %rax
      Ex. getParentValue(%eax)-> 64 bits of %rax
      Ex. getParentValue(%rax)-> 64 bits of %rax
      Ex. getParentValue(%xmm1)-> 256 bits of %ymm1
      Ex. getParentValue(%ymm1)-> 256 bits of %ymm1
  */  
  syntax MInt  ::= getParentValue(Register, Map) [function]

  /*@
    handleImmediateWithSignExtend(Imm, M, N): Compute a MInt corresponding
    to the Imm value of width M and Sign Extend to bitwidth 
    N.
  */
  syntax MInt ::=  handleImmediateWithSignExtend(Imm, Int, Int) [function]

  /*@ 
    Check if two registers are the same
  */  
  syntax Bool ::= sameRegisters(Register, Register) [function, klabel(registerargs)]
  syntax Bool ::= sameRegisters(Register, String) [function, klabel(nonregisterargs)]

  /*@ 
    setRegisterBitsAtPositon(MI, R, P) 
      Update bitwidthMInt(MI) bits of input register  R starting at 
    position P.
  */  
  syntax MInt ::= setRegisterBitsAtPositon(MInt, Register, Int) 

  /*@ 
    getRegisterBitsAtPositon(R, P, N) 
      Returns N bits of input register  R starting at 
    position P.
  */  
  syntax MInt ::= getRegisterBitsAtPositon(Register, Int, Int, Map) [function]

  /*@ 
    Get Register size based on the variant used.
  */  
  syntax Int ::= getRegisterSize(Register) [function] 

  /*@ 
    Incr/Dec RSP. Used for push/pop instructions.
  */  
  syntax KItem ::= decRSPInBytes(Int) 
  syntax KItem ::= incRSPInBytes(Int) 

  /*@
    pdepl/q
  */
  syntax KItem ::= parallelBitDeposit64(MInt, Register, Register, Int, Int)
  syntax KItem ::= parallelBitDeposit32(MInt, Register, Register, Int, Int)

  /*@
    pextl/q
  */
  syntax KItem ::= parallelBitExtract64(MInt, Register, Register, Int, Int)
  syntax KItem ::= parallelBitExtract32(MInt, Register, Register, Int, Int)

  /*@
    bsf/bsr
  */
  syntax Int ::= scanForward(MInt, Int, Int) [function]
  syntax Int ::= scanReverse(MInt, Int, Int) [function]

  /*@
    pcmp(e/i)str(i/m)
  */
  syntax MInt ::= findLimitIndexE(MInt, MInt, MInt) [function]
  syntax MInt ::= findLimitIndexI(MInt, MInt) [function]
  syntax MInt ::= findLimitIndexIHelper(MInt, Int, Int, Int) [function]
  syntax MInt ::= polarityImpl(MInt, MInt, Int, MInt) [function]
  syntax MInt ::= polarityImplHelper(MInt, MInt, Int, MInt, Int) [function]
  syntax MInt ::= updatePolarity(MInt, Int, MInt) [function]
  syntax MInt ::= expandMask(MInt) [function]
  syntax MInt ::= expandMaskHelper(MInt, Int, Int) [function]

  // Equal Any
  syntax MInt ::= equalAnyImpl( MInt, MInt, MInt, MInt, Int, MInt) [function]
  syntax MInt ::= equalAnyImplHelper1(MInt, MInt, MInt, MInt, Int, MInt, MInt, Int, Int) [function] 
  syntax MInt ::= equalAnyImplHelper2(MInt, MInt, MInt, MInt, Int, MInt, MInt, Int, Int, Int, Int) [function] 
  syntax MInt ::= updateIntRes1EqualAny(MInt, Int, Int, Int, MInt, MInt, MInt, MInt, Int, MInt) [function]
  syntax MInt ::= compareEqual(Int, Int, MInt, MInt, MInt, MInt, Int, MInt) [function]

  // Range
  syntax MInt ::= rangeImpl(MInt, MInt, MInt, MInt, Int, MInt) [function]
  syntax MInt ::= rangeImplHelper1(MInt, MInt, MInt, MInt, Int, MInt, MInt, Int, Int) [function] 
  syntax MInt ::= rangeImplHelper2(MInt, MInt, MInt, MInt, Int, MInt, MInt, Int, Int, Int, Int) [function] 
  syntax MInt ::= updateIntRes1Range(MInt, Int, Int, Int, MInt, MInt, MInt, MInt, Int, MInt) [function]
  syntax MInt ::= compareRange(Int, Int, MInt, MInt, MInt, MInt, Int, MInt) [function]

  // Equal Each
  syntax MInt ::= equalEachImpl(MInt, MInt, MInt, MInt, Int, MInt) [function]
  syntax MInt ::= equalEachImplHelper1(MInt, MInt, MInt, MInt, Int, MInt, MInt, Int, Int) [function] 
  syntax MInt ::= updateIntRes1EqualEach(MInt, Int, MInt, MInt, MInt, MInt, Int, MInt) [function]
  syntax MInt ::= compareEach(Int, MInt, MInt, MInt, MInt, Int, MInt) [function]

   // Equal Ordered
  syntax MInt ::= equalOrderedImpl(MInt, MInt, MInt, MInt, Int, MInt) [function]
  syntax MInt ::= equalOrderedImplHelper1(MInt, MInt, MInt, MInt, Int, MInt, MInt, Int, Int) [function] 
  syntax MInt ::= equalOrderedImplHelper2(MInt, MInt, MInt, MInt, Int, MInt, MInt, Int, Int, Int, Int, Int, Int) [function] 
  syntax MInt ::= updateIntRes1EqualOrdered(MInt, Int, Int, Int, MInt, MInt, MInt, MInt, Int, MInt) [function]
  syntax MInt ::= compareEqualOrdered(Int, Int, MInt, MInt, MInt, MInt, Int, MInt) [function]


  syntax MInt ::= compareEqualSignedOrUnsigned(MInt, MInt, MInt) [function]
  syntax MInt ::= compareGESignedOrUnsigned(MInt, MInt, MInt) [function]
  syntax MInt ::= compareLESignedOrUnsigned(MInt, MInt, MInt) [function]
  

endmodule
