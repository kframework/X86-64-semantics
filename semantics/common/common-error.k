module COMMON-ERROR-SORTS
  syntax Error
endmodule


module COMMON-ERROR-SYNTAX
  imports COMMON-ERROR-SORTS

  imports STRING

  syntax Error ::= "outOfBoundsMemoryAccess" | ioError(String)

  syntax KItem ::= error(Error)
endmodule
