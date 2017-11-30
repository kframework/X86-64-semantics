requires "x86-loader.k"
requires "x86-flag-checks.k"
requires "x86-register-operations.k"


module  X86-SEMANTIC-UTILS
  imports X86-LOADER
  imports X86-FLAG-CHECKS
  imports X86-REGISTER-OPERATIONS

  /*@
    Final Exit.
  */
  syntax KItem ::= "exit_0"
  rule <k> .K => exit_0 </k>
endmodule
