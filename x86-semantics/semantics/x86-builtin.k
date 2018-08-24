require "x86-configuration.k"
require "x86-mint-wrapper.k"

module X86-BUILTIN-SYNTAX
  //imports X86-ABSTRACT-SORTS
  //syntax KItem ::= initBuiltin(/* builtin name */ Builtin)
endmodule

module X86-BUILTIN
  imports X86-BUILTIN-SYNTAX
  imports X86-CONFIGURATION
  imports X86-C-LIBRARY-SYNTAX
  imports COMMON-C-LIBRARY-STDIO-SYNTAX
  imports X86-ASBTRACT-SORTS

  //imports K-IO
  //syntax KItem ::= "stackCheckFail"
  //rule <k>
  //  execinstr (call __stack_chk_fail:Builtin,  .Operands) => stackCheckFail
  //...</k>

  //rule initBuiltin(stdout) => allocateSTDOUTMemory(4, 0)

  rule <k>
    execinstr (call fgetc:Builtin,  .Operands) =>
      stdio_fgetc(
          {getRegisterValue(%rdi, RSMap)}:>PointerVal
          )  
  ...</k>
    <regstate> RSMap </regstate>


  rule <k>
    execinstr (call feof:Builtin,  .Operands) =>
      stdio_feof(
          {getRegisterValue(%rdi, RSMap)}:>PointerVal
          )  
  ...</k>
    <regstate> RSMap </regstate>


  rule <k>
    execinstr (call fwrite:Builtin,  .Operands) =>
      stdio_fwrite(
          {getRegisterValue(%rdi, RSMap)}:>PointerVal,
          svalueMInt(getRegisterValue(%rsi, RSMap)),
          svalueMInt(getRegisterValue(%rdx, RSMap)),
          {getRegisterValue(%rcx, RSMap)}:>PointerVal
          )  
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr (call fputs:Builtin,  .Operands) =>
      stdio_fputs(
          {getRegisterValue(%rdi, RSMap)}:>PointerVal,
          {getRegisterValue(%rsi, RSMap)}:>PointerVal
          )  
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr (call puts:Builtin,  .Operands) =>
      stdio_puts(
          {getRegisterValue(%rdi, RSMap)}:>PointerVal
          )  
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr (call fopen:Builtin,  .Operands) =>
      stdio_fopen(
          {getRegisterValue(%rdi, RSMap)}:>PointerVal,
          {getRegisterValue(%rsi, RSMap)}:>PointerVal
          )  
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr (call fclose:Builtin,  .Operands) =>
      stdio_fclose(
          {getRegisterValue(%rdi, RSMap)}:>PointerVal
          )  
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr (call putchar:Builtin,  .Operands) =>
      stdio_putchar(svalueMInt(getRegisterValue(%rdi, RSMap)))  
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr (call _IO_putc:Builtin,  .Operands) =>
      stdio_putc(
          svalueMInt(getRegisterValue(%rdi, RSMap)),
          {getRegisterValue(%rsi, RSMap)}:>PointerVal
          )  
  ...</k>
    <regstate> RSMap </regstate>

  rule <k>
    execinstr (call fputc:Builtin,  .Operands) =>
      stdio_fputc(
          svalueMInt(getRegisterValue(%rdi, RSMap)),
          {getRegisterValue(%rsi, RSMap)}:>PointerVal
          )  
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
    <formatcountint> _ => 0 </formatcountint>
    <formatcountfloat> _ => 0 </formatcountfloat>


endmodule
