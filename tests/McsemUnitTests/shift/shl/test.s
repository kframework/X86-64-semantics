.section .text
.globl _start

_start:
  // SHLr8i8_0  
  movl $0, %eax
  shlb $0, %al
  
  movl $1, %eax
  shlb $0, %al
  
  movl $0x80, %eax
  shlb $0, %al
  
  movl $0x55, %eax
  shlb $0, %al
  
  movl $0xAA, %eax
  shlb $0, %al
  
  movl $0x0F, %eax
  shlb $0, %al
  
  movl $0xF7, %eax
  shlb $0, %al
  
  movl $0xFE, %eax
  shlb $0, %al

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
  // SHLr8i8_255  
  movl $0, %eax
  shlb $0xFF, %al
  
  movl $1, %eax
  shlb $0xFF, %al
  
  movl $0x80, %eax
  shlb $0xFF, %al
  
  movl $0x55, %eax
  shlb $0xFF, %al
  
  movl $0xAA, %eax
  shlb $0xFF, %al
  
  movl $0x0F, %eax
  shlb $0xFF, %al
  
  movl $0xF7, %eax
  shlb $0xFF, %al
  
  movl $0xFE, %eax
  shlb $0xFF, %al

/* Special encoding of SHLr8 with i8 = 1, also has special behaviour
 * with AF and OF */
  // SHLr8i8_1  
  movl $0, %eax
  shlb $1, %al
  
  movl $1, %eax
  shlb $1, %al
  
  movl $0x80, %eax
  shlb $1, %al
  
  movl $0x55, %eax
  shlb $1, %al
  
  movl $0xAA, %eax
  shlb $1, %al
  
  movl $0x0F, %eax
  shlb $1, %al
  
  movl $0xF7, %eax
  shlb $1, %al
  
  movl $0xFE, %eax
  shlb $1, %al

/* REX-prefix encoded SHLr8i8 */
  // SHLr8i8_1_64  
  movq $0, %r8
  shlb $1, %r8b
  
  movq $1, %r8
  shlb $1, %r8b
  
  movq $0x80, %r8
  shlb $1, %r8b
  
  movq $0x55, %r8
  shlb $1, %r8b
  
  movq $0xAA, %r8
  shlb $1, %r8b
  
  movq $0x0F, %r8
  shlb $1, %r8b
  
  movq $0xF7, %r8
  shlb $1, %r8b
  
  movq $0xFE, %r8
  shlb $1, %r8b

/* Special encoding with `cl` as the reg containing the number of bits */
  // SHLr8cl_1  
  
  movl $0, %eax
  movl $1, %ecx
  shlb %cl, %al
  
  
  movl $1, %eax
  movl $1, %ecx
  shlb %cl, %al
  
  
  movl $0x80, %eax
  movl $1, %ecx
  shlb %cl, %al
  
  
  movl $0x55, %eax
  movl $1, %ecx
  shlb %cl, %al
  
  
  movl $0xAA, %eax
  movl $1, %ecx
  shlb %cl, %al
  
  
  movl $0x0F, %eax
  movl $1, %ecx
  shlb %cl, %al
  
  
  movl $0xF7, %eax
  movl $1, %ecx
  shlb %cl, %al
  
  
  movl $0xFE, %eax
  movl $1, %ecx
  shlb %cl, %al
  
  
  movl $0, %eax
  movl $2, %ecx
  shlb %cl, %al
  
  
  movl $1, %eax
  movl $2, %ecx
  shlb %cl, %al
  
  
  movl $0x80, %eax
  movl $2, %ecx
  shlb %cl, %al
  
  
  movl $0x55, %eax
  movl $2, %ecx
  shlb %cl, %al
  
  
  movl $0xAA, %eax
  movl $2, %ecx
  shlb %cl, %al
  
  
  movl $0x0F, %eax
  movl $2, %ecx
  shlb %cl, %al
  
  
  movl $0xF7, %eax
  movl $2, %ecx
  shlb %cl, %al
  
  
  movl $0xFE, %eax
  movl $2, %ecx
  shlb %cl, %al
  
  
  movl $0, %eax
  movl $7, %ecx
  shlb %cl, %al
  
  
  movl $1, %eax
  movl $7, %ecx
  shlb %cl, %al
  
  
  movl $0x80, %eax
  movl $7, %ecx
  shlb %cl, %al
  
  
  movl $0x55, %eax
  movl $7, %ecx
  shlb %cl, %al
  
  
  movl $0xAA, %eax
  movl $7, %ecx
  shlb %cl, %al
  
  
  movl $0x0F, %eax
  movl $7, %ecx
  shlb %cl, %al
  
  
  movl $0xF7, %eax
  movl $7, %ecx
  shlb %cl, %al
  
  
  movl $0xFE, %eax
  movl $7, %ecx
  shlb %cl, %al

/* Special encoding with `cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
  // SHLr8cl_1_64  
  movq $0, %r8
  movq $1, %rcx
  shlb %cl, %r8b
  
  movq $1, %r8
  movq $1, %rcx
  shlb %cl, %r8b
  
  movq $0x80, %r8
  movq $1, %rcx
  shlb %cl, %r8b
  
  movq $0x55, %r8
  movq $1, %rcx
  shlb %cl, %r8b
  
  movq $0xAA, %r8
  movq $1, %rcx
  shlb %cl, %r8b
  
  movq $0x0F, %r8
  movq $1, %rcx
  shlb %cl, %r8b
  
  movq $0xF7, %r8
  movq $1, %rcx
  shlb %cl, %r8b
  
  movq $0xFE, %r8
  movq $1, %rcx
  shlb %cl, %r8b

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
  // SHLr8i8_9  
  movl $0, %eax
  shlb $9, %al
  
  movl $1, %eax
  shlb $9, %al
  
  movl $0x80, %eax
  shlb $9, %al
  
  movl $0x55, %eax
  shlb $9, %al
  
  movl $0xAA, %eax
  shlb $9, %al
  
  movl $0x0F, %eax
  shlb $9, %al
  
  movl $0xF7, %eax
  shlb $9, %al
  
  movl $0xFE, %eax
  shlb $9, %al

  // SHLr8i8_2  
  movl $0, %eax
  shlb $2, %al
  
  movl $1, %eax
  shlb $2, %al
  
  movl $0x80, %eax
  shlb $2, %al
  
  movl $0x55, %eax
  shlb $2, %al
  
  movl $0xAA, %eax
  shlb $2, %al
  
  movl $0x0F, %eax
  shlb $2, %al
  
  movl $0xF7, %eax
  shlb $2, %al
  
  movl $0xFE, %eax
  shlb $2, %al

  // SHLr16cl_1  
  movl $0, %eax
  movl $8, %ecx
  shlw %cl, %ax
  
  movl $1, %eax
  movl $8, %ecx
  shlw %cl, %ax
  
  movl $0x8000, %eax
  movl $8, %ecx
  shlw %cl, %ax
  
  movl $0x5500, %eax
  movl $8, %ecx
  shlw %cl, %ax
  
  movl $0xAA00, %eax
  movl $8, %ecx
  shlw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $8, %ecx
  shlw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $8, %ecx
  shlw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $8, %ecx
  shlw %cl, %ax
  
  movl $0, %eax
  movl $15, %ecx
  shlw %cl, %ax
  
  movl $1, %eax
  movl $15, %ecx
  shlw %cl, %ax
  
  movl $0x8000, %eax
  movl $15, %ecx
  shlw %cl, %ax
  
  movl $0x5500, %eax
  movl $15, %ecx
  shlw %cl, %ax
  
  movl $0xAA00, %eax
  movl $15, %ecx
  shlw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $15, %ecx
  shlw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $15, %ecx
  shlw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $15, %ecx
  shlw %cl, %ax

  // SHLr16i8_1  
  movl $0, %eax
  shlw $1, %ax
  
  movl $1, %eax
  shlw $1, %ax
  
  movl $0x8000, %eax
  shlw $1, %ax
  
  movl $0x5500, %eax
  shlw $1, %ax
  
  movl $0xAA00, %eax
  shlw $1, %ax
  
  movl $0x0F0F, %eax
  shlw $1, %ax
  
  movl $0xF7F7, %eax
  shlw $1, %ax
  
  movl $0xFEFE, %eax
  shlw $1, %ax

  // SHLr16i8_8  
  movl $0, %eax
  shlw $8, %ax
  
  movl $1, %eax
  shlw $8, %ax
  
  movl $0x8000, %eax
  shlw $8, %ax
  
  movl $0x5500, %eax
  shlw $8, %ax
  
  movl $0xAA00, %eax
  shlw $8, %ax
  
  movl $0x0F0F, %eax
  shlw $8, %ax
  
  movl $0xF7F7, %eax
  shlw $8, %ax
  
  movl $0xFEFE, %eax
  shlw $8, %ax

  // SHLr16i8_15  
  movl $0, %eax
  shlw $15, %ax
  
  movl $1, %eax
  shlw $15, %ax
  
  movl $0x8000, %eax
  shlw $15, %ax
  
  movl $0x5500, %eax
  shlw $15, %ax
  
  movl $0xAA00, %eax
  shlw $15, %ax
  
  movl $0x0F0F, %eax
  shlw $15, %ax
  
  movl $0xF7F7, %eax
  shlw $15, %ax
  
  movl $0xFEFE, %eax
  shlw $15, %ax

  // SHLr16i8_255  
  movl $0, %eax
  shlw $0xFF, %ax
  
  movl $1, %eax
  shlw $0xFF, %ax
  
  movl $0x8000, %eax
  shlw $0xFF, %ax
  
  movl $0x5500, %eax
  shlw $0xFF, %ax
  
  movl $0xAA00, %eax
  shlw $0xFF, %ax
  
  movl $0x0F0F, %eax
  shlw $0xFF, %ax
  
  movl $0xF7F7, %eax
  shlw $0xFF, %ax
  
  movl $0xFEFE, %eax
  shlw $0xFF, %ax

  // SHLr32i8_1  
  movl $0, %eax
  shll $1, %eax
  
  movl $1, %eax
  shll $1, %eax
  
  movl $0x80000000, %eax
  shll $1, %eax
  
  movl $0x55000000, %eax
  shll $1, %eax
  
  movl $0xAA000000, %eax
  shll $1, %eax
  
  movl $0x0F0F0F0F, %eax
  shll $1, %eax
  
  movl $0xF7F7F7F7, %eax
  shll $1, %eax
  
  movl $0xFEFEFEFE, %eax
  shll $1, %eax

  // SHLr32i8_16  
  movl $0, %eax
  shll $16, %eax
  
  movl $1, %eax
  shll $16, %eax
  
  movl $0x80000000, %eax
  shll $16, %eax
  
  movl $0x55000000, %eax
  shll $16, %eax
  
  movl $0xAA000000, %eax
  shll $16, %eax
  
  movl $0x0F0F0F0F, %eax
  shll $16, %eax
  
  movl $0xF7F7F7F7, %eax
  shll $16, %eax
  
  movl $0xFEFEFEFE, %eax
  shll $16, %eax

  // SHLr32i8_31  
  movl $0, %eax
  shll $31, %eax
  
  movl $1, %eax
  shll $31, %eax
  
  movl $0x80000000, %eax
  shll $31, %eax
  
  movl $0x55000000, %eax
  shll $31, %eax
  
  movl $0xAA000000, %eax
  shll $31, %eax
  
  movl $0x0F0F0F0F, %eax
  shll $31, %eax
  
  movl $0xF7F7F7F7, %eax
  shll $31, %eax
  
  movl $0xFEFEFEFE, %eax
  shll $31, %eax

  // SHLr32i8_255  
  movl $0, %eax
  shll $0xFF, %eax
  
  movl $1, %eax
  shll $0xFF, %eax
  
  movl $0x80000000, %eax
  shll $0xFF, %eax
  
  movl $0x55000000, %eax
  shll $0xFF, %eax
  
  movl $0xAA000000, %eax
  shll $0xFF, %eax
  
  movl $0x0F0F0F0F, %eax
  shll $0xFF, %eax
  
  movl $0xF7F7F7F7, %eax
  shll $0xFF, %eax
  
  movl $0xFEFEFEFE, %eax
  shll $0xFF, %eax

  // SHLr64i8_1_64  
  movq $0, %rax
  shlq $1, %rax
  
  movq $1, %rax
  shlq $1, %rax
  
  movq $0x8000000000000000, %rax
  shlq $1, %rax
  
  movq $0x5500000000000000, %rax
  shlq $1, %rax
  
  movq $0xAA00000000000000, %rax
  shlq $1, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  shlq $1, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  shlq $1, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  shlq $1, %rax

  // SHLr64i8_32_64  
  movq $0, %rax
  shlq $32, %rax
  
  movq $1, %rax
  shlq $32, %rax
  
  movq $0x8000000000000000, %rax
  shlq $32, %rax
  
  movq $0x5500000000000000, %rax
  shlq $32, %rax
  
  movq $0xAA00000000000000, %rax
  shlq $32, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  shlq $32, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  shlq $32, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  shlq $32, %rax

  // SHLr64i8_63_64  
  movq $0, %rax
  shlq $63, %rax
  
  movq $1, %rax
  shlq $63, %rax
  
  movq $0x8000000000000000, %rax
  shlq $63, %rax
  
  movq $0x5500000000000000, %rax
  shlq $63, %rax
  
  movq $0xAA00000000000000, %rax
  shlq $63, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  shlq $63, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  shlq $63, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  shlq $63, %rax

  // SHLr64i8_255_64  
  movq $0, %rax
  shlq $0xFF, %rax
  
  movq $1, %rax
  shlq $0xFF, %rax
  
  movq $0x8000000000000000, %rax
  shlq $0xFF, %rax
  
  movq $0x5500000000000000, %rax
  shlq $0xFF, %rax
  
  movq $0xAA00000000000000, %rax
  shlq $0xFF, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  shlq $0xFF, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  shlq $0xFF, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  shlq $0xFF, %rax

  nop
