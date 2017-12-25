module X86-FLAG-CHECKS-SYNTAX
  imports MINT

  syntax KItem ::= updateOverflowAdd(MInt, MInt, MInt) 
  syntax KItem ::= updateZeroFlag(MInt) 
  syntax KItem ::= updateSignFlag(MInt) 
  syntax KItem ::= updateAuxCarryFlag(MInt,MInt, MInt) 
  syntax Bool ::= carryHelperAdd(MInt,MInt, MInt) [function]
  syntax KItem ::= updateCarryFlagAdd(MInt,MInt, MInt, MInt, MInt) 
  syntax KItem ::= updateParityFlag(MInt) 
  syntax KItem ::= setOverflow(MInt) 
  syntax KItem ::= setZeroFlag(MInt) 
  syntax KItem ::= setSignFlag(MInt) 
  syntax KItem ::= setAuxCarryFlag(MInt) 
  syntax KItem ::= setCarryFlag(MInt) 
  syntax KItem ::= setParityFlag(MInt) 
endmodule
