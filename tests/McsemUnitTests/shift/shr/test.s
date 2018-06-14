.section .text
.globl _start

_start:
  // SHRr8i8_0  
  movl $0, %eax
  shrb $0, %al
  
  movl $1, %eax
  shrb $0, %al
  
  movl $0x80, %eax
  shrb $0, %al
  
  movl $0x55, %eax
  shrb $0, %al
  
  movl $0xAA, %eax
  shrb $0, %al
  
  movl $0x0F, %eax
  shrb $0, %al
  
  movl $0xF7, %eax
  shrb $0, %al
  
  movl $0xFE, %eax
  shrb $0, %al

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
  // SHRr8i8_255  
  movl $0, %eax
  shrb $0xFF, %al
  
  movl $1, %eax
  shrb $0xFF, %al
  
  movl $0x80, %eax
  shrb $0xFF, %al
  
  movl $0x55, %eax
  shrb $0xFF, %al
  
  movl $0xAA, %eax
  shrb $0xFF, %al
  
  movl $0x0F, %eax
  shrb $0xFF, %al
  
  movl $0xF7, %eax
  shrb $0xFF, %al
  
  movl $0xFE, %eax
  shrb $0xFF, %al

/* Special encoding of SHRr8 with i8 = 1, also has special behaviour
 * with AF and OF */
  // SHRr8i8_1  
  movl $0, %eax
  shrb $1, %al
  
  movl $1, %eax
  shrb $1, %al
  
  movl $0x80, %eax
  shrb $1, %al
  
  movl $0x55, %eax
  shrb $1, %al
  
  movl $0xAA, %eax
  shrb $1, %al
  
  movl $0x0F, %eax
  shrb $1, %al
  
  movl $0xF7, %eax
  shrb $1, %al
  
  movl $0xFE, %eax
  shrb $1, %al

/* REX-prefix encoded SHRr8i8 */
  // SHRr8i8_1_64  
  movq $0, %r8
  shrb $1, %r8b
  
  movq $1, %r8
  shrb $1, %r8b
  
  movq $0x80, %r8
  shrb $1, %r8b
  
  movq $0x55, %r8
  shrb $1, %r8b
  
  movq $0xAA, %r8
  shrb $1, %r8b
  
  movq $0x0F, %r8
  shrb $1, %r8b
  
  movq $0xF7, %r8
  shrb $1, %r8b
  
  movq $0xFE, %r8
  shrb $1, %r8b

/* Special encoding with `cl` as the reg containing the number of bits */
  // SHRr8cl_1  
  
  movl $0, %eax
  movl $1, %ecx
  shrb %cl, %al
  
  
  movl $1, %eax
  movl $1, %ecx
  shrb %cl, %al
  
  
  movl $0x80, %eax
  movl $1, %ecx
  shrb %cl, %al
  
  
  movl $0x55, %eax
  movl $1, %ecx
  shrb %cl, %al
  
  
  movl $0xAA, %eax
  movl $1, %ecx
  shrb %cl, %al
  
  
  movl $0x0F, %eax
  movl $1, %ecx
  shrb %cl, %al
  
  
  movl $0xF7, %eax
  movl $1, %ecx
  shrb %cl, %al
  
  
  movl $0xFE, %eax
  movl $1, %ecx
  shrb %cl, %al
  
  
  movl $0, %eax
  movl $2, %ecx
  shrb %cl, %al
  
  
  movl $1, %eax
  movl $2, %ecx
  shrb %cl, %al
  
  
  movl $0x80, %eax
  movl $2, %ecx
  shrb %cl, %al
  
  
  movl $0x55, %eax
  movl $2, %ecx
  shrb %cl, %al
  
  
  movl $0xAA, %eax
  movl $2, %ecx
  shrb %cl, %al
  
  
  movl $0x0F, %eax
  movl $2, %ecx
  shrb %cl, %al
  
  
  movl $0xF7, %eax
  movl $2, %ecx
  shrb %cl, %al
  
  
  movl $0xFE, %eax
  movl $2, %ecx
  shrb %cl, %al
  
  
  movl $0, %eax
  movl $7, %ecx
  shrb %cl, %al
  
  
  movl $1, %eax
  movl $7, %ecx
  shrb %cl, %al
  
  
  movl $0x80, %eax
  movl $7, %ecx
  shrb %cl, %al
  
  
  movl $0x55, %eax
  movl $7, %ecx
  shrb %cl, %al
  
  
  movl $0xAA, %eax
  movl $7, %ecx
  shrb %cl, %al
  
  
  movl $0x0F, %eax
  movl $7, %ecx
  shrb %cl, %al
  
  
  movl $0xF7, %eax
  movl $7, %ecx
  shrb %cl, %al
  
  
  movl $0xFE, %eax
  movl $7, %ecx
  shrb %cl, %al

/* Special encoding with `cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
  // SHRr8cl_1_64  
  movq $0, %r8
  movq $1, %rcx
  shrb %cl, %r8b
  
  movq $1, %r8
  movq $1, %rcx
  shrb %cl, %r8b
  
  movq $0x80, %r8
  movq $1, %rcx
  shrb %cl, %r8b
  
  movq $0x55, %r8
  movq $1, %rcx
  shrb %cl, %r8b
  
  movq $0xAA, %r8
  movq $1, %rcx
  shrb %cl, %r8b
  
  movq $0x0F, %r8
  movq $1, %rcx
  shrb %cl, %r8b
  
  movq $0xF7, %r8
  movq $1, %rcx
  shrb %cl, %r8b
  
  movq $0xFE, %r8
  movq $1, %rcx
  shrb %cl, %r8b

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
  // SHRr8i8_9  
  movl $0, %eax
  shrb $9, %al
  
  movl $1, %eax
  shrb $9, %al
  
  movl $0x80, %eax
  shrb $9, %al
  
  movl $0x55, %eax
  shrb $9, %al
  
  movl $0xAA, %eax
  shrb $9, %al
  
  movl $0x0F, %eax
  shrb $9, %al
  
  movl $0xF7, %eax
  shrb $9, %al
  
  movl $0xFE, %eax
  shrb $9, %al

  // SHRr8i8_2  
  movl $0, %eax
  shrb $2, %al
  
  movl $1, %eax
  shrb $2, %al
  
  movl $0x80, %eax
  shrb $2, %al
  
  movl $0x55, %eax
  shrb $2, %al
  
  movl $0xAA, %eax
  shrb $2, %al
  
  movl $0x0F, %eax
  shrb $2, %al
  
  movl $0xF7, %eax
  shrb $2, %al
  
  movl $0xFE, %eax
  shrb $2, %al

  // SHRr16cl_1  
  movl $0, %eax
  movl $8, %ecx
  shrw %cl, %ax
  
  movl $1, %eax
  movl $8, %ecx
  shrw %cl, %ax
  
  movl $0x8000, %eax
  movl $8, %ecx
  shrw %cl, %ax
  
  movl $0x5500, %eax
  movl $8, %ecx
  shrw %cl, %ax
  
  movl $0xAA00, %eax
  movl $8, %ecx
  shrw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $8, %ecx
  shrw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $8, %ecx
  shrw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $8, %ecx
  shrw %cl, %ax
  
  movl $0, %eax
  movl $15, %ecx
  shrw %cl, %ax
  
  movl $1, %eax
  movl $15, %ecx
  shrw %cl, %ax
  
  movl $0x8000, %eax
  movl $15, %ecx
  shrw %cl, %ax
  
  movl $0x5500, %eax
  movl $15, %ecx
  shrw %cl, %ax
  
  movl $0xAA00, %eax
  movl $15, %ecx
  shrw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $15, %ecx
  shrw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $15, %ecx
  shrw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $15, %ecx
  shrw %cl, %ax

  // SHRr16i8_1  
  movl $0, %eax
  shrw $1, %ax
  
  movl $1, %eax
  shrw $1, %ax
  
  movl $0x8000, %eax
  shrw $1, %ax
  
  movl $0x5500, %eax
  shrw $1, %ax
  
  movl $0xAA00, %eax
  shrw $1, %ax
  
  movl $0x0F0F, %eax
  shrw $1, %ax
  
  movl $0xF7F7, %eax
  shrw $1, %ax
  
  movl $0xFEFE, %eax
  shrw $1, %ax

  // SHRr16i8_8  
  movl $0, %eax
  shrw $8, %ax
  
  movl $1, %eax
  shrw $8, %ax
  
  movl $0x8000, %eax
  shrw $8, %ax
  
  movl $0x5500, %eax
  shrw $8, %ax
  
  movl $0xAA00, %eax
  shrw $8, %ax
  
  movl $0x0F0F, %eax
  shrw $8, %ax
  
  movl $0xF7F7, %eax
  shrw $8, %ax
  
  movl $0xFEFE, %eax
  shrw $8, %ax

  // SHRr16i8_15  
  movl $0, %eax
  shrw $15, %ax
  
  movl $1, %eax
  shrw $15, %ax
  
  movl $0x8000, %eax
  shrw $15, %ax
  
  movl $0x5500, %eax
  shrw $15, %ax
  
  movl $0xAA00, %eax
  shrw $15, %ax
  
  movl $0x0F0F, %eax
  shrw $15, %ax
  
  movl $0xF7F7, %eax
  shrw $15, %ax
  
  movl $0xFEFE, %eax
  shrw $15, %ax

  // SHRr16i8_255  
  movl $0, %eax
  shrw $0xFF, %ax
  
  movl $1, %eax
  shrw $0xFF, %ax
  
  movl $0x8000, %eax
  shrw $0xFF, %ax
  
  movl $0x5500, %eax
  shrw $0xFF, %ax
  
  movl $0xAA00, %eax
  shrw $0xFF, %ax
  
  movl $0x0F0F, %eax
  shrw $0xFF, %ax
  
  movl $0xF7F7, %eax
  shrw $0xFF, %ax
  
  movl $0xFEFE, %eax
  shrw $0xFF, %ax

  // SHRr32i8_1  
  movl $0, %eax
  shrl $1, %eax
  
  movl $1, %eax
  shrl $1, %eax
  
  movl $0x80000000, %eax
  shrl $1, %eax
  
  movl $0x55000000, %eax
  shrl $1, %eax
  
  movl $0xAA000000, %eax
  shrl $1, %eax
  
  movl $0x0F0F0F0F, %eax
  shrl $1, %eax
  
  movl $0xF7F7F7F7, %eax
  shrl $1, %eax
  
  movl $0xFEFEFEFE, %eax
  shrl $1, %eax

  // SHRr32i8_16  
  movl $0, %eax
  shrl $16, %eax
  
  movl $1, %eax
  shrl $16, %eax
  
  movl $0x80000000, %eax
  shrl $16, %eax
  
  movl $0x55000000, %eax
  shrl $16, %eax
  
  movl $0xAA000000, %eax
  shrl $16, %eax
  
  movl $0x0F0F0F0F, %eax
  shrl $16, %eax
  
  movl $0xF7F7F7F7, %eax
  shrl $16, %eax
  
  movl $0xFEFEFEFE, %eax
  shrl $16, %eax

  // SHRr32i8_31  
  movl $0, %eax
  shrl $31, %eax
  
  movl $1, %eax
  shrl $31, %eax
  
  movl $0x80000000, %eax
  shrl $31, %eax
  
  movl $0x55000000, %eax
  shrl $31, %eax
  
  movl $0xAA000000, %eax
  shrl $31, %eax
  
  movl $0x0F0F0F0F, %eax
  shrl $31, %eax
  
  movl $0xF7F7F7F7, %eax
  shrl $31, %eax
  
  movl $0xFEFEFEFE, %eax
  shrl $31, %eax

  // SHRr32i8_255  
  movl $0, %eax
  shrl $0xFF, %eax
  
  movl $1, %eax
  shrl $0xFF, %eax
  
  movl $0x80000000, %eax
  shrl $0xFF, %eax
  
  movl $0x55000000, %eax
  shrl $0xFF, %eax
  
  movl $0xAA000000, %eax
  shrl $0xFF, %eax
  
  movl $0x0F0F0F0F, %eax
  shrl $0xFF, %eax
  
  movl $0xF7F7F7F7, %eax
  shrl $0xFF, %eax
  
  movl $0xFEFEFEFE, %eax
  shrl $0xFF, %eax

  // SHRr64i8_1_64  
  movq $0, %rax
  shrq $1, %rax
  
  movq $1, %rax
  shrq $1, %rax
  
  movq $0x8000000000000000, %rax
  shrq $1, %rax
  
  movq $0x5500000000000000, %rax
  shrq $1, %rax
  
  movq $0xAA00000000000000, %rax
  shrq $1, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  shrq $1, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  shrq $1, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  shrq $1, %rax

  // SHRr64i8_32_64  
  movq $0, %rax
  shrq $32, %rax
  
  movq $1, %rax
  shrq $32, %rax
  
  movq $0x8000000000000000, %rax
  shrq $32, %rax
  
  movq $0x5500000000000000, %rax
  shrq $32, %rax
  
  movq $0xAA00000000000000, %rax
  shrq $32, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  shrq $32, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  shrq $32, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  shrq $32, %rax

  // SHRr64i8_63_64  
  movq $0, %rax
  shrq $63, %rax
  
  movq $1, %rax
  shrq $63, %rax
  
  movq $0x8000000000000000, %rax
  shrq $63, %rax
  
  movq $0x5500000000000000, %rax
  shrq $63, %rax
  
  movq $0xAA00000000000000, %rax
  shrq $63, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  shrq $63, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  shrq $63, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  shrq $63, %rax

  // SHRr64i8_255_64  
  movq $0, %rax
  shrq $0xFF, %rax
  
  movq $1, %rax
  shrq $0xFF, %rax
  
  movq $0x8000000000000000, %rax
  shrq $0xFF, %rax
  
  movq $0x5500000000000000, %rax
  shrq $0xFF, %rax
  
  movq $0xAA00000000000000, %rax
  shrq $0xFF, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  shrq $0xFF, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  shrq $0xFF, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  shrq $0xFF, %rax

  nop
