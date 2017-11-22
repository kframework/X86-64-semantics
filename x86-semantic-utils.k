requires "x86-syntax.k"
requires "x86-configuration.k"
requires "x86-general-utils.k"
requires "x86-register-semantics.k"
requires "x86-loader.k"

module  X86-SEMANTIC-UTILS
  imports X86-LOADER
  imports X86-REGISTER-SEMANTICS

  /*@
    Final Exit.
  */
  syntax KItem ::= "exit_0"
  rule <k> .K => exit_0 </k>
endmodule
