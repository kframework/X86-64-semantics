require "x86-configuration.k"
require "x86-mint-wrapper.k"

module X86-BUILTIN
  imports X86-CONFIGURATION
  //imports LLVM-C-LIBRARY-SYNTAX
  imports COMMON-C-LIBRARY-STDIO-SYNTAX

  //imports K-IO


  rule <k>
    execinstr (callq putchar:Builtin,  .Operands) =>
      stdio_putchar(svalueMInt(getRegisterValue(%rdi, RSMap)))  
  ...</k>
    <regstate> RSMap </regstate>
endmodule
