.section .text
.globl _start

_start:
  // RCRr8i8_0  
  movl $0, %eax
  rcrb $0, %al
  
  movl $1, %eax
  rcrb $0, %al
  
  movl $0x80, %eax
  rcrb $0, %al
  
  movl $0x55, %eax
  rcrb $0, %al
  
  movl $0xAA, %eax
  rcrb $0, %al
  
  movl $0x0F, %eax
  rcrb $0, %al
  
  movl $0xF7, %eax
  rcrb $0, %al
  
  movl $0xFE, %eax
  rcrb $0, %al

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
  // RCRr8i8_255  
  movl $0, %eax
  rcrb $0xFF, %al
  
  movl $1, %eax
  rcrb $0xFF, %al
  
  movl $0x80, %eax
  rcrb $0xFF, %al
  
  movl $0x55, %eax
  rcrb $0xFF, %al
  
  movl $0xAA, %eax
  rcrb $0xFF, %al
  
  movl $0x0F, %eax
  rcrb $0xFF, %al
  
  movl $0xF7, %eax
  rcrb $0xFF, %al
  
  movl $0xFE, %eax
  rcrb $0xFF, %al

/* Special encoding of RCRr8 with i8 = 1, also has special behaviour
 * with AF and OF */
  // RCRr8i8_1  
  movl $0, %eax
  rcrb $1, %al
  
  movl $1, %eax
  rcrb $1, %al
  
  movl $0x80, %eax
  rcrb $1, %al
  
  movl $0x55, %eax
  rcrb $1, %al
  
  movl $0xAA, %eax
  rcrb $1, %al
  
  movl $0x0F, %eax
  rcrb $1, %al
  
  movl $0xF7, %eax
  rcrb $1, %al
  
  movl $0xFE, %eax
  rcrb $1, %al

/* REX-prefix encoded RCRr8i8 */
  // RCRr8i8_1_64  
  movq $0, %r8
  rcrb $1, %r8b
  
  movq $1, %r8
  rcrb $1, %r8b
  
  movq $0x80, %r8
  rcrb $1, %r8b
  
  movq $0x55, %r8
  rcrb $1, %r8b
  
  movq $0xAA, %r8
  rcrb $1, %r8b
  
  movq $0x0F, %r8
  rcrb $1, %r8b
  
  movq $0xF7, %r8
  rcrb $1, %r8b
  
  movq $0xFE, %r8
  rcrb $1, %r8b

/* Special encoding with `%cl` as the reg containing the number of bits */
  // RCRr8cl  
  movl $0, %eax
  movl $2, %ecx
  rcrb %cl, %al
  
  movl $1, %eax
  movl $2, %ecx
  rcrb %cl, %al
  
  movl $0x80, %eax
  movl $2, %ecx
  rcrb %cl, %al
  
  movl $0x55, %eax
  movl $2, %ecx
  rcrb %cl, %al
  
  movl $0xAA, %eax
  movl $2, %ecx
  rcrb %cl, %al
  
  movl $0x0F, %eax
  movl $2, %ecx
  rcrb %cl, %al
  
  movl $0xF7, %eax
  movl $2, %ecx
  rcrb %cl, %al
  
  movl $0xFE, %eax
  movl $2, %ecx
  rcrb %cl, %al
  
  movl $0, %eax
  movl $7, %ecx
  rcrb %cl, %al
  
  movl $1, %eax
  movl $7, %ecx
  rcrb %cl, %al
  
  movl $0x80, %eax
  movl $7, %ecx
  rcrb %cl, %al
  
  movl $0x55, %eax
  movl $7, %ecx
  rcrb %cl, %al
  
  movl $0xAA, %eax
  movl $7, %ecx
  rcrb %cl, %al
  
  movl $0x0F, %eax
  movl $7, %ecx
  rcrb %cl, %al
  
  movl $0xF7, %eax
  movl $7, %ecx
  rcrb %cl, %al
  
  movl $0xFE, %eax
  movl $7, %ecx
  rcrb %cl, %al

/* Special encoding with `%cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
  // RCRr8cl_1_64  
  movq $0, %r8
  movq $1, %rcx
  rcrb %cl, %r8b
  
  movq $1, %r8
  movq $1, %rcx
  rcrb %cl, %r8b
  
  movq $0x80, %r8
  movq $1, %rcx
  rcrb %cl, %r8b
  
  movq $0x55, %r8
  movq $1, %rcx
  rcrb %cl, %r8b
  
  movq $0xAA, %r8
  movq $1, %rcx
  rcrb %cl, %r8b
  
  movq $0x0F, %r8
  movq $1, %rcx
  rcrb %cl, %r8b
  
  movq $0xF7, %r8
  movq $1, %rcx
  rcrb %cl, %r8b
  
  movq $0xFE, %r8
  movq $1, %rcx
  rcrb %cl, %r8b

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
  // RCRr8i8_9  
  movl $0, %eax
  rcrb $9, %al
  
  movl $1, %eax
  rcrb $9, %al
  
  movl $0x80, %eax
  rcrb $9, %al
  
  movl $0x55, %eax
  rcrb $9, %al
  
  movl $0xAA, %eax
  rcrb $9, %al
  
  movl $0x0F, %eax
  rcrb $9, %al
  
  movl $0xF7, %eax
  rcrb $9, %al
  
  movl $0xFE, %eax
  rcrb $9, %al

  // RCRr8i8_2  
  movl $0, %eax
  rcrb $2, %al
  
  movl $1, %eax
  rcrb $2, %al
  
  movl $0x80, %eax
  rcrb $2, %al
  
  movl $0x55, %eax
  rcrb $2, %al
  
  movl $0xAA, %eax
  rcrb $2, %al
  
  movl $0x0F, %eax
  rcrb $2, %al
  
  movl $0xF7, %eax
  rcrb $2, %al
  
  movl $0xFE, %eax
  rcrb $2, %al

  // RCRr16cl  
  movl $0, %eax
  movl $8, %ecx
  rcrw %cl, %ax
  
  movl $1, %eax
  movl $8, %ecx
  rcrw %cl, %ax
  
  movl $0x8000, %eax
  movl $8, %ecx
  rcrw %cl, %ax
  
  movl $0x5500, %eax
  movl $8, %ecx
  rcrw %cl, %ax
  
  movl $0xAA00, %eax
  movl $8, %ecx
  rcrw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $8, %ecx
  rcrw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $8, %ecx
  rcrw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $8, %ecx
  rcrw %cl, %ax
  
  movl $0, %eax
  movl $15, %ecx
  rcrw %cl, %ax
  
  movl $1, %eax
  movl $15, %ecx
  rcrw %cl, %ax
  
  movl $0x8000, %eax
  movl $15, %ecx
  rcrw %cl, %ax
  
  movl $0x5500, %eax
  movl $15, %ecx
  rcrw %cl, %ax
  
  movl $0xAA00, %eax
  movl $15, %ecx
  rcrw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $15, %ecx
  rcrw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $15, %ecx
  rcrw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $15, %ecx
  rcrw %cl, %ax

  // RCRr16i8_1  
  movl $0, %eax
  rcrw $1, %ax
  
  movl $1, %eax
  rcrw $1, %ax
  
  movl $0x8000, %eax
  rcrw $1, %ax
  
  movl $0x5500, %eax
  rcrw $1, %ax
  
  movl $0xAA00, %eax
  rcrw $1, %ax
  
  movl $0x0F0F, %eax
  rcrw $1, %ax
  
  movl $0xF7F7, %eax
  rcrw $1, %ax
  
  movl $0xFEFE, %eax
  rcrw $1, %ax

  // RCRr16i8_8  
  movl $0, %eax
  rcrw $8, %ax
  
  movl $1, %eax
  rcrw $8, %ax
  
  movl $0x8000, %eax
  rcrw $8, %ax
  
  movl $0x5500, %eax
  rcrw $8, %ax
  
  movl $0xAA00, %eax
  rcrw $8, %ax
  
  movl $0x0F0F, %eax
  rcrw $8, %ax
  
  movl $0xF7F7, %eax
  rcrw $8, %ax
  
  movl $0xFEFE, %eax
  rcrw $8, %ax

  // RCRr16i8_15  
  movl $0, %eax
  rcrw $15, %ax
  
  movl $1, %eax
  rcrw $15, %ax
  
  movl $0x8000, %eax
  rcrw $15, %ax
  
  movl $0x5500, %eax
  rcrw $15, %ax
  
  movl $0xAA00, %eax
  rcrw $15, %ax
  
  movl $0x0F0F, %eax
  rcrw $15, %ax
  
  movl $0xF7F7, %eax
  rcrw $15, %ax
  
  movl $0xFEFE, %eax
  rcrw $15, %ax

  // RCRr16i8_255  
  movl $0, %eax
  rcrw $0xFF, %ax
  
  movl $1, %eax
  rcrw $0xFF, %ax
  
  movl $0x8000, %eax
  rcrw $0xFF, %ax
  
  movl $0x5500, %eax
  rcrw $0xFF, %ax
  
  movl $0xAA00, %eax
  rcrw $0xFF, %ax
  
  movl $0x0F0F, %eax
  rcrw $0xFF, %ax
  
  movl $0xF7F7, %eax
  rcrw $0xFF, %ax
  
  movl $0xFEFE, %eax
  rcrw $0xFF, %ax

  // RCRr32i8_1  
  movl $0, %eax
  rcrl $1, %eax
  
  movl $1, %eax
  rcrl $1, %eax
  
  movl $0x80000000, %eax
  rcrl $1, %eax
  
  movl $0x55000000, %eax
  rcrl $1, %eax
  
  movl $0xAA000000, %eax
  rcrl $1, %eax
  
  movl $0x0F0F0F0F, %eax
  rcrl $1, %eax
  
  movl $0xF7F7F7F7, %eax
  rcrl $1, %eax
  
  movl $0xFEFEFEFE, %eax
  rcrl $1, %eax

  // RCRr32i8_16  
  movl $0, %eax
  rcrl $16, %eax
  
  movl $1, %eax
  rcrl $16, %eax
  
  movl $0x80000000, %eax
  rcrl $16, %eax
  
  movl $0x55000000, %eax
  rcrl $16, %eax
  
  movl $0xAA000000, %eax
  rcrl $16, %eax
  
  movl $0x0F0F0F0F, %eax
  rcrl $16, %eax
  
  movl $0xF7F7F7F7, %eax
  rcrl $16, %eax
  
  movl $0xFEFEFEFE, %eax
  rcrl $16, %eax

  // RCRr32i8_31  
  movl $0, %eax
  rcrl $31, %eax
  
  movl $1, %eax
  rcrl $31, %eax
  
  movl $0x80000000, %eax
  rcrl $31, %eax
  
  movl $0x55000000, %eax
  rcrl $31, %eax
  
  movl $0xAA000000, %eax
  rcrl $31, %eax
  
  movl $0x0F0F0F0F, %eax
  rcrl $31, %eax
  
  movl $0xF7F7F7F7, %eax
  rcrl $31, %eax
  
  movl $0xFEFEFEFE, %eax
  rcrl $31, %eax

  // RCRr32i8_255  
  movl $0, %eax
  rcrl $0xFF, %eax
  
  movl $1, %eax
  rcrl $0xFF, %eax
  
  movl $0x80000000, %eax
  rcrl $0xFF, %eax
  
  movl $0x55000000, %eax
  rcrl $0xFF, %eax
  
  movl $0xAA000000, %eax
  rcrl $0xFF, %eax
  
  movl $0x0F0F0F0F, %eax
  rcrl $0xFF, %eax
  
  movl $0xF7F7F7F7, %eax
  rcrl $0xFF, %eax
  
  movl $0xFEFEFEFE, %eax
  rcrl $0xFF, %eax

  // RCRr64i8_1_64  
  movq $0, %rax
  rcrq $1, %rax
  
  movq $1, %rax
  rcrq $1, %rax
  
  movq $0x8000000000000000, %rax
  rcrq $1, %rax
  
  movq $0x5500000000000000, %rax
  rcrq $1, %rax
  
  movq $0xAA00000000000000, %rax
  rcrq $1, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rcrq $1, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rcrq $1, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rcrq $1, %rax

  // RCRr64i8_32_64  
  movq $0, %rax
  rcrq $32, %rax
  
  movq $1, %rax
  rcrq $32, %rax
  
  movq $0x8000000000000000, %rax
  rcrq $32, %rax
  
  movq $0x5500000000000000, %rax
  rcrq $32, %rax
  
  movq $0xAA00000000000000, %rax
  rcrq $32, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rcrq $32, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rcrq $32, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rcrq $32, %rax

  // RCRr64i8_63_64  
  movq $0, %rax
  rcrq $63, %rax
  
  movq $1, %rax
  rcrq $63, %rax
  
  movq $0x8000000000000000, %rax
  rcrq $63, %rax
  
  movq $0x5500000000000000, %rax
  rcrq $63, %rax
  
  movq $0xAA00000000000000, %rax
  rcrq $63, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rcrq $63, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rcrq $63, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rcrq $63, %rax

  // RCRr64i8_255_64  
  movq $0, %rax
  rcrq $0xFF, %rax
  
  movq $1, %rax
  rcrq $0xFF, %rax
  
  movq $0x8000000000000000, %rax
  rcrq $0xFF, %rax
  
  movq $0x5500000000000000, %rax
  rcrq $0xFF, %rax
  
  movq $0xAA00000000000000, %rax
  rcrq $0xFF, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rcrq $0xFF, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rcrq $0xFF, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rcrq $0xFF, %rax

  nop
