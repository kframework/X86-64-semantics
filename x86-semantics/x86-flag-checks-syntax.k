module X86-FLAG-CHECKS-SYNTAX
  imports MINT
  imports MAP
  imports STRING-SYNTAX

  syntax KItem ::= updateOverflowAdd(MInt, MInt, MInt) 
  syntax KItem ::= updateZeroFlag(MInt) 
  syntax KItem ::= updateSignFlag(MInt) 
  syntax KItem ::= updateAuxCarryFlag(MInt,MInt, MInt) 
  syntax Bool  ::= carryHelperAdd(MInt,MInt, MInt) [function]
  //syntax KItem ::= updateCarryFlagAdd(MInt,MInt, MInt, MInt, MInt) 
  syntax KItem ::= updateCarryFlagAdd(MInt,MInt, MInt) 
  syntax KItem ::= updateParityFlag(MInt) 

  syntax KItem ::= setFlag(MInt, String) 

  syntax MInt  ::= getFlag(String, Map) [function]    
endmodule
