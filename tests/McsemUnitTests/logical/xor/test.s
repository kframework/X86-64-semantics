.section .text
.globl _start

_start:
  // XORal  
  movl $0, %eax
  xorb $1, %al
  
  movl $1, %eax
  xorb $1, %al
  
  movl $0x7F, %eax
  xorb $1, %al
  
  movl $0xFF, %eax
  xorb $1, %al

  // XORax  
  movl $0, %eax
  xorw $1, ax
  
  movl $1, %eax
  xorw $1, ax
  
  movl $0x7F, %eax
  xorw $1, ax
  
  movl $0xFF, %eax
  xorw $1, ax
  
  movl $0x7FFF, %eax
  xorw $1, ax
  
  movl $0xFFFF, %eax
  xorw $1, ax

  // XOReax  
  movl $0, %eax
  xorl $1, %eax
  
  movl $1, %eax
  xorl $1, %eax
  
  movl $0x7F, %eax
  xorl $1, %eax
  
  movl $0xFF, %eax
  xorl $1, %eax
  
  movl $0x7FFF, %eax
  xorl $1, %eax
  
  movl $0xFFFF, %eax
  xorl $1, %eax
  
  movl $0x7FFFFFFF, %eax
  xorl $1, %eax
  
  movl $0xFFFFFFFF, %eax
  xorl $1, %eax

  // XORr8i8  
  movl $0, ebx
  xorb $1, bl
  
  movl $1, ebx
  xorb $1, bl
  
  movl $0x7F, ebx
  xorb $1, bl
  
  movl $0xFF, ebx
  xorb $1, bl

  // XORr8u8_64  
  movq $0, %r8
  xorb $0x7F, %r8b
  
  movq $1, %r8
  xorb $0x7F, %r8b
  
  movq $0x7F, %r8
  xorb $0x7F, %r8b
  
  movq $0xFF, %r8
  xorb $0x7F, %r8b

  // XORr8s8_64  
  movq $0, %r8
  xorb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $1, %r8
  xorb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $0x7F, %r8
  xorb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $0xFF, %r8
  xorb 0xFF /* Sign-extended to $64-bits */, %r8b

  // XORr8r8  
  movl $0, ebx
  movl $0, %eax
  xorb %al, bl
  
  movl $1, ebx
  movl $0, %eax
  xorb %al, bl
  
  movl $0xFF, ebx
  movl $1, %eax
  xorb %al, bl
  
  movl $0x7F, ebx
  movl $1, %eax
  xorb %al, bl
  
  movl $0x7F, ebx
  movl $0xFF, %eax
  xorb %al, bl
  
  movl $0xFF, ebx
  movl $0xFF, %eax
  xorb %al, bl

  // XORr8r8_64  
  movb  $0, %al
  movb  $0, %bl
  xorb %bl, %al
  
  movb  $1, %al
  movb  $0, %bl
  xorb %bl, %al
  
  movb  $0xFF, %al
  movb  $1, %bl
  xorb %bl, %al
  
  movb  $0x7F, %al
  movb  $1, %bl
  xorb %bl, %al
  
  movb  $0x7F, %al
  movb  $0xFF, %bl
  xorb %bl, %al
  
  movb  $0xFF, %al
  movb  $0xFF, %bl
  xorb %bl, %al

  // XORr16u8  
  movw  $0, %ax
  xorw $0x7F, %ax
  
  movw  $1, %ax
  xorw $0x7F, %ax
  
  movw  $0x7F, %ax
  xorw $0x7F, %ax
  
  movw  $0xFF, %ax
  xorw $0x7F, %ax
  
  movw  $0x7FFF, %ax
  xorw $0x7F, %ax
  
  movw  $0xFFFF, %ax
  xorw $0x7F, %ax

  // XORr16s8  
  movw  $0, %ax
  xorw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $1, %ax
  xorw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0x7F, %ax
  xorw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0xFF, %ax
  xorw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0x7FFF, %ax
  xorw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0xFFFF, %ax
  xorw 0xFF /* Sign-extended to $16-bits */, %ax

  // XORr16i16  
  movw  $0, %ax
  xorw $0xFFFF, %ax
  
  movw  $1, %ax
  xorw $0xFFFF, %ax
  
  movw  $0x7F, %ax
  xorw $0xFFFF, %ax
  
  movw  $0xFF, %ax
  xorw $0xFFFF, %ax
  
  movw  $0x7FFF, %ax
  xorw $0xFFFF, %ax
  
  movw  $0xFFFF, %ax
  xorw $0xFFFF, %ax

  // XORr16r16  
  movw  $0, %ax
  movw  $0, %bx
  xorw %bx, %ax
  
  movw  $1, %ax
  movw  $0, %bx
  xorw %bx, %ax
  
  movw  $0xFF, %ax
  movw  $1, %bx
  xorw %bx, %ax
  
  movw  $0x7F, %ax
  movw  $1, %bx
  xorw %bx, %ax
  
  movw  $0x7F, %ax
  movw  $0xFF, %bx
  xorw %bx, %ax
  
  movw  $0xFF, %ax
  movw  $0xFF, %bx
  xorw %bx, %ax
  
  movw  $0x7FFF, %ax
  movw  $1, %bx
  xorw %bx, %ax
  
  movw  $0x7FFF, %ax
  movw  $0xFFFF, %bx
  xorw %bx, %ax
  
  movw  $0xFFFF, %ax
  movw  $0xFFFF, %bx
  xorw %bx, %ax

  // XORr32u8  
  movl $0, %eax
  xorl $0x7F, %eax
  
  movl $1, %eax
  xorl $0x7F, %eax
  
  movl $0x7F, %eax
  xorl $0x7F, %eax
  
  movl $0xFF, %eax
  xorl $0x7F, %eax
  
  movl $0x7FFF, %eax
  xorl $0x7F, %eax
  
  movl $0xFFFF, %eax
  xorl $0x7F, %eax
  
  movl $0x7FFFFFFF, %eax
  xorl $0x7F, %eax
  
  movl $0xFFFFFFFF, %eax
  xorl $0x7F, %eax

  // XORr32s8  
  movl $0, %eax
  xorl $0xFF, %eax
  
  movl $1, %eax
  xorl $0xFF, %eax
  
  movl $0x7F, %eax
  xorl $0xFF, %eax
  
  movl $0xFF, %eax
  xorl $0xFF, %eax
  
  movl $0x7FFF, %eax
  xorl $0xFF, %eax
  
  movl $0xFFFF, %eax
  xorl $0xFF, %eax
  
  movl $0x7FFFFFFF, %eax
  xorl $0xFF, %eax
  
  movl $0xFFFFFFFF, %eax
  xorl $0xFF, %eax

  // XORr32i32  
  movl $0, %eax
  xorl $0x7FFFFFFF, %eax
  
  movl $1, %eax
  xorl $0x7FFFFFFF, %eax
  
  movl $0x7F, %eax
  xorl $0x7FFFFFFF, %eax
  
  movl $0xFF, %eax
  xorl $0x7FFFFFFF, %eax
  
  movl $0x7FFF, %eax
  xorl $0x7FFFFFFF, %eax
  
  movl $0xFFFF, %eax
  xorl $0x7FFFFFFF, %eax
  
  movl $0x7FFFFFFF, %eax
  xorl $0x7FFFFFFF, %eax
  
  movl $0xFFFFFFFF, %eax
  xorl $0x7FFFFFFF, %eax

  // XORr32r32  
  movl $0, %eax
  movl $0, %ebx
  xorl %ebx, %eax
  
  movl $1, %eax
  movl $1, %ebx
  xorl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  xorl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  xorl %ebx, %eax
  
  movl $0x7FFFFFFF, %eax
  movl $0x7FFFFFFF, %ebx
  xorl %ebx, %eax
  
  movl $0, %eax
  movl $0, %ebx
  xorl %ebx, %eax
  
  movl $0x7F, %eax
  movl $0x7F, %ebx
  xorl %ebx, %eax

  // XORr64u8_64  
  movq $0, %rax
  xorq $0x7F, %rax
  
  movq $1, %rax
  xorq $0x7F, %rax
  
  movq $0x7F, %rax
  xorq $0x7F, %rax
  
  movq $0xFF, %rax
  xorq $0x7F, %rax
  
  movq $0x7FFF, %rax
  xorq $0x7F, %rax
  
  movq $0xFFFF, %rax
  xorq $0x7F, %rax
  
  movq $0x7FFFFFFF, %rax
  xorq $0x7F, %rax
  
  movq $0xFFFFFFFF, %rax
  xorq $0x7F, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  xorq $0x7F, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  xorq $0x7F, %rax

  // XORr64s8_64  
  movq $0, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $1, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $0x7F, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $0xFF, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFF, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFF, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFF, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFF, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  xorq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  xorq $0xFF /* Sign-extended */, %rax

  // XORr64u32_64  
  movq $0, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $1, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $0x7F, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $0xFF, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $0x7FFF, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $0xFFFF, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFF, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFF, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  xorq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  xorq $0x7FFFFFFF, %rax


  // XORr64r64_64  
  movq $0, %rax
  movq $0, %rbx
  xorq %rbx, %rax
  
  movq $1, %rax
  movq $1, %rbx
  xorq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  xorq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  xorq %rbx, %rax
  
  movq $0x7FFFFFFF, %rax
  movq $0x7FFFFFFF, %rbx
  xorq %rbx, %rax
  
  movq $0, %rax
  movq $0, %rbx
  xorq %rbx, %rax
  
  movq $0x7F, %rax
  movq $0x7F, %rbx
  xorq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  xorq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  xorq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  xorq %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  xorq %rbx, %rax

  nop
