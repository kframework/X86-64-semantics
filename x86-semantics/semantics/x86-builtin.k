require "x86-configuration.k"
require "x86-mint-wrapper.k"

module X86-BUILTIN-SYNTAX
  //imports X86-ABSTRACT-SORTS
endmodule

module X86-BUILTIN
  imports X86-BUILTIN-SYNTAX
  imports X86-CONFIGURATION
  imports X86-C-LIBRARY-SYNTAX
  imports COMMON-C-LIBRARY-STDIO-SYNTAX
  imports X86-ASBTRACT-SORTS

  //imports K-IO

  rule <k>
    execinstr (call B:Builtin,  .Operands) => execinstr (callq B:Builtin,  .Operands)
  ...</k>

  rule <k>
    execinstr (callq putchar:Builtin,  .Operands) =>
      stdio_putchar(svalueMInt(getRegisterValue(%rdi, RSMap)))  
  ...</k>
    <regstate> RSMap </regstate>


  rule <k>
    execinstr (callq printf:Builtin,  .Operands) =>
      stdio_printf({getRegisterValue(%rdi, RSMap)}:>PointerVal, 
          ListItem(svalueMInt(getRegisterValue(%rsi, RSMap)))
          ListItem(svalueMInt(getRegisterValue(%rdx, RSMap)))
          ListItem(svalueMInt(getRegisterValue(%rcx, RSMap)))
          ListItem(svalueMInt(getRegisterValue(%r8, RSMap)))
          ListItem(svalueMInt(getRegisterValue(%r9, RSMap)))
          .List
          )  
  ...</k>
    <regstate> RSMap </regstate>

endmodule
