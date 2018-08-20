module X86-C-LIBRARY-SYNTAX
  imports COMMON-C-LIBRARY-OPAQUE-SORTS
  imports MINT

  // Implementation of the common C library sorts for LLVM
  syntax FilePointer ::= MInt
  syntax FPosPointer ::= MInt
  syntax StringPointer ::= MInt
  syntax BufferPointer ::= MInt
  syntax VoidFunctionPointer ::= MInt
  syntax LibCValue ::= MInt
endmodule

module X86-C-LIBRARY
  imports X86-C-LIBRARY-SYNTAX
  imports X86-CONFIGURATION
  imports COMMON-C-LIBRARY-OPAQUE-SYNTAX
  imports COMMON-C-LIBRARY-IO-SYNTAX
  imports COMMON-C-LIBRARY-STDIO-SYNTAX
  imports COMMON-C-LIBRARY-UTILS-SYNTAX

  rule asCInt(I:Int) => setRegisterValue(mi(64, I), %rax)

endmodule

