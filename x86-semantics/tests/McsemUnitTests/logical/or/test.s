.section .text
.globl _start

_start:
  // ORal  
  movl $0, %eax
  orb $1, %al
  
  movl $1, %eax
  orb $1, %al
  
  movl $0x7F, %eax
  orb $1, %al
  
  movl $0xFF, %eax
  orb $1, %al

  // ORax  
  movl $0, %eax
  orw $1, ax
  
  movl $1, %eax
  orw $1, ax
  
  movl $0x7F, %eax
  orw $1, ax
  
  movl $0xFF, %eax
  orw $1, ax
  
  movl $0x7FFF, %eax
  orw $1, ax
  
  movl $0xFFFF, %eax
  orw $1, ax

  // OReax  
  movl $0, %eax
  orl $1, %eax
  
  movl $1, %eax
  orl $1, %eax
  
  movl $0x7F, %eax
  orl $1, %eax
  
  movl $0xFF, %eax
  orl $1, %eax
  
  movl $0x7FFF, %eax
  orl $1, %eax
  
  movl $0xFFFF, %eax
  orl $1, %eax
  
  movl $0x7FFFFFFF, %eax
  orl $1, %eax
  
  movl $0xFFFFFFFF, %eax
  orl $1, %eax

  // ORr8i8  
  movl $0, ebx
  orb $1, bl
  
  movl $1, ebx
  orb $1, bl
  
  movl $0x7F, ebx
  orb $1, bl
  
  movl $0xFF, ebx
  orb $1, bl

  // ORr8u8_64  
  movq $0, %r8
  orb $0x7F, %r8b
  
  movq $1, %r8
  orb $0x7F, %r8b
  
  movq $0x7F, %r8
  orb $0x7F, %r8b
  
  movq $0xFF, %r8
  orb $0x7F, %r8b

  // ORr8s8_64  
  movq $0, %r8
  orb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $1, %r8
  orb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $0x7F, %r8
  orb 0xFF /* Sign-extended to $64-bits */, %r8b
  
  movq $0xFF, %r8
  orb 0xFF /* Sign-extended to $64-bits */, %r8b

  // ORr8r8  
  movl $0, ebx
  movl $0, %eax
  orb %al, bl
  
  movl $1, ebx
  movl $0, %eax
  orb %al, bl
  
  movl $0xFF, ebx
  movl $1, %eax
  orb %al, bl
  
  movl $0x7F, ebx
  movl $1, %eax
  orb %al, bl
  
  movl $0x7F, ebx
  movl $0xFF, %eax
  orb %al, bl
  
  movl $0xFF, ebx
  movl $0xFF, %eax
  orb %al, bl

  // ORr8r8_64  
  movb  $0, %al
  movb  $0, %bl
  orb %bl, %al
  
  movb  $1, %al
  movb  $0, %bl
  orb %bl, %al
  
  movb  $0xFF, %al
  movb  $1, %bl
  orb %bl, %al
  
  movb  $0x7F, %al
  movb  $1, %bl
  orb %bl, %al
  
  movb  $0x7F, %al
  movb  $0xFF, %bl
  orb %bl, %al
  
  movb  $0xFF, %al
  movb  $0xFF, %bl
  orb %bl, %al

  // ORr16u8  
  movw  $0, %ax
  orw $0x7F, %ax
  
  movw  $1, %ax
  orw $0x7F, %ax
  
  movw  $0x7F, %ax
  orw $0x7F, %ax
  
  movw  $0xFF, %ax
  orw $0x7F, %ax
  
  movw  $0x7FFF, %ax
  orw $0x7F, %ax
  
  movw  $0xFFFF, %ax
  orw $0x7F, %ax

  // ORr16s8  
  movw  $0, %ax
  orw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $1, %ax
  orw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0x7F, %ax
  orw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0xFF, %ax
  orw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0x7FFF, %ax
  orw 0xFF /* Sign-extended to $16-bits */, %ax
  
  movw  $0xFFFF, %ax
  orw 0xFF /* Sign-extended to $16-bits */, %ax

  // ORr16i16  
  movw  $0, %ax
  orw $0xFFFF, %ax
  
  movw  $1, %ax
  orw $0xFFFF, %ax
  
  movw  $0x7F, %ax
  orw $0xFFFF, %ax
  
  movw  $0xFF, %ax
  orw $0xFFFF, %ax
  
  movw  $0x7FFF, %ax
  orw $0xFFFF, %ax
  
  movw  $0xFFFF, %ax
  orw $0xFFFF, %ax

  // ORr16r16  
  movw  $0, %ax
  movw  $0, %bx
  orw %bx, %ax
  
  movw  $1, %ax
  movw  $0, %bx
  orw %bx, %ax
  
  movw  $0xFF, %ax
  movw  $1, %bx
  orw %bx, %ax
  
  movw  $0x7F, %ax
  movw  $1, %bx
  orw %bx, %ax
  
  movw  $0x7F, %ax
  movw  $0xFF, %bx
  orw %bx, %ax
  
  movw  $0xFF, %ax
  movw  $0xFF, %bx
  orw %bx, %ax
  
  movw  $0x7FFF, %ax
  movw  $1, %bx
  orw %bx, %ax
  
  movw  $0x7FFF, %ax
  movw  $0xFFFF, %bx
  orw %bx, %ax
  
  movw  $0xFFFF, %ax
  movw  $0xFFFF, %bx
  orw %bx, %ax

  // ORr32u8  
  movl $0, %eax
  orl $0x7F, %eax
  
  movl $1, %eax
  orl $0x7F, %eax
  
  movl $0x7F, %eax
  orl $0x7F, %eax
  
  movl $0xFF, %eax
  orl $0x7F, %eax
  
  movl $0x7FFF, %eax
  orl $0x7F, %eax
  
  movl $0xFFFF, %eax
  orl $0x7F, %eax
  
  movl $0x7FFFFFFF, %eax
  orl $0x7F, %eax
  
  movl $0xFFFFFFFF, %eax
  orl $0x7F, %eax

  // ORr32s8  
  movl $0, %eax
  orl $0xFF, %eax
  
  movl $1, %eax
  orl $0xFF, %eax
  
  movl $0x7F, %eax
  orl $0xFF, %eax
  
  movl $0xFF, %eax
  orl $0xFF, %eax
  
  movl $0x7FFF, %eax
  orl $0xFF, %eax
  
  movl $0xFFFF, %eax
  orl $0xFF, %eax
  
  movl $0x7FFFFFFF, %eax
  orl $0xFF, %eax
  
  movl $0xFFFFFFFF, %eax
  orl $0xFF, %eax

  // ORr32i32  
  movl $0, %eax
  orl $0x7FFFFFFF, %eax
  
  movl $1, %eax
  orl $0x7FFFFFFF, %eax
  
  movl $0x7F, %eax
  orl $0x7FFFFFFF, %eax
  
  movl $0xFF, %eax
  orl $0x7FFFFFFF, %eax
  
  movl $0x7FFF, %eax
  orl $0x7FFFFFFF, %eax
  
  movl $0xFFFF, %eax
  orl $0x7FFFFFFF, %eax
  
  movl $0x7FFFFFFF, %eax
  orl $0x7FFFFFFF, %eax
  
  movl $0xFFFFFFFF, %eax
  orl $0x7FFFFFFF, %eax

  // ORr32r32  
  movl $0, %eax
  movl $0, %ebx
  orl %ebx, %eax
  
  movl $1, %eax
  movl $1, %ebx
  orl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  orl %ebx, %eax
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  orl %ebx, %eax
  
  movl $0x7FFFFFFF, %eax
  movl $0x7FFFFFFF, %ebx
  orl %ebx, %eax
  
  movl $0, %eax
  movl $0, %ebx
  orl %ebx, %eax
  
  movl $0x7F, %eax
  movl $0x7F, %ebx
  orl %ebx, %eax

  // ORr64u8_64  
  movq $0, %rax
  orq $0x7F, %rax
  
  movq $1, %rax
  orq $0x7F, %rax
  
  movq $0x7F, %rax
  orq $0x7F, %rax
  
  movq $0xFF, %rax
  orq $0x7F, %rax
  
  movq $0x7FFF, %rax
  orq $0x7F, %rax
  
  movq $0xFFFF, %rax
  orq $0x7F, %rax
  
  movq $0x7FFFFFFF, %rax
  orq $0x7F, %rax
  
  movq $0xFFFFFFFF, %rax
  orq $0x7F, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  orq $0x7F, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  orq $0x7F, %rax

  // ORr64s8_64  
  movq $0, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $1, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $0x7F, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $0xFF, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFF, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFF, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFF, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFF, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  orq $0xFF /* Sign-extended */, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  orq $0xFF /* Sign-extended */, %rax

  // ORr64u32_64  
  movq $0, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $1, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $0x7F, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $0xFF, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $0x7FFF, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $0xFFFF, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFF, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFF, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  orq $0x7FFFFFFF, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  orq $0x7FFFFFFF, %rax


  // ORr64r64_64  
  movq $0, %rax
  movq $0, %rbx
  orq %rbx, %rax
  
  movq $1, %rax
  movq $1, %rbx
  orq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  orq %rbx, %rax
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  orq %rbx, %rax
  
  movq $0x7FFFFFFF, %rax
  movq $0x7FFFFFFF, %rbx
  orq %rbx, %rax
  
  movq $0, %rax
  movq $0, %rbx
  orq %rbx, %rax
  
  movq $0x7F, %rax
  movq $0x7F, %rbx
  orq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  orq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  orq %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  orq %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  orq %rbx, %rax

  nop
