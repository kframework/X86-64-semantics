.section .text
.globl _start

_start:
  // SUBal  
  movl $0, %eax
  subb $1, %al
  
  movl $1, %eax
  subb $1, %al
  
  movl $0x7F, %eax
  subb $1, %al
  
  movl $0xFF, %eax
  subb $1, %al

  // SUBax  
  movl $0, %eax
  subw $1, %ax
  
  movl $1, %eax
  subw $1, %ax
  
  movl $0x7F, %eax
  subw $1, %ax
  
  movl $0xFF, %eax
  subw $1, %ax
  
  movl $0x7FFF, %eax
  subw $1, %ax
  
  movl $0xFFFF, %eax
  subw $1, %ax

  // SUBeax  
  movl $0, %eax
  subl $1, %eax
  
  movl $1, %eax
  subl $1, %eax
  
  movl $0x7F, %eax
  subl $1, %eax
  
  movl $0xFF, %eax
  subl $1, %eax
  
  movl $0x7FFF, %eax
  subl $1, %eax
  
  movl $0xFFFF, %eax
  subl $1, %eax
  
  movl $0x7FFFFFFF, %eax
  subl $1, %eax
  
  movl $0xFFFFFFFF, %eax
  subl $1, %eax

  // SUBr8i8  
  movl $0, %ebx
  subb $1, %bl
  
  movl $1, %ebx
  subb $1, %bl
  
  movl $0x7F, %ebx
  subb $1, %bl
  
  movl $0xFF, %ebx
  subb $1, %bl

  // SUBr8u8_64  
  movq $0, %r8
  subb $0x7F, %r8b
  
  movq $1, %r8
  subb $0x7F, %r8b
  
  movq $0x7F, %r8
  subb $0x7F, %r8b
  
  movq $0xFF, %r8
  subb $0x7F, %r8b

  // SUBr8s8_64  
  movq $0, %r8
  subb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $1, %r8
  subb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $0x7F, %r8
  subb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $0xFF, %r8
  subb $0xFF /* Sign-extended to 64-bits */, %r8b

  // SUBr8r8  
  movl $0, %ebx
  movl $0, %eax
  subb %al, %bl
  
  movl $1, %ebx
  movl $0, %eax
  subb %al, %bl
  
  movl $0xFF, %ebx
  movl $1, %eax
  subb %al, %bl
  
  movl $0x7F, %ebx
  movl $1, %eax
  subb %al, %bl
  
  movl $0x7F, %ebx
  movl $0xFF, %eax
  subb %al, %bl
  
  movl $0xFF, %ebx
  movl $0xFF, %eax
  subb %al, %bl

  // SUBr8r8_64  
  movb $0, %al
  movb $0, %bl
  subb %bl, %al
  
  movb $1, %al
  movb $0, %bl
  subb %bl, %al
  
  movb $0xFF, %al
  movb $1, %bl
  subb %bl, %al
  
  movb $0x7F, %al
  movb $1, %bl
  subb %bl, %al
  
  movb $0x7F, %al
  movb $0xFF, %bl
  subb %bl, %al
  
  movb $0xFF, %al
  movb $0xFF, %bl
  subb %bl, %al

  // SUBr16u8  
  movw $0, %ax
  subw $0x7F, %ax
  
  movw $1, %ax
  subw $0x7F, %ax
  
  movw $0x7F, %ax
  subw $0x7F, %ax
  
  movw $0xFF, %ax
  subw $0x7F, %ax
  
  movw $0x7FFF, %ax
  subw $0x7F, %ax
  
  movw $0xFFFF, %ax
  subw $0x7F, %ax

  // SUBr16s8  
  movw $0, %ax
  subw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $1, %ax
  subw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0x7F, %ax
  subw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0xFF, %ax
  subw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0x7FFF, %ax
  subw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0xFFFF, %ax
  subw $0xFF /* Sign-extended to $16-bits */, %ax

  // SUBr16i16  
  movw $0, %ax
  subw $0xFFFF, %ax
  
  movw $1, %ax
  subw $0xFFFF, %ax
  
  movw $0x7F, %ax
  subw $0xFFFF, %ax
  
  movw $0xFF, %ax
  subw $0xFFFF, %ax
  
  movw $0x7FFF, %ax
  subw $0xFFFF, %ax
  
  movw $0xFFFF, %ax
  subw $0xFFFF, %ax

  // SUBr16r16  
  movw $0, %ax
  movw $0, %bx
  subw %bx, %ax
  
  movw $1, %ax
  movw $0, %bx
  subw %bx, %ax
  
  movw $0xFF, %ax
  movw $1, %bx
  subw %bx, %ax
  
  movw $0x7F, %ax
  movw $1, %bx
  subw %bx, %ax
  
  movw $0x7F, %ax
  movw $0xFF, %bx
  subw %bx, %ax
  
  movw $0xFF, %ax
  movw $0xFF, %bx
  subw %bx, %ax
  
  movw $0xFF, %ax
  movw $0x7F, %bx
  subw %bx, %ax
  
  movw $0x7FFF, %ax
  movw $1, %bx
  subw %bx, %ax
  
  movw $0x7FFF, %ax
  movw $0xFFFF, %bx
  subw %bx, %ax
  
  movw $0xFFFF, %ax
  movw $0x7FFF, %bx
  subw %bx, %ax
  
  movw $0xFFFF, %ax
  movw $0xFFFF, %bx
  subw %bx, %ax

  // SUBr32u8  
  movl $0, %eax
  subl $0x7F, %eax
  
  movl $1, %eax
  subl $0x7F, %eax
  
  movl $0x7F, %eax
  subl $0x7F, %eax
  
  movl $0xFF, %eax
  subl $0x7F, %eax
  
  movl $0x7FFF, %eax
  subl $0x7F, %eax
  
  movl $0xFFFF, %eax
  subl $0x7F, %eax
  
  movl $0x7FFFFFFF, %eax
  subl $0x7F, %eax
  
  movl $0xFFFFFFFF, %eax
  subl $0x7F, %eax

  // SUBr32s8  
  movl $0, %eax
  subl $0xFF, %eax
  
  movl $1, %eax
  subl $0xFF, %eax
  
  movl $0x7F, %eax
  subl $0xFF, %eax
  
  movl $0xFF, %eax
  subl $0xFF, %eax
  
  movl $0x7FFF, %eax
  subl $0xFF, %eax
  
  movl $0xFFFF, %eax
  subl $0xFF, %eax
  
  movl $0x7FFFFFFF, %eax
  subl $0xFF, %eax
  
  movl $0xFFFFFFFF, %eax
  subl $0xFF, %eax

  // SUBr32i32  
  movl $0, %eax
  subl $0x7FFFFFFF, %eax
  
  movl $1, %eax
  subl $0x7FFFFFFF, %eax
  
  movl $0x7F, %eax
  subl $0x7FFFFFFF, %eax
  
  movl $0xFF, %eax
  subl $0x7FFFFFFF, %eax
  
  movl $0x7FFF, %eax
  subl $0x7FFFFFFF, %eax
  
  movl $0xFFFF, %eax
  subl $0x7FFFFFFF, %eax
  
  movl $0x7FFFFFFF, %eax
  subl $0x7FFFFFFF, %eax
  
  movl $0xFFFFFFFF, %eax
  subl $0x7FFFFFFF, %eax

  // SUBr32r32  
  movl $0, %eax
  movl $0, %ebx
  subl %ebx, %eax
  
  movl $1, %eax
  movl $0, %ebx
  subl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $1, %ebx
  subl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  subl %ebx, %eax
  
  movl $0x7FFFFFFF, %eax
  movl $1, %ebx
  subl %ebx, %eax
  
  movl $0, %eax
  movl $0x10, %ebx
  subl %ebx, %eax
  
  movl $0x7F, %eax
  movl $0x10, %ebx
  subl %ebx, %eax

  // SUBr64u8_64  
  movq $0, %rax
  subq $0x7F, %rax
  
  movq $1, %rax
  subq $0x7F, %rax
  
  movq $0x7F, %rax
  subq $0x7F, %rax
  
  movq $0xFF, %rax
  subq $0x7F, %rax
  
  movq $0x7FFF, %rax
  subq $0x7F, %rax
  
  movq $0xFFFF, %rax
  subq $0x7F, %rax
  
  movq $0x7FFFFFFF, %rax
  subq $0x7F, %rax
  
  movq $0xFFFFFFFF, %rax
  subq $0x7F, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  subq $0x7F, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  subq $0x7F, %rax

  // SUBr64s8_64  
  movq $0, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $1, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $0x7F, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $0xFF, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFF, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFF, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFF, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFF, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  subq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  subq $0xFF /* Sign-extended */, %rax

  // SUBr64u32_64  
  movq $0, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $1, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $0x7F, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $0xFF, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $0x7FFF, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $0xFFFF, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFF, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFF, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  subq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  subq $0x7FFFFFFF, %rax



  // SUBr64r64_64  
  movq $0, %rax
  movq $0, %rbx
  subq %rbx, %rax
  
  movq $1, %rax
  movq $0, %rbx
  subq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $1, %rbx
  subq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  subq %rbx, %rax
  
  movq $0x7FFFFFFF, %rax
  movq $1, %rbx
  subq %rbx, %rax
  
  movq $0, %rax
  movq $0x10, %rbx
  subq %rbx, %rax
  
  movq $0x7F, %rax
  movq $0x10, %rbx
  subq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $1, %rbx
  subq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  subq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  subq %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  subq %rbx, %rax

  nop
