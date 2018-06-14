.section .text
.globl _start

_start:
  // ADDal  
  movl $0, %eax
  addb $1, %al
  
  movl $1, %eax
  addb $1, %al
  
  movl $0x7F, %eax
  addb $1, %al
  
  movl $0xFF, %eax
  addb $1, %al

  // ADDax  
  movl $0, %eax
  addw $1, %ax
  
  movl $1, %eax
  addw $1, %ax
  
  movl $0x7F, %eax
  addw $1, %ax
  
  movl $0xFF, %eax
  addw $1, %ax
  
  movl $0x7FFF, %eax
  addw $1, %ax
  
  movl $0xFFFF, %eax
  addw $1, %ax

  // ADDeax  
  movl $0, %eax
  addl $1, %eax
  
  movl $1, %eax
  addl $1, %eax
  
  movl $0x7F, %eax
  addl $1, %eax
  
  movl $0xFF, %eax
  addl $1, %eax
  
  movl $0x7FFF, %eax
  addl $1, %eax
  
  movl $0xFFFF, %eax
  addl $1, %eax
  
  movl $0x7FFFFFFF, %eax
  addl $1, %eax
  
  movl $0xFFFFFFFF, %eax
  addl $1, %eax

  // ADDr8i8  
  movl $0, %ebx
  addb $1, %bl
  
  movl $1, %ebx
  addb $1, %bl
  
  movl $0x7F, %ebx
  addb $1, %bl
  
  movl $0xFF, %ebx
  addb $1, %bl

  // ADDr8u8_64  
  movq $0, %r8
  addb $0x7F, %r8b
  
  movq $1, %r8
  addb $0x7F, %r8b
  
  movq $0x7F, %r8
  addb $0x7F, %r8b
  
  movq $0xFF, %r8
  addb $0x7F, %r8b

  // ADDr8s8_64  
  movq $0, %r8
  addb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $1, %r8
  addb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $0x7F, %r8
  addb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $0xFF, %r8
  addb $0xFF /* Sign-extended to 64-bits */, %r8b

  // ADDr8r8  
  movl $0, %ebx
  movl $0, %eax
  addb %al, %bl
  
  movl $1, %ebx
  movl $0, %eax
  addb %al, %bl
  
  movl $0xFF, %ebx
  movl $1, %eax
  addb %al, %bl
  
  movl $0x7F, %ebx
  movl $1, %eax
  addb %al, %bl
  
  movl $0x7F, %ebx
  movl $0xFF, %eax
  addb %al, %bl
  
  movl $0xFF, %ebx
  movl $0xFF, %eax
  addb %al, %bl

  // ADDr8r8_64  
  movb $0, %al
  movb $0, %bl
  addb %bl, %al
  
  movb $1, %al
  movb $0, %bl
  addb %bl, %al
  
  movb $0xFF, %al
  movb $1, %bl
  addb %bl, %al
  
  movb $0x7F, %al
  movb $1, %bl
  addb %bl, %al
  
  movb $0x7F, %al
  movb $0xFF, %bl
  addb %bl, %al
  
  movb $0xFF, %al
  movb $0xFF, %bl
  addb %bl, %al

  // ADDr16u8  
  movw $0, %ax
  addw $0x7F, %ax
  
  movw $1, %ax
  addw $0x7F, %ax
  
  movw $0x7F, %ax
  addw $0x7F, %ax
  
  movw $0xFF, %ax
  addw $0x7F, %ax
  
  movw $0x7FFF, %ax
  addw $0x7F, %ax
  
  movw $0xFFFF, %ax
  addw $0x7F, %ax

  // ADDr16s8  
  movw $0, %ax
  addw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $1, %ax
  addw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0x7F, %ax
  addw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0xFF, %ax
  addw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0x7FFF, %ax
  addw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0xFFFF, %ax
  addw $0xFF /* Sign-extended to $16-bits */, %ax

  // ADDr16i16  
  movw $0, %ax
  addw $0xFFFF, %ax
  
  movw $1, %ax
  addw $0xFFFF, %ax
  
  movw $0x7F, %ax
  addw $0xFFFF, %ax
  
  movw $0xFF, %ax
  addw $0xFFFF, %ax
  
  movw $0x7FFF, %ax
  addw $0xFFFF, %ax
  
  movw $0xFFFF, %ax
  addw $0xFFFF, %ax

  // ADDr16r16  
  movw $0, %ax
  movw $0, %bx
  addw %bx, %ax
  
  movw $1, %ax
  movw $0, %bx
  addw %bx, %ax
  
  movw $0xFF, %ax
  movw $1, %bx
  addw %bx, %ax
  
  movw $0x7F, %ax
  movw $1, %bx
  addw %bx, %ax
  
  movw $0x7F, %ax
  movw $0xFF, %bx
  addw %bx, %ax
  
  movw $0xFF, %ax
  movw $0xFF, %bx
  addw %bx, %ax
  
  movw $0x7FFF, %ax
  movw $1, %bx
  addw %bx, %ax
  
  movw $0x7FFF, %ax
  movw $0xFFFF, %bx
  addw %bx, %ax
  
  movw $0xFFFF, %ax
  movw $0xFFFF, %bx
  addw %bx, %ax

  // ADDr32u8  
  movl $0, %eax
  addl $0x7F, %eax
  
  movl $1, %eax
  addl $0x7F, %eax
  
  movl $0x7F, %eax
  addl $0x7F, %eax
  
  movl $0xFF, %eax
  addl $0x7F, %eax
  
  movl $0x7FFF, %eax
  addl $0x7F, %eax
  
  movl $0xFFFF, %eax
  addl $0x7F, %eax
  
  movl $0x7FFFFFFF, %eax
  addl $0x7F, %eax
  
  movl $0xFFFFFFFF, %eax
  addl $0x7F, %eax

  // ADDr32s8  
  movl $0, %eax
  addl $0xFF, %eax
  
  movl $1, %eax
  addl $0xFF, %eax
  
  movl $0x7F, %eax
  addl $0xFF, %eax
  
  movl $0xFF, %eax
  addl $0xFF, %eax
  
  movl $0x7FFF, %eax
  addl $0xFF, %eax
  
  movl $0xFFFF, %eax
  addl $0xFF, %eax
  
  movl $0x7FFFFFFF, %eax
  addl $0xFF, %eax
  
  movl $0xFFFFFFFF, %eax
  addl $0xFF, %eax

  // ADDr32i32  
  movl $0, %eax
  addl $0x7FFFFFFF, %eax
  
  movl $1, %eax
  addl $0x7FFFFFFF, %eax
  
  movl $0x7F, %eax
  addl $0x7FFFFFFF, %eax
  
  movl $0xFF, %eax
  addl $0x7FFFFFFF, %eax
  
  movl $0x7FFF, %eax
  addl $0x7FFFFFFF, %eax
  
  movl $0xFFFF, %eax
  addl $0x7FFFFFFF, %eax
  
  movl $0x7FFFFFFF, %eax
  addl $0x7FFFFFFF, %eax
  
  movl $0xFFFFFFFF, %eax
  addl $0x7FFFFFFF, %eax

  // ADDr32r32  
  movl $0, %eax
  movl $0, %ebx
  addl %ebx, %eax
  
  movl $1, %eax
  movl $0, %ebx
  addl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $1, %ebx
  addl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  addl %ebx, %eax
  
  movl $0x7FFFFFFF, %eax
  movl $1, %ebx
  addl %ebx, %eax
  
  movl $0, %eax
  movl $0x10, %ebx
  addl %ebx, %eax
  
  movl $0x7F, %eax
  movl $0x10, %ebx
  addl %ebx, %eax

  // ADDr64u8_64  
  movq $0, %rax
  addq $0x7F, %rax
  
  movq $1, %rax
  addq $0x7F, %rax
  
  movq $0x7F, %rax
  addq $0x7F, %rax
  
  movq $0xFF, %rax
  addq $0x7F, %rax
  
  movq $0x7FFF, %rax
  addq $0x7F, %rax
  
  movq $0xFFFF, %rax
  addq $0x7F, %rax
  
  movq $0x7FFFFFFF, %rax
  addq $0x7F, %rax
  
  movq $0xFFFFFFFF, %rax
  addq $0x7F, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  addq $0x7F, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  addq $0x7F, %rax

  // ADDr64s8_64  
  movq $0, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $1, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $0x7F, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $0xFF, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFF, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFF, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFF, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFF, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  addq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  addq $0xFF /* Sign-extended */, %rax

  // ADDr64u32_64  
  movq $0, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $1, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $0x7F, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $0xFF, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $0x7FFF, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $0xFFFF, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFF, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFF, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  addq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  addq $0x7FFFFFFF, %rax



  // ADDr64r64_64  
  movq $0, %rax
  movq $0, %rbx
  addq %rbx, %rax
  
  movq $1, %rax
  movq $0, %rbx
  addq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $1, %rbx
  addq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  addq %rbx, %rax
  
  movq $0x7FFFFFFF, %rax
  movq $1, %rbx
  addq %rbx, %rax
  
  movq $0, %rax
  movq $0x10, %rbx
  addq %rbx, %rax
  
  movq $0x7F, %rax
  movq $0x10, %rbx
  addq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $1, %rbx
  addq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  addq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  addq %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  addq %rbx, %rax

  nop
