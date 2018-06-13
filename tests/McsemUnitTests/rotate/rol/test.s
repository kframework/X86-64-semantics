.section .text
.globl _start

_start:
  // ROLr8i8_0  
  movl $0, %eax
  rolb $0, %al
  
  movl $1, %eax
  rolb $0, %al
  
  movl $0x80, %eax
  rolb $0, %al
  
  movl $0x55, %eax
  rolb $0, %al
  
  movl $0xAA, %eax
  rolb $0, %al
  
  movl $0x0F, %eax
  rolb $0, %al
  
  movl $0xF7, %eax
  rolb $0, %al
  
  movl $0xFE, %eax
  rolb $0, %al

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
  // ROLr8i8_255  
  movl $0, %eax
  rolb $0xFF, %al
  
  movl $1, %eax
  rolb $0xFF, %al
  
  movl $0x80, %eax
  rolb $0xFF, %al
  
  movl $0x55, %eax
  rolb $0xFF, %al
  
  movl $0xAA, %eax
  rolb $0xFF, %al
  
  movl $0x0F, %eax
  rolb $0xFF, %al
  
  movl $0xF7, %eax
  rolb $0xFF, %al
  
  movl $0xFE, %eax
  rolb $0xFF, %al

/* Special encoding of ROLr8 with i8 = 1, also has special behaviour
 * with AF and OF */
  // ROLr8i8_1  
  movl $0, %eax
  rolb $1, %al
  
  movl $1, %eax
  rolb $1, %al
  
  movl $0x80, %eax
  rolb $1, %al
  
  movl $0x55, %eax
  rolb $1, %al
  
  movl $0xAA, %eax
  rolb $1, %al
  
  movl $0x0F, %eax
  rolb $1, %al
  
  movl $0xF7, %eax
  rolb $1, %al
  
  movl $0xFE, %eax
  rolb $1, %al

/* REX-prefix encoded ROLr8i8 */
  // ROLr8i8_1_64  
  movq $0, %r8
  rolb $1, %r8b
  
  movq $1, %r8
  rolb $1, %r8b
  
  movq $0x80, %r8
  rolb $1, %r8b
  
  movq $0x55, %r8
  rolb $1, %r8b
  
  movq $0xAA, %r8
  rolb $1, %r8b
  
  movq $0x0F, %r8
  rolb $1, %r8b
  
  movq $0xF7, %r8
  rolb $1, %r8b
  
  movq $0xFE, %r8
  rolb $1, %r8b

/* Special encoding with `%cl` as the reg containing the number of bits */
  // ROLr8cl  
  movl $0, %eax
  movl $2, %ecx
  rolb %cl, %al
  
  movl $1, %eax
  movl $2, %ecx
  rolb %cl, %al
  
  movl $0x80, %eax
  movl $2, %ecx
  rolb %cl, %al
  
  movl $0x55, %eax
  movl $2, %ecx
  rolb %cl, %al
  
  movl $0xAA, %eax
  movl $2, %ecx
  rolb %cl, %al
  
  movl $0x0F, %eax
  movl $2, %ecx
  rolb %cl, %al
  
  movl $0xF7, %eax
  movl $2, %ecx
  rolb %cl, %al
  
  movl $0xFE, %eax
  movl $2, %ecx
  rolb %cl, %al
  
  movl $0, %eax
  movl $7, %ecx
  rolb %cl, %al
  
  movl $1, %eax
  movl $7, %ecx
  rolb %cl, %al
  
  movl $0x80, %eax
  movl $7, %ecx
  rolb %cl, %al
  
  movl $0x55, %eax
  movl $7, %ecx
  rolb %cl, %al
  
  movl $0xAA, %eax
  movl $7, %ecx
  rolb %cl, %al
  
  movl $0x0F, %eax
  movl $7, %ecx
  rolb %cl, %al
  
  movl $0xF7, %eax
  movl $7, %ecx
  rolb %cl, %al
  
  movl $0xFE, %eax
  movl $7, %ecx
  rolb %cl, %al

/* Special encoding with `%cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
  // ROLr8cl_1_64  
  movq $0, %r8
  movq $1, %rcx
  rolb %cl, %r8b
  
  movq $1, %r8
  movq $1, %rcx
  rolb %cl, %r8b
  
  movq $0x80, %r8
  movq $1, %rcx
  rolb %cl, %r8b
  
  movq $0x55, %r8
  movq $1, %rcx
  rolb %cl, %r8b
  
  movq $0xAA, %r8
  movq $1, %rcx
  rolb %cl, %r8b
  
  movq $0x0F, %r8
  movq $1, %rcx
  rolb %cl, %r8b
  
  movq $0xF7, %r8
  movq $1, %rcx
  rolb %cl, %r8b
  
  movq $0xFE, %r8
  movq $1, %rcx
  rolb %cl, %r8b

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
  // ROLr8i8_9  
  movl $0, %eax
  rolb $9, %al
  
  movl $1, %eax
  rolb $9, %al
  
  movl $0x80, %eax
  rolb $9, %al
  
  movl $0x55, %eax
  rolb $9, %al
  
  movl $0xAA, %eax
  rolb $9, %al
  
  movl $0x0F, %eax
  rolb $9, %al
  
  movl $0xF7, %eax
  rolb $9, %al
  
  movl $0xFE, %eax
  rolb $9, %al

  // ROLr8i8_2  
  movl $0, %eax
  rolb $2, %al
  
  movl $1, %eax
  rolb $2, %al
  
  movl $0x80, %eax
  rolb $2, %al
  
  movl $0x55, %eax
  rolb $2, %al
  
  movl $0xAA, %eax
  rolb $2, %al
  
  movl $0x0F, %eax
  rolb $2, %al
  
  movl $0xF7, %eax
  rolb $2, %al
  
  movl $0xFE, %eax
  rolb $2, %al

  // ROLr16cl  
  movl $0, %eax
  movl $8, %ecx
  rolw %cl, %ax
  
  movl $1, %eax
  movl $8, %ecx
  rolw %cl, %ax
  
  movl $0x8000, %eax
  movl $8, %ecx
  rolw %cl, %ax
  
  movl $0x5500, %eax
  movl $8, %ecx
  rolw %cl, %ax
  
  movl $0xAA00, %eax
  movl $8, %ecx
  rolw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $8, %ecx
  rolw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $8, %ecx
  rolw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $8, %ecx
  rolw %cl, %ax
  
  movl $0, %eax
  movl $15, %ecx
  rolw %cl, %ax
  
  movl $1, %eax
  movl $15, %ecx
  rolw %cl, %ax
  
  movl $0x8000, %eax
  movl $15, %ecx
  rolw %cl, %ax
  
  movl $0x5500, %eax
  movl $15, %ecx
  rolw %cl, %ax
  
  movl $0xAA00, %eax
  movl $15, %ecx
  rolw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $15, %ecx
  rolw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $15, %ecx
  rolw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $15, %ecx
  rolw %cl, %ax

  // ROLr16i8_1  
  movl $0, %eax
  rolw $1, %ax
  
  movl $1, %eax
  rolw $1, %ax
  
  movl $0x8000, %eax
  rolw $1, %ax
  
  movl $0x5500, %eax
  rolw $1, %ax
  
  movl $0xAA00, %eax
  rolw $1, %ax
  
  movl $0x0F0F, %eax
  rolw $1, %ax
  
  movl $0xF7F7, %eax
  rolw $1, %ax
  
  movl $0xFEFE, %eax
  rolw $1, %ax

  // ROLr16i8_8  
  movl $0, %eax
  rolw $8, %ax
  
  movl $1, %eax
  rolw $8, %ax
  
  movl $0x8000, %eax
  rolw $8, %ax
  
  movl $0x5500, %eax
  rolw $8, %ax
  
  movl $0xAA00, %eax
  rolw $8, %ax
  
  movl $0x0F0F, %eax
  rolw $8, %ax
  
  movl $0xF7F7, %eax
  rolw $8, %ax
  
  movl $0xFEFE, %eax
  rolw $8, %ax

  // ROLr16i8_15  
  movl $0, %eax
  rolw $15, %ax
  
  movl $1, %eax
  rolw $15, %ax
  
  movl $0x8000, %eax
  rolw $15, %ax
  
  movl $0x5500, %eax
  rolw $15, %ax
  
  movl $0xAA00, %eax
  rolw $15, %ax
  
  movl $0x0F0F, %eax
  rolw $15, %ax
  
  movl $0xF7F7, %eax
  rolw $15, %ax
  
  movl $0xFEFE, %eax
  rolw $15, %ax

  // ROLr16i8_255  
  movl $0, %eax
  rolw $0xFF, %ax
  
  movl $1, %eax
  rolw $0xFF, %ax
  
  movl $0x8000, %eax
  rolw $0xFF, %ax
  
  movl $0x5500, %eax
  rolw $0xFF, %ax
  
  movl $0xAA00, %eax
  rolw $0xFF, %ax
  
  movl $0x0F0F, %eax
  rolw $0xFF, %ax
  
  movl $0xF7F7, %eax
  rolw $0xFF, %ax
  
  movl $0xFEFE, %eax
  rolw $0xFF, %ax

  // ROLr32i8_1  
  movl $0, %eax
  roll $1, %eax
  
  movl $1, %eax
  roll $1, %eax
  
  movl $0x80000000, %eax
  roll $1, %eax
  
  movl $0x55000000, %eax
  roll $1, %eax
  
  movl $0xAA000000, %eax
  roll $1, %eax
  
  movl $0x0F0F0F0F, %eax
  roll $1, %eax
  
  movl $0xF7F7F7F7, %eax
  roll $1, %eax
  
  movl $0xFEFEFEFE, %eax
  roll $1, %eax

  // ROLr32i8_16  
  movl $0, %eax
  roll $16, %eax
  
  movl $1, %eax
  roll $16, %eax
  
  movl $0x80000000, %eax
  roll $16, %eax
  
  movl $0x55000000, %eax
  roll $16, %eax
  
  movl $0xAA000000, %eax
  roll $16, %eax
  
  movl $0x0F0F0F0F, %eax
  roll $16, %eax
  
  movl $0xF7F7F7F7, %eax
  roll $16, %eax
  
  movl $0xFEFEFEFE, %eax
  roll $16, %eax

  // ROLr32i8_31  
  movl $0, %eax
  roll $31, %eax
  
  movl $1, %eax
  roll $31, %eax
  
  movl $0x80000000, %eax
  roll $31, %eax
  
  movl $0x55000000, %eax
  roll $31, %eax
  
  movl $0xAA000000, %eax
  roll $31, %eax
  
  movl $0x0F0F0F0F, %eax
  roll $31, %eax
  
  movl $0xF7F7F7F7, %eax
  roll $31, %eax
  
  movl $0xFEFEFEFE, %eax
  roll $31, %eax

  // ROLr32i8_255  
  movl $0, %eax
  roll $0xFF, %eax
  
  movl $1, %eax
  roll $0xFF, %eax
  
  movl $0x80000000, %eax
  roll $0xFF, %eax
  
  movl $0x55000000, %eax
  roll $0xFF, %eax
  
  movl $0xAA000000, %eax
  roll $0xFF, %eax
  
  movl $0x0F0F0F0F, %eax
  roll $0xFF, %eax
  
  movl $0xF7F7F7F7, %eax
  roll $0xFF, %eax
  
  movl $0xFEFEFEFE, %eax
  roll $0xFF, %eax

  // ROLr64i8_1_64  
  movq $0, %rax
  rolq $1, %rax
  
  movq $1, %rax
  rolq $1, %rax
  
  movq $0x8000000000000000, %rax
  rolq $1, %rax
  
  movq $0x5500000000000000, %rax
  rolq $1, %rax
  
  movq $0xAA00000000000000, %rax
  rolq $1, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rolq $1, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rolq $1, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rolq $1, %rax

  // ROLr64i8_32_64  
  movq $0, %rax
  rolq $32, %rax
  
  movq $1, %rax
  rolq $32, %rax
  
  movq $0x8000000000000000, %rax
  rolq $32, %rax
  
  movq $0x5500000000000000, %rax
  rolq $32, %rax
  
  movq $0xAA00000000000000, %rax
  rolq $32, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rolq $32, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rolq $32, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rolq $32, %rax

  // ROLr64i8_63_64  
  movq $0, %rax
  rolq $63, %rax
  
  movq $1, %rax
  rolq $63, %rax
  
  movq $0x8000000000000000, %rax
  rolq $63, %rax
  
  movq $0x5500000000000000, %rax
  rolq $63, %rax
  
  movq $0xAA00000000000000, %rax
  rolq $63, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rolq $63, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rolq $63, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rolq $63, %rax

  // ROLr64i8_255_64  
  movq $0, %rax
  rolq $0xFF, %rax
  
  movq $1, %rax
  rolq $0xFF, %rax
  
  movq $0x8000000000000000, %rax
  rolq $0xFF, %rax
  
  movq $0x5500000000000000, %rax
  rolq $0xFF, %rax
  
  movq $0xAA00000000000000, %rax
  rolq $0xFF, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rolq $0xFF, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rolq $0xFF, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rolq $0xFF, %rax

  nop
