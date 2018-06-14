.section .text
.globl _start

_start:
  // ADCal  
  movl $0, %eax
  adcb $1, %al
  
  movl $1, %eax
  adcb $1, %al
  
  movl $0x7F, %eax
  adcb $1, %al
  
  movl $0xFF, %eax
  adcb $1, %al

  // ADCax  
  movl $0, %eax
  adcw $1, %ax
  
  movl $1, %eax
  adcw $1, %ax
  
  movl $0x7F, %eax
  adcw $1, %ax
  
  movl $0xFF, %eax
  adcw $1, %ax
  
  movl $0x7FFF, %eax
  adcw $1, %ax
  
  movl $0xFFFF, %eax
  adcw $1, %ax

  // ADCeax  
  movl $0, %eax
  adcl $1, %eax
  
  movl $1, %eax
  adcl $1, %eax
  
  movl $0x7F, %eax
  adcl $1, %eax
  
  movl $0xFF, %eax
  adcl $1, %eax
  
  movl $0x7FFF, %eax
  adcl $1, %eax
  
  movl $0xFFFF, %eax
  adcl $1, %eax
  
  movl $0x7FFFFFFF, %eax
  adcl $1, %eax
  
  movl $0xFFFFFFFF, %eax
  adcl $1, %eax

  // ADCr8i8  
  movl $0, %ebx
  adcb $1, %bl
  
  movl $1, %ebx
  adcb $1, %bl
  
  movl $0x7F, %ebx
  adcb $1, %bl
  
  movl $0xFF, %ebx
  adcb $1, %bl

  // ADCr8u8_64  
  movq $0, %r8
  adcb $0x7F, %r8b
  
  movq $1, %r8
  adcb $0x7F, %r8b
  
  movq $0x7F, %r8
  adcb $0x7F, %r8b
  
  movq $0xFF, %r8
  adcb $0x7F, %r8b

  // ADCr8s8_64  
  movq $0, %r8
  adcb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $1, %r8
  adcb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $0x7F, %r8
  adcb $0xFF /* Sign-extended to 64-bits */, %r8b
  
  movq $0xFF, %r8
  adcb $0xFF /* Sign-extended to 64-bits */, %r8b

  // ADCr8r8  
  movl $0, %ebx
  movl $0, %eax
  adcb %al, %bl
  
  movl $1, %ebx
  movl $0, %eax
  adcb %al, %bl
  
  movl $0xFF, %ebx
  movl $1, %eax
  adcb %al, %bl
  
  movl $0x7F, %ebx
  movl $1, %eax
  adcb %al, %bl
  
  movl $0x7F, %ebx
  movl $0xFF, %eax
  adcb %al, %bl
  
  movl $0xFF, %ebx
  movl $0xFF, %eax
  adcb %al, %bl

  // ADCr8r8_64  
  movb $0, %al
  movb $0, %bl
  adcb %bl, %al
  
  movb $1, %al
  movb $0, %bl
  adcb %bl, %al
  
  movb $0xFF, %al
  movb $1, %bl
  adcb %bl, %al
  
  movb $0x7F, %al
  movb $1, %bl
  adcb %bl, %al
  
  movb $0x7F, %al
  movb $0xFF, %bl
  adcb %bl, %al
  
  movb $0xFF, %al
  movb $0xFF, %bl
  adcb %bl, %al

  // ADCr16u8  
  movw $0, %ax
  adcw $0x7F, %ax
  
  movw $1, %ax
  adcw $0x7F, %ax
  
  movw $0x7F, %ax
  adcw $0x7F, %ax
  
  movw $0xFF, %ax
  adcw $0x7F, %ax
  
  movw $0x7FFF, %ax
  adcw $0x7F, %ax
  
  movw $0xFFFF, %ax
  adcw $0x7F, %ax

  // ADCr16s8  
  movw $0, %ax
  adcw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $1, %ax
  adcw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0x7F, %ax
  adcw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0xFF, %ax
  adcw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0x7FFF, %ax
  adcw $0xFF /* Sign-extended to $16-bits */, %ax
  
  movw $0xFFFF, %ax
  adcw $0xFF /* Sign-extended to $16-bits */, %ax

  // ADCr16i16  
  movw $0, %ax
  adcw $0xFFFF, %ax
  
  movw $1, %ax
  adcw $0xFFFF, %ax
  
  movw $0x7F, %ax
  adcw $0xFFFF, %ax
  
  movw $0xFF, %ax
  adcw $0xFFFF, %ax
  
  movw $0x7FFF, %ax
  adcw $0xFFFF, %ax
  
  movw $0xFFFF, %ax
  adcw $0xFFFF, %ax

  // ADCr16r16  
  movw $0, %ax
  movw $0, %bx
  adcw %bx, %ax
  
  movw $1, %ax
  movw $0, %bx
  adcw %bx, %ax
  
  movw $0xFF, %ax
  movw $1, %bx
  adcw %bx, %ax
  
  movw $0x7F, %ax
  movw $1, %bx
  adcw %bx, %ax
  
  movw $0x7F, %ax
  movw $0xFF, %bx
  adcw %bx, %ax
  
  movw $0xFF, %ax
  movw $0xFF, %bx
  adcw %bx, %ax
  
  movw $0xFF, %ax
  movw $0x7F, %bx
  adcw %bx, %ax
  
  movw $0x7FFF, %ax
  movw $1, %bx
  adcw %bx, %ax
  
  movw $0x7FFF, %ax
  movw $0xFFFF, %bx
  adcw %bx, %ax
  
  movw $0xFFFF, %ax
  movw $0x7FFF, %bx
  adcw %bx, %ax
  
  movw $0xFFFF, %ax
  movw $0xFFFF, %bx
  adcw %bx, %ax

  // ADCr32u8  
  movl $0, %eax
  adcl $0x7F, %eax
  
  movl $1, %eax
  adcl $0x7F, %eax
  
  movl $0x7F, %eax
  adcl $0x7F, %eax
  
  movl $0xFF, %eax
  adcl $0x7F, %eax
  
  movl $0x7FFF, %eax
  adcl $0x7F, %eax
  
  movl $0xFFFF, %eax
  adcl $0x7F, %eax
  
  movl $0x7FFFFFFF, %eax
  adcl $0x7F, %eax
  
  movl $0xFFFFFFFF, %eax
  adcl $0x7F, %eax

  // ADCr32s8  
  movl $0, %eax
  adcl $0xFF, %eax
  
  movl $1, %eax
  adcl $0xFF, %eax
  
  movl $0x7F, %eax
  adcl $0xFF, %eax
  
  movl $0xFF, %eax
  adcl $0xFF, %eax
  
  movl $0x7FFF, %eax
  adcl $0xFF, %eax
  
  movl $0xFFFF, %eax
  adcl $0xFF, %eax
  
  movl $0x7FFFFFFF, %eax
  adcl $0xFF, %eax
  
  movl $0xFFFFFFFF, %eax
  adcl $0xFF, %eax

  // ADCr32i32  
  movl $0, %eax
  adcl $0x7FFFFFFF, %eax
  
  movl $1, %eax
  adcl $0x7FFFFFFF, %eax
  
  movl $0x7F, %eax
  adcl $0x7FFFFFFF, %eax
  
  movl $0xFF, %eax
  adcl $0x7FFFFFFF, %eax
  
  movl $0x7FFF, %eax
  adcl $0x7FFFFFFF, %eax
  
  movl $0xFFFF, %eax
  adcl $0x7FFFFFFF, %eax
  
  movl $0x7FFFFFFF, %eax
  adcl $0x7FFFFFFF, %eax
  
  movl $0xFFFFFFFF, %eax
  adcl $0x7FFFFFFF, %eax

  // ADCr32r32  
  movl $0, %eax
  movl $0, %ebx
  adcl %ebx, %eax
  
  movl $1, %eax
  movl $0, %ebx
  adcl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $1, %ebx
  adcl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  adcl %ebx, %eax
  
  movl $0x7FFFFFFF, %eax
  movl $1, %ebx
  adcl %ebx, %eax
  
  movl $0, %eax
  movl $0x10, %ebx
  adcl %ebx, %eax
  
  movl $0x7F, %eax
  movl $0x10, %ebx
  adcl %ebx, %eax

  // ADCr64u8_64  
  movq $0, %rax
  adcq $0x7F, %rax
  
  movq $1, %rax
  adcq $0x7F, %rax
  
  movq $0x7F, %rax
  adcq $0x7F, %rax
  
  movq $0xFF, %rax
  adcq $0x7F, %rax
  
  movq $0x7FFF, %rax
  adcq $0x7F, %rax
  
  movq $0xFFFF, %rax
  adcq $0x7F, %rax
  
  movq $0x7FFFFFFF, %rax
  adcq $0x7F, %rax
  
  movq $0xFFFFFFFF, %rax
  adcq $0x7F, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  adcq $0x7F, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  adcq $0x7F, %rax

  // ADCr64s8_64  
  movq $0, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $1, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $0x7F, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $0xFF, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFF, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFF, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFF, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFF, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  adcq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  adcq $0xFF /* Sign-extended */, %rax

  // ADCr64u32_64  
  movq $0, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $1, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $0x7F, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $0xFF, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $0x7FFF, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $0xFFFF, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFF, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFF, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  adcq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  adcq $0x7FFFFFFF, %rax



  // ADCr64r64_64  
  movq $0, %rax
  movq $0, %rbx
  adcq %rbx, %rax
  
  movq $1, %rax
  movq $0, %rbx
  adcq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $1, %rbx
  adcq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  adcq %rbx, %rax
  
  movq $0x7FFFFFFF, %rax
  movq $1, %rbx
  adcq %rbx, %rax
  
  movq $0, %rax
  movq $0x10, %rbx
  adcq %rbx, %rax
  
  movq $0x7F, %rax
  movq $0x10, %rbx
  adcq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $1, %rbx
  adcq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  adcq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  adcq %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  adcq %rbx, %rax

  nop
