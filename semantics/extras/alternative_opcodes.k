requires "x86-configuration.k"

module ALTERNATIVE-OPCODES
  imports X86-CONFIGURATION

  rule <k> 
    execinstr (push:Opcode  R:R64, .Operands) =>  execinstr (pushq  R:R64, .Operands)
  ...</k>
  rule <k> 
    execinstr (pop:Opcode R:R64, .Operands) =>  execinstr (popq  R:R64, .Operands)
  ...</k>

  rule <k> 
    execinstr (mov:Opcode  R1:R64, R2:R64,  .Operands) =>  execinstr (movq  R1, R2, .Operands)
  ...</k>
  rule <k> 
    execinstr (mov:Opcode  R:R64, M:Mem,  .Operands) =>  execinstr (movq  R:R64, M:Mem, .Operands)
  ...</k>
  rule <k> 
    execinstr (mov:Opcode  M:Mem, R:R64, .Operands) =>  execinstr (movq  M:Mem, R:R64, .Operands)
  ...</k>
  rule <k> 
    execinstr(mov:Opcode Imm32:Imm, M:Mem,  .Operands) => execinstr(movl Imm32, M,  .Operands)
  ...</k>
  rule <k> 
    execinstr (mov Imm32:Imm, R2:R32,  .Operands) => execinstr (movl Imm32, R2,  .Operands)
  ...</k>
  rule <k> 
    execinstr(mov:Opcode R1:R32, M:Mem,  .Operands) => execinstr(movl R1, M,  .Operands)
  ...</k>
  rule <k> 
    execinstr(mov:Opcode M:Mem, R1:R32, .Operands) => execinstr(movl M, R1,  .Operands)
  ...</k>

  rule <k> 
    execinstr(sub:Opcode Imm32:Imm, M:Mem,  .Operands) => execinstr(subl:Opcode Imm32:Imm, M:Mem,  .Operands)
  ...</k>
  rule <k> 
    execinstr (sub Imm32:Imm, R2:R64,  .Operands) => execinstr (subq Imm32, R2,  .Operands)
  ...</k>
  rule <k> 
    execinstr (sub M:Mem, R2:R32,  .Operands) => execinstr (subl M, R2,  .Operands)
  ...</k>

  rule <k> 
    execinstr (dec R1:R32,  .Operands) => execinstr (decl R1,  .Operands)
  ...</k>

   rule <k> 
    execinstr(cmp:Opcode M:Mem, R2:R32,  .Operands) => execinstr(cmpl M, R2,  .Operands)
  ...</k>

   rule <k> 
    execinstr(cmp:Opcode R2:R32, M:Mem, .Operands) => execinstr(cmpl R2, M,  .Operands)
  ...</k>
   rule <k> 
    execinstr(cmp:Opcode R1:R32, R2:R32, .Operands) => execinstr(cmpl R1, R2,  .Operands)
  ...</k>


   rule <k> 
    execinstr(lea:Opcode M:Mem, R2:R64,  .Operands) => execinstr(leaq M, R2,  .Operands)
  ...</k>
  
   rule <k> 
    execinstr(add:Opcode R1:R64, R2:R64,  .Operands) => execinstr(addq R1, R2,  .Operands)
  ...</k>

   rule <k> 
    execinstr(inc:Opcode R1:R64, .Operands) => execinstr(incq R1,  .Operands)
  ...</k>

   rule <k> 
    execinstr(nop:Opcode M:Mem,  .Operands) => execinstr(nopw M,  .Operands)
  ...</k>

   rule <k> 
    execinstr(leaveq:Opcode .Operands) => execinstr(leave  .Operands)
  ...</k>
   rule <k> 
    execinstr (callq:Opcode LabelId:X86Id, .Operands) => execinstr (call LabelId, .Operands)
  ...</k>
   rule <k> 
    execinstr (jmpq:Opcode LabelId:X86Id, .Operands) => execinstr (jmp LabelId, .Operands)
  ...</
  k>
