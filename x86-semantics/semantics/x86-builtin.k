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
    execinstr (call putchar:Builtin,  .Operands) =>
      stdio_putchar(svalueMInt(getRegisterValue(%rdi, RSMap)))  
  ...</k>
    <regstate> RSMap </regstate>


  rule <k>
    execinstr (call printf:Builtin,  .Operands) =>
      stdio_printf({getRegisterValue(%rdi, RSMap)}:>PointerVal, 
          ListItem(mi(64,0))
          ListItem(mi(64,0))
          ListItem(mi(64,0))
          ListItem(mi(64,0))
          ListItem(mi(64,0))
          ListItem(mi(64,0))
          ListItem(mi(64,0))
          ListItem(mi(64,0))
          //ListItem(getRegisterValue(%rsi, RSMap))
          //ListItem(getRegisterValue(%rdx, RSMap))
          //ListItem(getRegisterValue(%rcx, RSMap))
          //ListItem(getRegisterValue(%r8, RSMap))
          //ListItem(getRegisterValue(%r9, RSMap))
          .List
          )  
  ...</k>
    <regstate> RSMap </regstate>
    <formatcount> _ => 0 </formatcount>


endmodule
