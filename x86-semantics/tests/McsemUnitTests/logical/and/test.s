.section .text
.globl _start

_start:
  // ANDal  
  movl $0, %eax
  andb $1, %al
  
  movl $1, %eax
  andb $1, %al
  
  movl $0x7F, %eax
  andb $1, %al
  
  movl $0xFF, %eax
  andb $1, %al

  // ANDax  
  movl $0, %eax
  andw $1, ax
  
  movl $1, %eax
  andw $1, ax
  
  movl $0x7F, %eax
  andw $1, ax
  
  movl $0xFF, %eax
  andw $1, ax
  
  movl $0x7FFF, %eax
  andw $1, ax
  
  movl $0xFFFF, %eax
  andw $1, ax

  // ANDeax  
  movl $0, %eax
  andl $1, %eax
  
  movl $1, %eax
  andl $1, %eax
  
  movl $0x7F, %eax
  andl $1, %eax
  
  movl $0xFF, %eax
  andl $1, %eax
  
  movl $0x7FFF, %eax
  andl $1, %eax
  
  movl $0xFFFF, %eax
  andl $1, %eax
  
  movl $0x7FFFFFFF, %eax
  andl $1, %eax
  
  movl $0xFFFFFFFF, %eax
  andl $1, %eax

  // ANDr8i8  
  movl $0, ebx
  andb $1, bl
  
  movl $1, ebx
  andb $1, bl
  
  movl $0x7F, ebx
  andb $1, bl
  
  movl $0xFF, ebx
  andb $1, bl

  // ANDr8u8_64  
  movq $0, %r8
  andb $0x7F, %r8b
  
  movq $1, %r8
  andb $0x7F, %r8b
  
  movq $0x7F, %r8
  andb $0x7F, %r8b
  
  movq $0xFF, %r8
  andb $0x7F, %r8b

  // ANDr8s8_64  
  movq $0, %r8
  andb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $1, %r8
  andb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $0x7F, %r8
  andb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $0xFF, %r8
  andb 0xFF /* Sign-extended to $64-bits */, %r8b

  // ANDr8r8  
  movl $0, ebx
  movl $0, %eax
  andb %al, bl
  
  movl $1, ebx
  movl $0, %eax
  andb %al, bl
  
  movl $0xFF, ebx
  movl $1, %eax
  andb %al, bl
  
  movl $0x7F, ebx
  movl $1, %eax
  andb %al, bl
  
  movl $0x7F, ebx
  movl $0xFF, %eax
  andb %al, bl
  
  movl $0xFF, ebx
  movl $0xFF, %eax
  andb %al, bl

  // ANDr8r8_64  
  movb  $0, %al
  movb  $0, %bl
  andb %bl, %al
  
  movb  $1, %al
  movb  $0, %bl
  andb %bl, %al
  
  movb  $0xFF, %al
  movb  $1, %bl
  andb %bl, %al
  
  movb  $0x7F, %al
  movb  $1, %bl
  andb %bl, %al
  
  movb  $0x7F, %al
  movb  $0xFF, %bl
  andb %bl, %al
  
  movb  $0xFF, %al
  movb  $0xFF, %bl
  andb %bl, %al

  // ANDr16u8  
  movw  $0, %ax
  andw $0x7F, %ax
  
  movw  $1, %ax
  andw $0x7F, %ax
  
  movw  $0x7F, %ax
  andw $0x7F, %ax
  
  movw  $0xFF, %ax
  andw $0x7F, %ax
  
  movw  $0x7FFF, %ax
  andw $0x7F, %ax
  
  movw  $0xFFFF, %ax
  andw $0x7F, %ax

  // ANDr16s8  
  movw  $0, %ax
  andw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $1, %ax
  andw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0x7F, %ax
  andw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0xFF, %ax
  andw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0x7FFF, %ax
  andw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0xFFFF, %ax
  andw 0xFF /* Sign-extended to $16-bits */, %ax

  // ANDr16i16  
  movw  $0, %ax
  andw $0xFFFF, %ax
  
  movw  $1, %ax
  andw $0xFFFF, %ax
  
  movw  $0x7F, %ax
  andw $0xFFFF, %ax
  
  movw  $0xFF, %ax
  andw $0xFFFF, %ax
  
  movw  $0x7FFF, %ax
  andw $0xFFFF, %ax
  
  movw  $0xFFFF, %ax
  andw $0xFFFF, %ax

  // ANDr16r16  
  movw  $0, %ax
  movw  $0, %bx
  andw %bx, %ax
  
  movw  $1, %ax
  movw  $0, %bx
  andw %bx, %ax
  
  movw  $0xFF, %ax
  movw  $1, %bx
  andw %bx, %ax
  
  movw  $0x7F, %ax
  movw  $1, %bx
  andw %bx, %ax
  
  movw  $0x7F, %ax
  movw  $0xFF, %bx
  andw %bx, %ax
  
  movw  $0xFF, %ax
  movw  $0xFF, %bx
  andw %bx, %ax
  
  movw  $0x7FFF, %ax
  movw  $1, %bx
  andw %bx, %ax
  
  movw  $0x7FFF, %ax
  movw  $0xFFFF, %bx
  andw %bx, %ax
  
  movw  $0xFFFF, %ax
  movw  $0xFFFF, %bx
  andw %bx, %ax

  // ANDr32u8  
  movl $0, %eax
  andl $0x7F, %eax
  
  movl $1, %eax
  andl $0x7F, %eax
  
  movl $0x7F, %eax
  andl $0x7F, %eax
  
  movl $0xFF, %eax
  andl $0x7F, %eax
  
  movl $0x7FFF, %eax
  andl $0x7F, %eax
  
  movl $0xFFFF, %eax
  andl $0x7F, %eax
  
  movl $0x7FFFFFFF, %eax
  andl $0x7F, %eax
  
  movl $0xFFFFFFFF, %eax
  andl $0x7F, %eax

  // ANDr32s8  
  movl $0, %eax
  andl $0xFF, %eax
  
  movl $1, %eax
  andl $0xFF, %eax
  
  movl $0x7F, %eax
  andl $0xFF, %eax
  
  movl $0xFF, %eax
  andl $0xFF, %eax
  
  movl $0x7FFF, %eax
  andl $0xFF, %eax
  
  movl $0xFFFF, %eax
  andl $0xFF, %eax
  
  movl $0x7FFFFFFF, %eax
  andl $0xFF, %eax
  
  movl $0xFFFFFFFF, %eax
  andl $0xFF, %eax

  // ANDr32i32  
  movl $0, %eax
  andl $0x7FFFFFFF, %eax
  
  movl $1, %eax
  andl $0x7FFFFFFF, %eax
  
  movl $0x7F, %eax
  andl $0x7FFFFFFF, %eax
  
  movl $0xFF, %eax
  andl $0x7FFFFFFF, %eax
  
  movl $0x7FFF, %eax
  andl $0x7FFFFFFF, %eax
  
  movl $0xFFFF, %eax
  andl $0x7FFFFFFF, %eax
  
  movl $0x7FFFFFFF, %eax
  andl $0x7FFFFFFF, %eax
  
  movl $0xFFFFFFFF, %eax
  andl $0x7FFFFFFF, %eax

  // ANDr32r32  
  movl $0, %eax
  movl $0, %ebx
  andl %ebx, %eax
  
  movl $1, %eax
  movl $1, %ebx
  andl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  andl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  andl %ebx, %eax
  
  movl $0x7FFFFFFF, %eax
  movl $0x7FFFFFFF, %ebx
  andl %ebx, %eax
  
  movl $0, %eax
  movl $0, %ebx
  andl %ebx, %eax
  
  movl $0x7F, %eax
  movl $0x7F, %ebx
  andl %ebx, %eax

  // ANDr64u8_64  
  movq $0, %rax
  andq $0x7F, %rax
  
  movq $1, %rax
  andq $0x7F, %rax
  
  movq $0x7F, %rax
  andq $0x7F, %rax
  
  movq $0xFF, %rax
  andq $0x7F, %rax
  
  movq $0x7FFF, %rax
  andq $0x7F, %rax
  
  movq $0xFFFF, %rax
  andq $0x7F, %rax
  
  movq $0x7FFFFFFF, %rax
  andq $0x7F, %rax
  
  movq $0xFFFFFFFF, %rax
  andq $0x7F, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  andq $0x7F, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  andq $0x7F, %rax

  // ANDr64s8_64  
  movq $0, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $1, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $0x7F, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $0xFF, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFF, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFF, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFF, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFF, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  andq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  andq $0xFF /* Sign-extended */, %rax

  // ANDr64u32_64  
  movq $0, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $1, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $0x7F, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $0xFF, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $0x7FFF, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $0xFFFF, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFF, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFF, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  andq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  andq $0x7FFFFFFF, %rax


  // ANDr64r64_64  
  movq $0, %rax
  movq $0, %rbx
  andq %rbx, %rax
  
  movq $1, %rax
  movq $1, %rbx
  andq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  andq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  andq %rbx, %rax
  
  movq $0x7FFFFFFF, %rax
  movq $0x7FFFFFFF, %rbx
  andq %rbx, %rax
  
  movq $0, %rax
  movq $0, %rbx
  andq %rbx, %rax
  
  movq $0x7F, %rax
  movq $0x7F, %rbx
  andq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  andq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  andq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  andq %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  andq %rbx, %rax

  nop
