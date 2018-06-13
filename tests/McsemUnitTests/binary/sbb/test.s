.section .text
.globl _start

_start:
  // SBBal  
  movl $0, %eax
  sbbb $1, %al
  
  movl $1, %eax
  sbbb $1, %al
  
  movl $0x7F, %eax
  sbbb $1, %al
  
  movl $0xFF, %eax
  sbbb $1, %al

  // SBBax  
  movl $0, %eax
  sbbw $1, %ax
  
  movl $1, %eax
  sbbw $1, %ax
  
  movl $0x7F, %eax
  sbbw $1, %ax
  
  movl $0xFF, %eax
  sbbw $1, %ax
  
  movl $0x7FFF, %eax
  sbbw $1, %ax
  
  movl $0xFFFF, %eax
  sbbw $1, %ax

  // SBBeax  
  movl $0, %eax
  sbbl $1, %eax
  
  movl $1, %eax
  sbbl $1, %eax
  
  movl $0x7F, %eax
  sbbl $1, %eax
  
  movl $0xFF, %eax
  sbbl $1, %eax
  
  movl $0x7FFF, %eax
  sbbl $1, %eax
  
  movl $0xFFFF, %eax
  sbbl $1, %eax
  
  movl $0x7FFFFFFF, %eax
  sbbl $1, %eax
  
  movl $0xFFFFFFFF, %eax
  sbbl $1, %eax

  // SBBr8i8  
  movl $0, %ebx
  sbbb $1, %bl
  
  movl $1, %ebx
  sbbb $1, %bl
  
  movl $0x7F, %ebx
  sbbb $1, %bl
  
  movl $0xFF, %ebx
  sbbb $1, %bl

  // SBBr8u8_64  
  movq $0, %r8
  sbbb $0x7F, %r8b
  
  movq $1, %r8
  sbbb $0x7F, %r8b
  
  movq $0x7F, %r8
  sbbb $0x7F, %r8b
  
  movq $0xFF, %r8
  sbbb $0x7F, %r8b

  // SBBr8s8_64  
  movq $0, %r8
  sbbb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $1, %r8
  sbbb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $0x7F, %r8
  sbbb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $0xFF, %r8
  sbbb $0xFF /* Sign-extended to 64-bits */, %r8b

  // SBBr8r8  
  movl $0, %ebx
  movl $0, %eax
  sbbb %al, %bl
  
  movl $1, %ebx
  movl $0, %eax
  sbbb %al, %bl
  
  movl $0xFF, %ebx
  movl $1, %eax
  sbbb %al, %bl
  
  movl $0x7F, %ebx
  movl $1, %eax
  sbbb %al, %bl
  
  movl $0x7F, %ebx
  movl $0xFF, %eax
  sbbb %al, %bl
  
  movl $0xFF, %ebx
  movl $0xFF, %eax
  sbbb %al, %bl

  // SBBr8r8_64  
  movq $0, %r8
  movq $0, %r9
  sbbb %r8b, %r9b
  
  movq $1, %r8
  movq $0, %r9
  sbbb %r8b, %r9b
  
  movq $0xFF, %r8
  movq $1, %r9
  sbbb %r8b, %r9b
  
  movq $0x7F, %r8
  movq $1, %r9
  sbbb %r8b, %r9b
  
  movq $0x7F, %r8
  movq $0xFF, %r9
  sbbb %r8b, %r9b
  
  movq $0xFF, %r8
  movq $0xFF, %r9
  sbbb %r8b, %r9b

  // SBBr16u8  
  movl $0, %ebx
  sbbw $0x7F, %bx
  
  movl $1, %ebx
  sbbw $0x7F, %bx
  
  movl $0x7F, %ebx
  sbbw $0x7F, %bx
  
  movl $0xFF, %ebx
  sbbw $0x7F, %bx
  
  movl $0x7FFF, %ebx
  sbbw $0x7F, %bx
  
  movl $0xFFFF, %ebx
  sbbw $0x7F, %bx

  // SBBr16s8  
  movl $0, %ebx
  sbbw $0xFF /* Sign-extended to $16-bits */, %bx
  
  movl $1, %ebx
  sbbw $0xFF /* Sign-extended to $16-bits */, %bx
  
  movl $0x7F, %ebx
  sbbw $0xFF /* Sign-extended to $16-bits */, %bx
  
  movl $0xFF, %ebx
  sbbw $0xFF /* Sign-extended to $16-bits */, %bx
  
  movl $0x7FFF, %ebx
  sbbw $0xFF /* Sign-extended to $16-bits */, %bx
  
  movl $0xFFFF, %ebx
  sbbw $0xFF /* Sign-extended to $16-bits */, %bx

  // SBBr16i16  
  movl $0, %ebx
  sbbw $0xFFFF, %bx
  
  movl $1, %ebx
  sbbw $0xFFFF, %bx
  
  movl $0x7F, %ebx
  sbbw $0xFFFF, %bx
  
  movl $0xFF, %ebx
  sbbw $0xFFFF, %bx
  
  movl $0x7FFF, %ebx
  sbbw $0xFFFF, %bx
  
  movl $0xFFFF, %ebx
  sbbw $0xFFFF, %bx

  // SBBr16r16  
  movl $0, %ebx
  movl $0, %edx
  sbbw %dx, %bx
  
  movl $1, %ebx
  movl $0, %edx
  sbbw %dx, %bx
  
  movl $0xFF, %ebx
  movl $1, %edx
  sbbw %dx, %bx
  
  movl $0x7F, %ebx
  movl $1, %edx
  sbbw %dx, %bx
  
  movl $0x7F, %ebx
  movl $0xFF, %edx
  sbbw %dx, %bx
  
  movl $0xFF, %ebx
  movl $0xFF, %edx
  sbbw %dx, %bx
  
  movl $0x7FFF, %ebx
  movl $1, %edx
  sbbw %dx, %bx
  
  movl $0x7FFF, %ebx
  movl $0xFFFF, %edx
  sbbw %dx, %bx
  
  movl $0xFFFF, %ebx
  movl $0xFFFF, %edx
  sbbw %dx, %bx

  // SBBr32u8  
  movl $0, %ebx
  sbbl $0x7F, %ebx
  
  movl $1, %ebx
  sbbl $0x7F, %ebx
  
  movl $0x7F, %ebx
  sbbl $0x7F, %ebx
  
  movl $0xFF, %ebx
  sbbl $0x7F, %ebx
  
  movl $0x7FFF, %ebx
  sbbl $0x7F, %ebx
  
  movl $0xFFFF, %ebx
  sbbl $0x7F, %ebx
  
  movl $0x7FFFFFFF, %ebx
  sbbl $0x7F, %ebx
  
  movl $0xFFFFFFFF, %ebx
  sbbl $0x7F, %ebx

  // SBBr32s8  
  movl $0, %ebx
  sbbl $0xFF, %ebx
  
  movl $1, %ebx
  sbbl $0xFF, %ebx
  
  movl $0x7F, %ebx
  sbbl $0xFF, %ebx
  
  movl $0xFF, %ebx
  sbbl $0xFF, %ebx
  
  movl $0x7FFF, %ebx
  sbbl $0xFF, %ebx
  
  movl $0xFFFF, %ebx
  sbbl $0xFF, %ebx
  
  movl $0x7FFFFFFF, %ebx
  sbbl $0xFF, %ebx
  
  movl $0xFFFFFFFF, %ebx
  sbbl $0xFF, %ebx

  // SBBr32i32  
  movl $0, %ebx
  sbbl $0x7FFFFFFF, %ebx
  
  movl $1, %ebx
  sbbl $0x7FFFFFFF, %ebx
  
  movl $0x7F, %ebx
  sbbl $0x7FFFFFFF, %ebx
  
  movl $0xFF, %ebx
  sbbl $0x7FFFFFFF, %ebx
  
  movl $0x7FFF, %ebx
  sbbl $0x7FFFFFFF, %ebx
  
  movl $0xFFFF, %ebx
  sbbl $0x7FFFFFFF, %ebx
  
  movl $0x7FFFFFFF, %ebx
  sbbl $0x7FFFFFFF, %ebx
  
  movl $0xFFFFFFFF, %ebx
  sbbl $0x7FFFFFFF, %ebx

  // SBBr32r32  
  movl  $0, %eax
  movl  $0, %ebx
  sbbl %ebx, %eax
  
  movl  $1, %eax
  movl  $0, %ebx
  sbbl %ebx, %eax
  
  movl  $0xFFFFFFFF, %eax
  movl  $1, %ebx
  sbbl %ebx, %eax
  
  movl  $0xFFFFFFFF, %eax
  movl  $0xFFFFFFFF, %ebx
  sbbl %ebx, %eax
  
  movl  $0x7FFFFFFF, %eax
  movl  $1, %ebx
  sbbl %ebx, %eax
  
  movl  $0, %eax
  movl  $0x10, %ebx
  sbbl %ebx, %eax
  
  movl  $0x7F, %eax
  movl  $0x10, %ebx
  sbbl %ebx, %eax

  // SBBr64u8_64  
  movb  $0, %al
  sbbb $0x7F, %al
  
  movb  $1, %al
  sbbb $0x7F, %al
  
  movb  $0x7F, %al
  sbbb $0x7F, %al
  
  movb  $0xFF, %al
  sbbb $0x7F, %al
  
  movb  $0x7FFF, %al
  sbbb $0x7F, %al
  
  movb  $0xFFFF, %al
  sbbb $0x7F, %al
  
  movb  $0x7FFFFFFF, %al
  sbbb $0x7F, %al
  
  movb  $0xFFFFFFFF, %al
  sbbb $0x7F, %al
  
  movb  $0x7FFFFFFFFFFFFFFF, %al
  sbbb $0x7F, %al
  
  movb  $0xFFFFFFFFFFFFFFFF, %al
  sbbb $0x7F, %al


  // SBBr64u32_64  
  movq  $0, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $1, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $0x7F, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $0xFF, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $0x7FFF, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $0xFFFF, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $0x7FFFFFFF, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $0xFFFFFFFF, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $0x7FFFFFFFFFFFFFFF, %rax
  sbbq $0x7FFFFFFF, %rax
  
  movq  $0xFFFFFFFFFFFFFFFF, %rax
  sbbq $0x7FFFFFFF, %rax


  // SBBr64r64_64  
  movq  $0, %rax
  movq  $0, %rbx
  sbbq %rax, %rbx
  
  movq  $1, %rax
  movq  $1, %rbx
  sbbq %rax, %rbx
  
  movq  $0xFFFFFFFF, %rax
  movq  $0xFFFFFFFF, %rbx
  sbbq %rax, %rbx
  
  movq  $0xFFFFFFFF, %rax
  movq  $0xFFFFFFFF, %rbx
  sbbq %rax, %rbx
  
  movq  $0x7FFFFFFF, %rax
  movq  $0x7FFFFFFF, %rbx
  sbbq %rax, %rbx
  
  movq  $0, %rax
  movq  $0, %rbx
  sbbq %rax, %rbx
  
  movq  $0x7F, %rax
  movq  $0x7F, %rbx
  sbbq %rax, %rbx
  
  movq  $0x7FFFFFFFFFFFFFFF, %rax
  movq  $0x7FFFFFFFFFFFFFFF, %rbx
  sbbq %rax, %rbx
  
  movq  $0x7FFFFFFFFFFFFFFF, %rax
  movq  $0x7FFFFFFFFFFFFFFF, %rbx
  sbbq %rax, %rbx
  
  movq  $0x7FFFFFFFFFFFFFFF, %rax
  movq  $0x7FFFFFFFFFFFFFFF, %rbx
  sbbq %rax, %rbx
  
  movq  $0xFFFFFFFFFFFFFFFF, %rax
  movq  $0xFFFFFFFFFFFFFFFF, %rbx
  sbbq %rax, %rbx

  nop
