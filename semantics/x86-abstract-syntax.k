requires "x86-syntax.k"

module X86-ASBTRACT-SYNTAX
  imports MAP
  imports MINT
  imports X86-SYNTAX

  syntax Abstractinstruction ::= storedinstr(Instruction)
  syntax Abstractinstruction ::= execinstr(Instruction)

  syntax Int ::= "addrSize"
  rule addrSize => 64 [macro]

  syntax Int ::= locpc(MInt)
  syntax Int ::= getISize(Instruction) [function]

  syntax KItem ::= "fetch" [token]
  syntax KItem ::= "inforegisters" [token]

  syntax Typeoperand ::= MInt

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
  syntax KItem ::= setRegisterValue(K, Register) [strict(1)]
  syntax KResult ::= MInt

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
      Ex. getRegisterValue(%al) -> 64 bits of %rax
      Ex. getRegisterValue(%ah) -> 64 bits of %rax
      Ex. getRegisterValue(%eax)-> 64 bits of %rax
      Ex. getRegisterValue(%rax)-> 64 bits of %rax
      Ex. getRegisterValue(%xmm1)-> 256 bits of %ymm1
      Ex. getRegisterValue(%ymm1)-> 256 bits of %ymm1
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

endmodule
