.section .text
.globl _start

_start:
  // RORr8i8_0  
  movl $0, %eax
  rorb $0, %al
  
  movl $1, %eax
  rorb $0, %al
  
  movl $0x80, %eax
  rorb $0, %al
  
  movl $0x55, %eax
  rorb $0, %al
  
  movl $0xAA, %eax
  rorb $0, %al
  
  movl $0x0F, %eax
  rorb $0, %al
  
  movl $0xF7, %eax
  rorb $0, %al
  
  movl $0xFE, %eax
  rorb $0, %al

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
  // RORr8i8_255  
  movl $0, %eax
  rorb $0xFF, %al
  
  movl $1, %eax
  rorb $0xFF, %al
  
  movl $0x80, %eax
  rorb $0xFF, %al
  
  movl $0x55, %eax
  rorb $0xFF, %al
  
  movl $0xAA, %eax
  rorb $0xFF, %al
  
  movl $0x0F, %eax
  rorb $0xFF, %al
  
  movl $0xF7, %eax
  rorb $0xFF, %al
  
  movl $0xFE, %eax
  rorb $0xFF, %al

/* Special encoding of RORr8 with i8 = 1, also has special behaviour
 * with AF and OF */
  // RORr8i8_1  
  movl $0, %eax
  rorb $1, %al
  
  movl $1, %eax
  rorb $1, %al
  
  movl $0x80, %eax
  rorb $1, %al
  
  movl $0x55, %eax
  rorb $1, %al
  
  movl $0xAA, %eax
  rorb $1, %al
  
  movl $0x0F, %eax
  rorb $1, %al
  
  movl $0xF7, %eax
  rorb $1, %al
  
  movl $0xFE, %eax
  rorb $1, %al

/* REX-prefix encoded RORr8i8 */
  // RORr8i8_1_64  
  movq $0, %r8
  rorb $1, %r8b
  
  movq $1, %r8
  rorb $1, %r8b
  
  movq $0x80, %r8
  rorb $1, %r8b
  
  movq $0x55, %r8
  rorb $1, %r8b
  
  movq $0xAA, %r8
  rorb $1, %r8b
  
  movq $0x0F, %r8
  rorb $1, %r8b
  
  movq $0xF7, %r8
  rorb $1, %r8b
  
  movq $0xFE, %r8
  rorb $1, %r8b

/* Special encoding with `%cl` as the reg containing the number of bits */
  // RORr8cl  
  movl $0, %eax
  movl $2, %ecx
  rorb %cl, %al
  
  movl $1, %eax
  movl $2, %ecx
  rorb %cl, %al
  
  movl $0x80, %eax
  movl $2, %ecx
  rorb %cl, %al
  
  movl $0x55, %eax
  movl $2, %ecx
  rorb %cl, %al
  
  movl $0xAA, %eax
  movl $2, %ecx
  rorb %cl, %al
  
  movl $0x0F, %eax
  movl $2, %ecx
  rorb %cl, %al
  
  movl $0xF7, %eax
  movl $2, %ecx
  rorb %cl, %al
  
  movl $0xFE, %eax
  movl $2, %ecx
  rorb %cl, %al
  
  movl $0, %eax
  movl $7, %ecx
  rorb %cl, %al
  
  movl $1, %eax
  movl $7, %ecx
  rorb %cl, %al
  
  movl $0x80, %eax
  movl $7, %ecx
  rorb %cl, %al
  
  movl $0x55, %eax
  movl $7, %ecx
  rorb %cl, %al
  
  movl $0xAA, %eax
  movl $7, %ecx
  rorb %cl, %al
  
  movl $0x0F, %eax
  movl $7, %ecx
  rorb %cl, %al
  
  movl $0xF7, %eax
  movl $7, %ecx
  rorb %cl, %al
  
  movl $0xFE, %eax
  movl $7, %ecx
  rorb %cl, %al

/* Special encoding with `%cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
  // RORr8cl_1_64  
  movq $0, %r8
  movq $1, %rcx
  rorb %cl, %r8b
  
  movq $1, %r8
  movq $1, %rcx
  rorb %cl, %r8b
  
  movq $0x80, %r8
  movq $1, %rcx
  rorb %cl, %r8b
  
  movq $0x55, %r8
  movq $1, %rcx
  rorb %cl, %r8b
  
  movq $0xAA, %r8
  movq $1, %rcx
  rorb %cl, %r8b
  
  movq $0x0F, %r8
  movq $1, %rcx
  rorb %cl, %r8b
  
  movq $0xF7, %r8
  movq $1, %rcx
  rorb %cl, %r8b
  
  movq $0xFE, %r8
  movq $1, %rcx
  rorb %cl, %r8b

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
  // RORr8i8_9  
  movl $0, %eax
  rorb $9, %al
  
  movl $1, %eax
  rorb $9, %al
  
  movl $0x80, %eax
  rorb $9, %al
  
  movl $0x55, %eax
  rorb $9, %al
  
  movl $0xAA, %eax
  rorb $9, %al
  
  movl $0x0F, %eax
  rorb $9, %al
  
  movl $0xF7, %eax
  rorb $9, %al
  
  movl $0xFE, %eax
  rorb $9, %al

  // RORr8i8_2  
  movl $0, %eax
  rorb $2, %al
  
  movl $1, %eax
  rorb $2, %al
  
  movl $0x80, %eax
  rorb $2, %al
  
  movl $0x55, %eax
  rorb $2, %al
  
  movl $0xAA, %eax
  rorb $2, %al
  
  movl $0x0F, %eax
  rorb $2, %al
  
  movl $0xF7, %eax
  rorb $2, %al
  
  movl $0xFE, %eax
  rorb $2, %al

  // RORr16cl  
  movl $0, %eax
  movl $8, %ecx
  rorw %cl, %ax
  
  movl $1, %eax
  movl $8, %ecx
  rorw %cl, %ax
  
  movl $0x8000, %eax
  movl $8, %ecx
  rorw %cl, %ax
  
  movl $0x5500, %eax
  movl $8, %ecx
  rorw %cl, %ax
  
  movl $0xAA00, %eax
  movl $8, %ecx
  rorw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $8, %ecx
  rorw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $8, %ecx
  rorw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $8, %ecx
  rorw %cl, %ax
  
  movl $0, %eax
  movl $15, %ecx
  rorw %cl, %ax
  
  movl $1, %eax
  movl $15, %ecx
  rorw %cl, %ax
  
  movl $0x8000, %eax
  movl $15, %ecx
  rorw %cl, %ax
  
  movl $0x5500, %eax
  movl $15, %ecx
  rorw %cl, %ax
  
  movl $0xAA00, %eax
  movl $15, %ecx
  rorw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $15, %ecx
  rorw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $15, %ecx
  rorw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $15, %ecx
  rorw %cl, %ax

  // RORr16i8_1  
  movl $0, %eax
  rorw $1, %ax
  
  movl $1, %eax
  rorw $1, %ax
  
  movl $0x8000, %eax
  rorw $1, %ax
  
  movl $0x5500, %eax
  rorw $1, %ax
  
  movl $0xAA00, %eax
  rorw $1, %ax
  
  movl $0x0F0F, %eax
  rorw $1, %ax
  
  movl $0xF7F7, %eax
  rorw $1, %ax
  
  movl $0xFEFE, %eax
  rorw $1, %ax

  // RORr16i8_8  
  movl $0, %eax
  rorw $8, %ax
  
  movl $1, %eax
  rorw $8, %ax
  
  movl $0x8000, %eax
  rorw $8, %ax
  
  movl $0x5500, %eax
  rorw $8, %ax
  
  movl $0xAA00, %eax
  rorw $8, %ax
  
  movl $0x0F0F, %eax
  rorw $8, %ax
  
  movl $0xF7F7, %eax
  rorw $8, %ax
  
  movl $0xFEFE, %eax
  rorw $8, %ax

  // RORr16i8_15  
  movl $0, %eax
  rorw $15, %ax
  
  movl $1, %eax
  rorw $15, %ax
  
  movl $0x8000, %eax
  rorw $15, %ax
  
  movl $0x5500, %eax
  rorw $15, %ax
  
  movl $0xAA00, %eax
  rorw $15, %ax
  
  movl $0x0F0F, %eax
  rorw $15, %ax
  
  movl $0xF7F7, %eax
  rorw $15, %ax
  
  movl $0xFEFE, %eax
  rorw $15, %ax

  // RORr16i8_255  
  movl $0, %eax
  rorw $0xFF, %ax
  
  movl $1, %eax
  rorw $0xFF, %ax
  
  movl $0x8000, %eax
  rorw $0xFF, %ax
  
  movl $0x5500, %eax
  rorw $0xFF, %ax
  
  movl $0xAA00, %eax
  rorw $0xFF, %ax
  
  movl $0x0F0F, %eax
  rorw $0xFF, %ax
  
  movl $0xF7F7, %eax
  rorw $0xFF, %ax
  
  movl $0xFEFE, %eax
  rorw $0xFF, %ax

  // RORr32i8_1  
  movl $0, %eax
  rorl $1, %eax
  
  movl $1, %eax
  rorl $1, %eax
  
  movl $0x80000000, %eax
  rorl $1, %eax
  
  movl $0x55000000, %eax
  rorl $1, %eax
  
  movl $0xAA000000, %eax
  rorl $1, %eax
  
  movl $0x0F0F0F0F, %eax
  rorl $1, %eax
  
  movl $0xF7F7F7F7, %eax
  rorl $1, %eax
  
  movl $0xFEFEFEFE, %eax
  rorl $1, %eax

  // RORr32i8_16  
  movl $0, %eax
  rorl $16, %eax
  
  movl $1, %eax
  rorl $16, %eax
  
  movl $0x80000000, %eax
  rorl $16, %eax
  
  movl $0x55000000, %eax
  rorl $16, %eax
  
  movl $0xAA000000, %eax
  rorl $16, %eax
  
  movl $0x0F0F0F0F, %eax
  rorl $16, %eax
  
  movl $0xF7F7F7F7, %eax
  rorl $16, %eax
  
  movl $0xFEFEFEFE, %eax
  rorl $16, %eax

  // RORr32i8_31  
  movl $0, %eax
  rorl $31, %eax
  
  movl $1, %eax
  rorl $31, %eax
  
  movl $0x80000000, %eax
  rorl $31, %eax
  
  movl $0x55000000, %eax
  rorl $31, %eax
  
  movl $0xAA000000, %eax
  rorl $31, %eax
  
  movl $0x0F0F0F0F, %eax
  rorl $31, %eax
  
  movl $0xF7F7F7F7, %eax
  rorl $31, %eax
  
  movl $0xFEFEFEFE, %eax
  rorl $31, %eax

  // RORr32i8_255  
  movl $0, %eax
  rorl $0xFF, %eax
  
  movl $1, %eax
  rorl $0xFF, %eax
  
  movl $0x80000000, %eax
  rorl $0xFF, %eax
  
  movl $0x55000000, %eax
  rorl $0xFF, %eax
  
  movl $0xAA000000, %eax
  rorl $0xFF, %eax
  
  movl $0x0F0F0F0F, %eax
  rorl $0xFF, %eax
  
  movl $0xF7F7F7F7, %eax
  rorl $0xFF, %eax
  
  movl $0xFEFEFEFE, %eax
  rorl $0xFF, %eax

  // RORr64i8_1_64  
  movq $0, %rax
  rorq $1, %rax
  
  movq $1, %rax
  rorq $1, %rax
  
  movq $0x8000000000000000, %rax
  rorq $1, %rax
  
  movq $0x5500000000000000, %rax
  rorq $1, %rax
  
  movq $0xAA00000000000000, %rax
  rorq $1, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rorq $1, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rorq $1, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rorq $1, %rax

  // RORr64i8_32_64  
  movq $0, %rax
  rorq $32, %rax
  
  movq $1, %rax
  rorq $32, %rax
  
  movq $0x8000000000000000, %rax
  rorq $32, %rax
  
  movq $0x5500000000000000, %rax
  rorq $32, %rax
  
  movq $0xAA00000000000000, %rax
  rorq $32, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rorq $32, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rorq $32, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rorq $32, %rax

  // RORr64i8_63_64  
  movq $0, %rax
  rorq $63, %rax
  
  movq $1, %rax
  rorq $63, %rax
  
  movq $0x8000000000000000, %rax
  rorq $63, %rax
  
  movq $0x5500000000000000, %rax
  rorq $63, %rax
  
  movq $0xAA00000000000000, %rax
  rorq $63, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rorq $63, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rorq $63, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rorq $63, %rax

  // RORr64i8_255_64  
  movq $0, %rax
  rorq $0xFF, %rax
  
  movq $1, %rax
  rorq $0xFF, %rax
  
  movq $0x8000000000000000, %rax
  rorq $0xFF, %rax
  
  movq $0x5500000000000000, %rax
  rorq $0xFF, %rax
  
  movq $0xAA00000000000000, %rax
  rorq $0xFF, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rorq $0xFF, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rorq $0xFF, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rorq $0xFF, %rax

  nop
