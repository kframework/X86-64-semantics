module X86-MEMORY-SYNTAX
  imports MINT


  syntax Bool ::= isAddressAlignedAt(
                    /* alignment requirement in bits */ Int,
                    /* Address */ MInt) [function]
  syntax KItem ::= allocateStackMemory( Int )
  syntax KItem ::= freeStackMemory( )
  syntax KItem ::=  loadFromMemory(  
                      /* Address */ MInt, 
                      /* Load size in bits */ Int)
  syntax KItem ::=  storeToMemory(   
                      /* Data */ MInt, 
                      /* Address */ MInt, 
                      /* Store size in bits*/ Int)

endmodule


module X86-MEMORY
  imports COMMON-MEMORY-SYNTAX
  imports X86-MEMORY-SYNTAX

  // AbstractValue sort defintion for x86 semantics
  syntax AbstractValue ::= MInt

  // x86 memory API implementation

endmodule
