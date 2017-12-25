requires "x86-syntax.k"

module X86-ASBTRACT-SORT

  syntax Abstractinstruction

endmodule

module X86-ASBTRACT-SYNTAX
  imports X86-ASBTRACT-SORT
  imports MINT
  imports X86-SYNTAX
  
  syntax Abstractinstruction ::= storedinstr(Opcode, Typedoperands)
  syntax Abstractinstruction ::= execinstr(Opcode, Typedoperands)

  syntax Int ::= loc(MInt)
  syntax Int ::= getISize(Opcode, Typedoperands) [function]

  syntax KItem ::= "fetch" [token]
  syntax KItem ::= "inforegisters" [token]

  syntax Typeoperand ::= MInt

endmodule
