requires "x86-syntax.k"
//requires "x86-sort.k"

module X86-ASBTRACT-SORT

  syntax Abstractinstruction

endmodule

module X86-ASBTRACT-SYNTAX
  imports X86-ASBTRACT-SORT
  imports MINT
  imports X86-SYNTAX
  //imports X86-SORT

  syntax Abstractinstruction ::= storedinstr(Instruction)
  syntax Abstractinstruction ::= execinstr(Instruction)

  syntax Int ::= loc(MInt)
  syntax Int ::= getISize(Instruction) [function]

  syntax KItem ::= "fetch" [token]
  syntax KItem ::= "inforegisters" [token]

  syntax Typeoperand ::= MInt

  /*@
    Subregs to Regs
  */
  syntax R64 ::= convSubRegsToRegs(Register) [function]
  syntax Ymm ::= convSubRegsToRegs(Register) [function]

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
  syntax KItem ::= setRegisterValue(MInt, Register)

  /*@
    Getting the registers values.
      Ex. getRegisterValue(%al) -> Lower  8 bits of %rax
      Ex. getRegisterValue(%ah) -> higher 8 bits of %rax
      Ex. getRegisterValue(%eax)-> lower 32 bits of %rax
      Ex. getRegisterValue(%rax)-> lower 64 bits of %rax
  */  
  syntax MInt  ::= getRegisterValue(Register, Map) [function]

  /*@
    handleImmediate(Imm, W): Compute a MInt corresponding
    to the Imm value of width W.
  */
  syntax MInt ::=  handleImmediate(Imm, Int) [function]

  /*@ 
    Check if two registers are the same
  */  
  syntax Bool ::= sameRegisters(Register, Register) [function]

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

endmodule
