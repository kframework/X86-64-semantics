.section .text
.globl _start

_start:
  // TESTal  
  movl $0, %eax
  testb $1, %al
  
  movl $1, %eax
  testb $1, %al
  
  movl $0x7F, %eax
  testb $1, %al
  
  movl $0xFF, %eax
  testb $1, %al

  // TESTax  
  movl $0, %eax
  testw $1, %ax
  
  movl $1, %eax
  testw $1, %ax
  
  movl $0x7F, %eax
  testw $1, %ax
  
  movl $0xFF, %eax
  testw $1, %ax
  
  movl $0x7FFF, %eax
  testw $1, %ax
  
  movl $0xFFFF, %eax
  testw $1, %ax

  // TESTeax  
  movl $0, %eax
  testl $1, %eax
  
  movl $1, %eax
  testl $1, %eax
  
  movl $0x7F, %eax
  testl $1, %eax
  
  movl $0xFF, %eax
  testl $1, %eax
  
  movl $0x7FFF, %eax
  testl $1, %eax
  
  movl $0xFFFF, %eax
  testl $1, %eax
  
  movl $0x7FFFFFFF, %eax
  testl $1, %eax
  
  movl $0xFFFFFFFF, %eax
  testl $1, %eax

  // TESTr8i8  
  movl $0, %ebx
  testb $1, %bl
  
  movl $1, %ebx
  testb $1, %bl
  
  movl $0x7F, %ebx
  testb $1, %bl
  
  movl $0xFF, %ebx
  testb $1, %bl

  // TESTr8u8_64  
  movq $0, %r8
  testb $0x7F, %r8b
  
  movq $1, %r8
  testb $0x7F, %r8b
  
  movq $0x7F, %r8
  testb $0x7F, %r8b
  
  movq $0xFF, %r8
  testb $0x7F, %r8b

  // TESTr8s8_64  
  movq $0, %r8
  testb $0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $1, %r8
  testb $0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $0x7F, %r8
  testb $0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $0xFF, %r8
  testb $0xFF /* Sign-extended to $64-bits */, %r8b

  // TESTr8r8  
  movl $0, %ebx
  movl $0, %eax
  testb %al, %bl
  
  movl $1, %ebx
  movl $0, %eax
  testb %al, %bl
  
  movl $0xFF, %ebx
  movl $1, %eax
  testb %al, %bl
  
  movl $0x7F, %ebx
  movl $1, %eax
  testb %al, %bl
  
  movl $0x7F, %ebx
  movl $0xFF, %eax
  testb %al, %bl
  
  movl $0xFF, %ebx
  movl $0xFF, %eax
  testb %al, %bl

  // TESTr8r8_64  
  movb  $0, %al
  movb  $0, %bl
  testb %bl, %al
  
  movb  $1, %al
  movb  $0, %bl
  testb %bl, %al
  
  movb  $0xFF, %al
  movb  $1, %bl
  testb %bl, %al
  
  movb  $0x7F, %al
  movb  $1, %bl
  testb %bl, %al
  
  movb  $0x7F, %al
  movb  $0xFF, %bl
  testb %bl, %al
  
  movb  $0xFF, %al
  movb  $0xFF, %bl
  testb %bl, %al

  // TESTr16u8  
  movw  $0, %ax
  testw $0x7F, %ax
  
  movw  $1, %ax
  testw $0x7F, %ax
  
  movw  $0x7F, %ax
  testw $0x7F, %ax
  
  movw  $0xFF, %ax
  testw $0x7F, %ax
  
  movw  $0x7FFF, %ax
  testw $0x7F, %ax
  
  movw  $0xFFFF, %ax
  testw $0x7F, %ax

  // TESTr16s8  
  movw  $0, %ax
  testw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $1, %ax
  testw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0x7F, %ax
  testw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0xFF, %ax
  testw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0x7FFF, %ax
  testw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0xFFFF, %ax
  testw $0xFF /* Sign-extended to $16-bits */, %ax

  // TESTr16i16  
  movw  $0, %ax
  testw $0xFFFF, %ax
  
  movw  $1, %ax
  testw $0xFFFF, %ax
  
  movw  $0x7F, %ax
  testw $0xFFFF, %ax
  
  movw  $0xFF, %ax
  testw $0xFFFF, %ax
  
  movw  $0x7FFF, %ax
  testw $0xFFFF, %ax
  
  movw  $0xFFFF, %ax
  testw $0xFFFF, %ax

  // TESTr16r16  
  movw  $0, %ax
  movw  $0, %bx
  testw %bx, %ax
  
  movw  $1, %ax
  movw  $0, %bx
  testw %bx, %ax
  
  movw  $0xFF, %ax
  movw  $1, %bx
  testw %bx, %ax
  
  movw  $0x7F, %ax
  movw  $1, %bx
  testw %bx, %ax
  
  movw  $0x7F, %ax
  movw  $0xFF, %bx
  testw %bx, %ax
  
  movw  $0xFF, %ax
  movw  $0xFF, %bx
  testw %bx, %ax
  
  movw  $0x7FFF, %ax
  movw  $1, %bx
  testw %bx, %ax
  
  movw  $0x7FFF, %ax
  movw  $0xFFFF, %bx
  testw %bx, %ax
  
  movw  $0xFFFF, %ax
  movw  $0xFFFF, %bx
  testw %bx, %ax

  // TESTr32u8  
  movl $0, %eax
  testl $0x7F, %eax
  
  movl $1, %eax
  testl $0x7F, %eax
  
  movl $0x7F, %eax
  testl $0x7F, %eax
  
  movl $0xFF, %eax
  testl $0x7F, %eax
  
  movl $0x7FFF, %eax
  testl $0x7F, %eax
  
  movl $0xFFFF, %eax
  testl $0x7F, %eax
  
  movl $0x7FFFFFFF, %eax
  testl $0x7F, %eax
  
  movl $0xFFFFFFFF, %eax
  testl $0x7F, %eax

  // TESTr32s8  
  movl $0, %eax
  testl $0xFF, %eax
  
  movl $1, %eax
  testl $0xFF, %eax
  
  movl $0x7F, %eax
  testl $0xFF, %eax
  
  movl $0xFF, %eax
  testl $0xFF, %eax
  
  movl $0x7FFF, %eax
  testl $0xFF, %eax
  
  movl $0xFFFF, %eax
  testl $0xFF, %eax
  
  movl $0x7FFFFFFF, %eax
  testl $0xFF, %eax
  
  movl $0xFFFFFFFF, %eax
  testl $0xFF, %eax

  // TESTr32i32  
  movl $0, %eax
  testl $0x7FFFFFFF, %eax
  
  movl $1, %eax
  testl $0x7FFFFFFF, %eax
  
  movl $0x7F, %eax
  testl $0x7FFFFFFF, %eax
  
  movl $0xFF, %eax
  testl $0x7FFFFFFF, %eax
  
  movl $0x7FFF, %eax
  testl $0x7FFFFFFF, %eax
  
  movl $0xFFFF, %eax
  testl $0x7FFFFFFF, %eax
  
  movl $0x7FFFFFFF, %eax
  testl $0x7FFFFFFF, %eax
  
  movl $0xFFFFFFFF, %eax
  testl $0x7FFFFFFF, %eax

  // TESTr32r32  
  movl $0, %eax
  movl $0, %ebx
  testl %ebx, %eax
  
  movl $1, %eax
  movl $1, %ebx
  testl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  testl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  testl %ebx, %eax
  
  movl $0x7FFFFFFF, %eax
  movl $0x7FFFFFFF, %ebx
  testl %ebx, %eax
  
  movl $0, %eax
  movl $0, %ebx
  testl %ebx, %eax
  
  movl $0x7F, %eax
  movl $0x7F, %ebx
  testl %ebx, %eax

  // TESTr64u8_64  
  movq $0, %rax
  testq $0x7F, %rax
  
  movq $1, %rax
  testq $0x7F, %rax
  
  movq $0x7F, %rax
  testq $0x7F, %rax
  
  movq $0xFF, %rax
  testq $0x7F, %rax
  
  movq $0x7FFF, %rax
  testq $0x7F, %rax
  
  movq $0xFFFF, %rax
  testq $0x7F, %rax
  
  movq $0x7FFFFFFF, %rax
  testq $0x7F, %rax
  
  movq $0xFFFFFFFF, %rax
  testq $0x7F, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  testq $0x7F, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  testq $0x7F, %rax

  // TESTr64s8_64  
  movq $0, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $1, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $0x7F, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $0xFF, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFF, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFF, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFF, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFF, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  testq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  testq $0xFF /* Sign-extended */, %rax

  // TESTr64u32_64  
  movq $0, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $1, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $0x7F, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $0xFF, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $0x7FFF, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $0xFFFF, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFF, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFF, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  testq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  testq $0x7FFFFFFF, %rax


  // TESTr64r64_64  
  movq $0, %rax
  movq $0, %rbx
  testq %rbx, %rax
  
  movq $1, %rax
  movq $1, %rbx
  testq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  testq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  testq %rbx, %rax
  
  movq $0x7FFFFFFF, %rax
  movq $0x7FFFFFFF, %rbx
  testq %rbx, %rax
  
  movq $0, %rax
  movq $0, %rbx
  testq %rbx, %rax
  
  movq $0x7F, %rax
  movq $0x7F, %rbx
  testq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  testq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  testq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  testq %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  testq %rbx, %rax

  nop
