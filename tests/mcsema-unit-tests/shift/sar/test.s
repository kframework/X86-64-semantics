.section .text
.globl _start

_start:
  // SARr8i8_0  
  movl $0, %eax
  sarb $0, %al
  
  movl $1, %eax
  sarb $0, %al
  
  movl $0x80, %eax
  sarb $0, %al
  
  movl $0x55, %eax
  sarb $0, %al
  
  movl $0xAA, %eax
  sarb $0, %al
  
  movl $0x0F, %eax
  sarb $0, %al
  
  movl $0xF7, %eax
  sarb $0, %al
  
  movl $0xFE, %eax
  sarb $0, %al

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
  // SARr8i8_255  
  movl $0, %eax
  sarb $0xFF, %al
  
  movl $1, %eax
  sarb $0xFF, %al
  
  movl $0x80, %eax
  sarb $0xFF, %al
  
  movl $0x55, %eax
  sarb $0xFF, %al
  
  movl $0xAA, %eax
  sarb $0xFF, %al
  
  movl $0x0F, %eax
  sarb $0xFF, %al
  
  movl $0xF7, %eax
  sarb $0xFF, %al
  
  movl $0xFE, %eax
  sarb $0xFF, %al

/* Special encoding of SARr8 with i8 = 1, also has special behaviour
 * with AF and OF */
  // SARr8i8_1  
  movl $0, %eax
  sarb $1, %al
  
  movl $1, %eax
  sarb $1, %al
  
  movl $0x80, %eax
  sarb $1, %al
  
  movl $0x55, %eax
  sarb $1, %al
  
  movl $0xAA, %eax
  sarb $1, %al
  
  movl $0x0F, %eax
  sarb $1, %al
  
  movl $0xF7, %eax
  sarb $1, %al
  
  movl $0xFE, %eax
  sarb $1, %al

/* REX-prefix encoded SARr8i8 */
  // SARr8i8_1_64  
  movq $0, %r8
  sarb $1, %r8b
  
  movq $1, %r8
  sarb $1, %r8b
  
  movq $0x80, %r8
  sarb $1, %r8b
  
  movq $0x55, %r8
  sarb $1, %r8b
  
  movq $0xAA, %r8
  sarb $1, %r8b
  
  movq $0x0F, %r8
  sarb $1, %r8b
  
  movq $0xF7, %r8
  sarb $1, %r8b
  
  movq $0xFE, %r8
  sarb $1, %r8b

/* Special encoding with `cl` as the reg containing the number of bits */
  // SARr8cl_1  
  
  movl $0, %eax
  movl $1, %ecx
  sarb %cl, %al
  
  
  movl $1, %eax
  movl $1, %ecx
  sarb %cl, %al
  
  
  movl $0x80, %eax
  movl $1, %ecx
  sarb %cl, %al
  
  
  movl $0x55, %eax
  movl $1, %ecx
  sarb %cl, %al
  
  
  movl $0xAA, %eax
  movl $1, %ecx
  sarb %cl, %al
  
  
  movl $0x0F, %eax
  movl $1, %ecx
  sarb %cl, %al
  
  
  movl $0xF7, %eax
  movl $1, %ecx
  sarb %cl, %al
  
  
  movl $0xFE, %eax
  movl $1, %ecx
  sarb %cl, %al
  
  
  movl $0, %eax
  movl $2, %ecx
  sarb %cl, %al
  
  
  movl $1, %eax
  movl $2, %ecx
  sarb %cl, %al
  
  
  movl $0x80, %eax
  movl $2, %ecx
  sarb %cl, %al
  
  
  movl $0x55, %eax
  movl $2, %ecx
  sarb %cl, %al
  
  
  movl $0xAA, %eax
  movl $2, %ecx
  sarb %cl, %al
  
  
  movl $0x0F, %eax
  movl $2, %ecx
  sarb %cl, %al
  
  
  movl $0xF7, %eax
  movl $2, %ecx
  sarb %cl, %al
  
  
  movl $0xFE, %eax
  movl $2, %ecx
  sarb %cl, %al
  
  
  movl $0, %eax
  movl $7, %ecx
  sarb %cl, %al
  
  
  movl $1, %eax
  movl $7, %ecx
  sarb %cl, %al
  
  
  movl $0x80, %eax
  movl $7, %ecx
  sarb %cl, %al
  
  
  movl $0x55, %eax
  movl $7, %ecx
  sarb %cl, %al
  
  
  movl $0xAA, %eax
  movl $7, %ecx
  sarb %cl, %al
  
  
  movl $0x0F, %eax
  movl $7, %ecx
  sarb %cl, %al
  
  
  movl $0xF7, %eax
  movl $7, %ecx
  sarb %cl, %al
  
  
  movl $0xFE, %eax
  movl $7, %ecx
  sarb %cl, %al

/* Special encoding with `cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
  // SARr8cl_1_64  
  movq $0, %r8
  movq $1, %rcx
  sarb %cl, %r8b
  
  movq $1, %r8
  movq $1, %rcx
  sarb %cl, %r8b
  
  movq $0x80, %r8
  movq $1, %rcx
  sarb %cl, %r8b
  
  movq $0x55, %r8
  movq $1, %rcx
  sarb %cl, %r8b
  
  movq $0xAA, %r8
  movq $1, %rcx
  sarb %cl, %r8b
  
  movq $0x0F, %r8
  movq $1, %rcx
  sarb %cl, %r8b
  
  movq $0xF7, %r8
  movq $1, %rcx
  sarb %cl, %r8b
  
  movq $0xFE, %r8
  movq $1, %rcx
  sarb %cl, %r8b

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
  // SARr8i8_9  
  movl $0, %eax
  sarb $9, %al
  
  movl $1, %eax
  sarb $9, %al
  
  movl $0x80, %eax
  sarb $9, %al
  
  movl $0x55, %eax
  sarb $9, %al
  
  movl $0xAA, %eax
  sarb $9, %al
  
  movl $0x0F, %eax
  sarb $9, %al
  
  movl $0xF7, %eax
  sarb $9, %al
  
  movl $0xFE, %eax
  sarb $9, %al

  // SARr8i8_2  
  movl $0, %eax
  sarb $2, %al
  
  movl $1, %eax
  sarb $2, %al
  
  movl $0x80, %eax
  sarb $2, %al
  
  movl $0x55, %eax
  sarb $2, %al
  
  movl $0xAA, %eax
  sarb $2, %al
  
  movl $0x0F, %eax
  sarb $2, %al
  
  movl $0xF7, %eax
  sarb $2, %al
  
  movl $0xFE, %eax
  sarb $2, %al

  // SARr16cl_1  
  movl $0, %eax
  movl $8, %ecx
  sarw %cl, %ax
  
  movl $1, %eax
  movl $8, %ecx
  sarw %cl, %ax
  
  movl $0x8000, %eax
  movl $8, %ecx
  sarw %cl, %ax
  
  movl $0x5500, %eax
  movl $8, %ecx
  sarw %cl, %ax
  
  movl $0xAA00, %eax
  movl $8, %ecx
  sarw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $8, %ecx
  sarw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $8, %ecx
  sarw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $8, %ecx
  sarw %cl, %ax
  
  movl $0, %eax
  movl $15, %ecx
  sarw %cl, %ax
  
  movl $1, %eax
  movl $15, %ecx
  sarw %cl, %ax
  
  movl $0x8000, %eax
  movl $15, %ecx
  sarw %cl, %ax
  
  movl $0x5500, %eax
  movl $15, %ecx
  sarw %cl, %ax
  
  movl $0xAA00, %eax
  movl $15, %ecx
  sarw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $15, %ecx
  sarw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $15, %ecx
  sarw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $15, %ecx
  sarw %cl, %ax

  // SARr16i8_1  
  movl $0, %eax
  sarw $1, %ax
  
  movl $1, %eax
  sarw $1, %ax
  
  movl $0x8000, %eax
  sarw $1, %ax
  
  movl $0x5500, %eax
  sarw $1, %ax
  
  movl $0xAA00, %eax
  sarw $1, %ax
  
  movl $0x0F0F, %eax
  sarw $1, %ax
  
  movl $0xF7F7, %eax
  sarw $1, %ax
  
  movl $0xFEFE, %eax
  sarw $1, %ax

  // SARr16i8_8  
  movl $0, %eax
  sarw $8, %ax
  
  movl $1, %eax
  sarw $8, %ax
  
  movl $0x8000, %eax
  sarw $8, %ax
  
  movl $0x5500, %eax
  sarw $8, %ax
  
  movl $0xAA00, %eax
  sarw $8, %ax
  
  movl $0x0F0F, %eax
  sarw $8, %ax
  
  movl $0xF7F7, %eax
  sarw $8, %ax
  
  movl $0xFEFE, %eax
  sarw $8, %ax

  // SARr16i8_15  
  movl $0, %eax
  sarw $15, %ax
  
  movl $1, %eax
  sarw $15, %ax
  
  movl $0x8000, %eax
  sarw $15, %ax
  
  movl $0x5500, %eax
  sarw $15, %ax
  
  movl $0xAA00, %eax
  sarw $15, %ax
  
  movl $0x0F0F, %eax
  sarw $15, %ax
  
  movl $0xF7F7, %eax
  sarw $15, %ax
  
  movl $0xFEFE, %eax
  sarw $15, %ax

  // SARr16i8_255  
  movl $0, %eax
  sarw $0xFF, %ax
  
  movl $1, %eax
  sarw $0xFF, %ax
  
  movl $0x8000, %eax
  sarw $0xFF, %ax
  
  movl $0x5500, %eax
  sarw $0xFF, %ax
  
  movl $0xAA00, %eax
  sarw $0xFF, %ax
  
  movl $0x0F0F, %eax
  sarw $0xFF, %ax
  
  movl $0xF7F7, %eax
  sarw $0xFF, %ax
  
  movl $0xFEFE, %eax
  sarw $0xFF, %ax

  // SARr32i8_1  
  movl $0, %eax
  sarl $1, %eax
  
  movl $1, %eax
  sarl $1, %eax
  
  movl $0x80000000, %eax
  sarl $1, %eax
  
  movl $0x55000000, %eax
  sarl $1, %eax
  
  movl $0xAA000000, %eax
  sarl $1, %eax
  
  movl $0x0F0F0F0F, %eax
  sarl $1, %eax
  
  movl $0xF7F7F7F7, %eax
  sarl $1, %eax
  
  movl $0xFEFEFEFE, %eax
  sarl $1, %eax

  // SARr32i8_16  
  movl $0, %eax
  sarl $16, %eax
  
  movl $1, %eax
  sarl $16, %eax
  
  movl $0x80000000, %eax
  sarl $16, %eax
  
  movl $0x55000000, %eax
  sarl $16, %eax
  
  movl $0xAA000000, %eax
  sarl $16, %eax
  
  movl $0x0F0F0F0F, %eax
  sarl $16, %eax
  
  movl $0xF7F7F7F7, %eax
  sarl $16, %eax
  
  movl $0xFEFEFEFE, %eax
  sarl $16, %eax

  // SARr32i8_31  
  movl $0, %eax
  sarl $31, %eax
  
  movl $1, %eax
  sarl $31, %eax
  
  movl $0x80000000, %eax
  sarl $31, %eax
  
  movl $0x55000000, %eax
  sarl $31, %eax
  
  movl $0xAA000000, %eax
  sarl $31, %eax
  
  movl $0x0F0F0F0F, %eax
  sarl $31, %eax
  
  movl $0xF7F7F7F7, %eax
  sarl $31, %eax
  
  movl $0xFEFEFEFE, %eax
  sarl $31, %eax

  // SARr32i8_255  
  movl $0, %eax
  sarl $0xFF, %eax
  
  movl $1, %eax
  sarl $0xFF, %eax
  
  movl $0x80000000, %eax
  sarl $0xFF, %eax
  
  movl $0x55000000, %eax
  sarl $0xFF, %eax
  
  movl $0xAA000000, %eax
  sarl $0xFF, %eax
  
  movl $0x0F0F0F0F, %eax
  sarl $0xFF, %eax
  
  movl $0xF7F7F7F7, %eax
  sarl $0xFF, %eax
  
  movl $0xFEFEFEFE, %eax
  sarl $0xFF, %eax

  // SARr64i8_1_64  
  movq $0, %rax
  sarq $1, %rax
  
  movq $1, %rax
  sarq $1, %rax
  
  movq $0x8000000000000000, %rax
  sarq $1, %rax
  
  movq $0x5500000000000000, %rax
  sarq $1, %rax
  
  movq $0xAA00000000000000, %rax
  sarq $1, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  sarq $1, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  sarq $1, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  sarq $1, %rax

  // SARr64i8_32_64  
  movq $0, %rax
  sarq $32, %rax
  
  movq $1, %rax
  sarq $32, %rax
  
  movq $0x8000000000000000, %rax
  sarq $32, %rax
  
  movq $0x5500000000000000, %rax
  sarq $32, %rax
  
  movq $0xAA00000000000000, %rax
  sarq $32, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  sarq $32, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  sarq $32, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  sarq $32, %rax

  // SARr64i8_63_64  
  movq $0, %rax
  sarq $63, %rax
  
  movq $1, %rax
  sarq $63, %rax
  
  movq $0x8000000000000000, %rax
  sarq $63, %rax
  
  movq $0x5500000000000000, %rax
  sarq $63, %rax
  
  movq $0xAA00000000000000, %rax
  sarq $63, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  sarq $63, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  sarq $63, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  sarq $63, %rax

  // SARr64i8_255_64  
  movq $0, %rax
  sarq $0xFF, %rax
  
  movq $1, %rax
  sarq $0xFF, %rax
  
  movq $0x8000000000000000, %rax
  sarq $0xFF, %rax
  
  movq $0x5500000000000000, %rax
  sarq $0xFF, %rax
  
  movq $0xAA00000000000000, %rax
  sarq $0xFF, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  sarq $0xFF, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  sarq $0xFF, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  sarq $0xFF, %rax

  nop
