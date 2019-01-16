module COMMON-C-LIBRARY-STDLIB-SYNTAX
  imports COMMON-C-LIBRARY-OPAQUE-SORTS

  imports INT

  // The comment in the LHS of each following production shows into what value
  // each KItem rewrites. Items that rewrite to anything other than .K, rewrite
  // to the corresponding LibCValues.
  syntax KItem /* .K    */ ::= "stdlib_exit"   "(" Int ")"
  syntax KItem /* .K    */ ::= "stdlib_abort"
  syntax KItem /* C int */ ::= "stdlib_atexit" "(" VoidFunctionPointer ")"
endmodule


module COMMON-C-LIBRARY-STDLIB
  imports COMMON-C-LIBRARY-OPAQUE-SYNTAX
  imports COMMON-C-LIBRARY-STDLIB-SYNTAX
  imports COMMON-C-LIBRARY-UTILS-SYNTAX
  imports COMMON-CONFIGURATION

  rule stdlib_exit(I::Int) => exitExecution(I)

  rule stdlib_abort ~> _
       =>
       writeFD(#stdout, "Aborted\n") ~> flush(#stdout) ~> asCInt(134)

  rule <k> stdlib_atexit(FP::VoidFunctionPointer) => success ...</k>
       <atexit> (.K => callExitHandler(FP)) ...</atexit>
endmodule
