.section .text
.globl _start

_start:
  // RCLr8i8_0  
  movl $0, %eax
  rclb $0, %al
  
  movl $1, %eax
  rclb $0, %al
  
  movl $0x80, %eax
  rclb $0, %al
  
  movl $0x55, %eax
  rclb $0, %al
  
  movl $0xAA, %eax
  rclb $0, %al
  
  movl $0x0F, %eax
  rclb $0, %al
  
  movl $0xF7, %eax
  rclb $0, %al
  
  movl $0xFE, %eax
  rclb $0, %al

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
  // RCLr8i8_255  
  movl $0, %eax
  rclb $0xFF, %al
  
  movl $1, %eax
  rclb $0xFF, %al
  
  movl $0x80, %eax
  rclb $0xFF, %al
  
  movl $0x55, %eax
  rclb $0xFF, %al
  
  movl $0xAA, %eax
  rclb $0xFF, %al
  
  movl $0x0F, %eax
  rclb $0xFF, %al
  
  movl $0xF7, %eax
  rclb $0xFF, %al
  
  movl $0xFE, %eax
  rclb $0xFF, %al

/* Special encoding of RCLr8 with i8 = 1, also has special behaviour
 * with AF and OF */
  // RCLr8i8_1  
  movl $0, %eax
  rclb $1, %al
  
  movl $1, %eax
  rclb $1, %al
  
  movl $0x80, %eax
  rclb $1, %al
  
  movl $0x55, %eax
  rclb $1, %al
  
  movl $0xAA, %eax
  rclb $1, %al
  
  movl $0x0F, %eax
  rclb $1, %al
  
  movl $0xF7, %eax
  rclb $1, %al
  
  movl $0xFE, %eax
  rclb $1, %al

/* REX-prefix encoded RCLr8i8 */
  // RCLr8i8_1_64  
  movq $0, %r8
  rclb $1, %r8b
  
  movq $1, %r8
  rclb $1, %r8b
  
  movq $0x80, %r8
  rclb $1, %r8b
  
  movq $0x55, %r8
  rclb $1, %r8b
  
  movq $0xAA, %r8
  rclb $1, %r8b
  
  movq $0x0F, %r8
  rclb $1, %r8b
  
  movq $0xF7, %r8
  rclb $1, %r8b
  
  movq $0xFE, %r8
  rclb $1, %r8b

/* Special encoding with `%cl` as the reg containing the number of bits */
  // RCLr8cl  
  movl $0, %eax
  movl $2, %ecx
  rclb %cl, %al
  
  movl $1, %eax
  movl $2, %ecx
  rclb %cl, %al
  
  movl $0x80, %eax
  movl $2, %ecx
  rclb %cl, %al
  
  movl $0x55, %eax
  movl $2, %ecx
  rclb %cl, %al
  
  movl $0xAA, %eax
  movl $2, %ecx
  rclb %cl, %al
  
  movl $0x0F, %eax
  movl $2, %ecx
  rclb %cl, %al
  
  movl $0xF7, %eax
  movl $2, %ecx
  rclb %cl, %al
  
  movl $0xFE, %eax
  movl $2, %ecx
  rclb %cl, %al
  
  movl $0, %eax
  movl $7, %ecx
  rclb %cl, %al
  
  movl $1, %eax
  movl $7, %ecx
  rclb %cl, %al
  
  movl $0x80, %eax
  movl $7, %ecx
  rclb %cl, %al
  
  movl $0x55, %eax
  movl $7, %ecx
  rclb %cl, %al
  
  movl $0xAA, %eax
  movl $7, %ecx
  rclb %cl, %al
  
  movl $0x0F, %eax
  movl $7, %ecx
  rclb %cl, %al
  
  movl $0xF7, %eax
  movl $7, %ecx
  rclb %cl, %al
  
  movl $0xFE, %eax
  movl $7, %ecx
  rclb %cl, %al

/* Special encoding with `%cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
  // RCLr8cl_1_64  
  movq $0, %r8
  movq $1, %rcx
  rclb %cl, %r8b
  
  movq $1, %r8
  movq $1, %rcx
  rclb %cl, %r8b
  
  movq $0x80, %r8
  movq $1, %rcx
  rclb %cl, %r8b
  
  movq $0x55, %r8
  movq $1, %rcx
  rclb %cl, %r8b
  
  movq $0xAA, %r8
  movq $1, %rcx
  rclb %cl, %r8b
  
  movq $0x0F, %r8
  movq $1, %rcx
  rclb %cl, %r8b
  
  movq $0xF7, %r8
  movq $1, %rcx
  rclb %cl, %r8b
  
  movq $0xFE, %r8
  movq $1, %rcx
  rclb %cl, %r8b

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
  // RCLr8i8_9  
  movl $0, %eax
  rclb $9, %al
  
  movl $1, %eax
  rclb $9, %al
  
  movl $0x80, %eax
  rclb $9, %al
  
  movl $0x55, %eax
  rclb $9, %al
  
  movl $0xAA, %eax
  rclb $9, %al
  
  movl $0x0F, %eax
  rclb $9, %al
  
  movl $0xF7, %eax
  rclb $9, %al
  
  movl $0xFE, %eax
  rclb $9, %al

  // RCLr8i8_2  
  movl $0, %eax
  rclb $2, %al
  
  movl $1, %eax
  rclb $2, %al
  
  movl $0x80, %eax
  rclb $2, %al
  
  movl $0x55, %eax
  rclb $2, %al
  
  movl $0xAA, %eax
  rclb $2, %al
  
  movl $0x0F, %eax
  rclb $2, %al
  
  movl $0xF7, %eax
  rclb $2, %al
  
  movl $0xFE, %eax
  rclb $2, %al

  // RCLr16cl  
  movl $0, %eax
  movl $8, %ecx
  rclw %cl, %ax
  
  movl $1, %eax
  movl $8, %ecx
  rclw %cl, %ax
  
  movl $0x8000, %eax
  movl $8, %ecx
  rclw %cl, %ax
  
  movl $0x5500, %eax
  movl $8, %ecx
  rclw %cl, %ax
  
  movl $0xAA00, %eax
  movl $8, %ecx
  rclw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $8, %ecx
  rclw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $8, %ecx
  rclw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $8, %ecx
  rclw %cl, %ax
  
  movl $0, %eax
  movl $15, %ecx
  rclw %cl, %ax
  
  movl $1, %eax
  movl $15, %ecx
  rclw %cl, %ax
  
  movl $0x8000, %eax
  movl $15, %ecx
  rclw %cl, %ax
  
  movl $0x5500, %eax
  movl $15, %ecx
  rclw %cl, %ax
  
  movl $0xAA00, %eax
  movl $15, %ecx
  rclw %cl, %ax
  
  movl $0x0F0F, %eax
  movl $15, %ecx
  rclw %cl, %ax
  
  movl $0xF7F7, %eax
  movl $15, %ecx
  rclw %cl, %ax
  
  movl $0xFEFE, %eax
  movl $15, %ecx
  rclw %cl, %ax

  // RCLr16i8_1  
  movl $0, %eax
  rclw $1, %ax
  
  movl $1, %eax
  rclw $1, %ax
  
  movl $0x8000, %eax
  rclw $1, %ax
  
  movl $0x5500, %eax
  rclw $1, %ax
  
  movl $0xAA00, %eax
  rclw $1, %ax
  
  movl $0x0F0F, %eax
  rclw $1, %ax
  
  movl $0xF7F7, %eax
  rclw $1, %ax
  
  movl $0xFEFE, %eax
  rclw $1, %ax

  // RCLr16i8_8  
  movl $0, %eax
  rclw $8, %ax
  
  movl $1, %eax
  rclw $8, %ax
  
  movl $0x8000, %eax
  rclw $8, %ax
  
  movl $0x5500, %eax
  rclw $8, %ax
  
  movl $0xAA00, %eax
  rclw $8, %ax
  
  movl $0x0F0F, %eax
  rclw $8, %ax
  
  movl $0xF7F7, %eax
  rclw $8, %ax
  
  movl $0xFEFE, %eax
  rclw $8, %ax

  // RCLr16i8_15  
  movl $0, %eax
  rclw $15, %ax
  
  movl $1, %eax
  rclw $15, %ax
  
  movl $0x8000, %eax
  rclw $15, %ax
  
  movl $0x5500, %eax
  rclw $15, %ax
  
  movl $0xAA00, %eax
  rclw $15, %ax
  
  movl $0x0F0F, %eax
  rclw $15, %ax
  
  movl $0xF7F7, %eax
  rclw $15, %ax
  
  movl $0xFEFE, %eax
  rclw $15, %ax

  // RCLr16i8_255  
  movl $0, %eax
  rclw $0xFF, %ax
  
  movl $1, %eax
  rclw $0xFF, %ax
  
  movl $0x8000, %eax
  rclw $0xFF, %ax
  
  movl $0x5500, %eax
  rclw $0xFF, %ax
  
  movl $0xAA00, %eax
  rclw $0xFF, %ax
  
  movl $0x0F0F, %eax
  rclw $0xFF, %ax
  
  movl $0xF7F7, %eax
  rclw $0xFF, %ax
  
  movl $0xFEFE, %eax
  rclw $0xFF, %ax

  // RCLr32i8_1  
  movl $0, %eax
  rcll $1, %eax
  
  movl $1, %eax
  rcll $1, %eax
  
  movl $0x80000000, %eax
  rcll $1, %eax
  
  movl $0x55000000, %eax
  rcll $1, %eax
  
  movl $0xAA000000, %eax
  rcll $1, %eax
  
  movl $0x0F0F0F0F, %eax
  rcll $1, %eax
  
  movl $0xF7F7F7F7, %eax
  rcll $1, %eax
  
  movl $0xFEFEFEFE, %eax
  rcll $1, %eax

  // RCLr32i8_16  
  movl $0, %eax
  rcll $16, %eax
  
  movl $1, %eax
  rcll $16, %eax
  
  movl $0x80000000, %eax
  rcll $16, %eax
  
  movl $0x55000000, %eax
  rcll $16, %eax
  
  movl $0xAA000000, %eax
  rcll $16, %eax
  
  movl $0x0F0F0F0F, %eax
  rcll $16, %eax
  
  movl $0xF7F7F7F7, %eax
  rcll $16, %eax
  
  movl $0xFEFEFEFE, %eax
  rcll $16, %eax

  // RCLr32i8_31  
  movl $0, %eax
  rcll $31, %eax
  
  movl $1, %eax
  rcll $31, %eax
  
  movl $0x80000000, %eax
  rcll $31, %eax
  
  movl $0x55000000, %eax
  rcll $31, %eax
  
  movl $0xAA000000, %eax
  rcll $31, %eax
  
  movl $0x0F0F0F0F, %eax
  rcll $31, %eax
  
  movl $0xF7F7F7F7, %eax
  rcll $31, %eax
  
  movl $0xFEFEFEFE, %eax
  rcll $31, %eax

  // RCLr32i8_255  
  movl $0, %eax
  rcll $0xFF, %eax
  
  movl $1, %eax
  rcll $0xFF, %eax
  
  movl $0x80000000, %eax
  rcll $0xFF, %eax
  
  movl $0x55000000, %eax
  rcll $0xFF, %eax
  
  movl $0xAA000000, %eax
  rcll $0xFF, %eax
  
  movl $0x0F0F0F0F, %eax
  rcll $0xFF, %eax
  
  movl $0xF7F7F7F7, %eax
  rcll $0xFF, %eax
  
  movl $0xFEFEFEFE, %eax
  rcll $0xFF, %eax

  // RCLr64i8_1_64  
  movq $0, %rax
  rclq $1, %rax
  
  movq $1, %rax
  rclq $1, %rax
  
  movq $0x8000000000000000, %rax
  rclq $1, %rax
  
  movq $0x5500000000000000, %rax
  rclq $1, %rax
  
  movq $0xAA00000000000000, %rax
  rclq $1, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rclq $1, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rclq $1, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rclq $1, %rax

  // RCLr64i8_32_64  
  movq $0, %rax
  rclq $32, %rax
  
  movq $1, %rax
  rclq $32, %rax
  
  movq $0x8000000000000000, %rax
  rclq $32, %rax
  
  movq $0x5500000000000000, %rax
  rclq $32, %rax
  
  movq $0xAA00000000000000, %rax
  rclq $32, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rclq $32, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rclq $32, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rclq $32, %rax

  // RCLr64i8_63_64  
  movq $0, %rax
  rclq $63, %rax
  
  movq $1, %rax
  rclq $63, %rax
  
  movq $0x8000000000000000, %rax
  rclq $63, %rax
  
  movq $0x5500000000000000, %rax
  rclq $63, %rax
  
  movq $0xAA00000000000000, %rax
  rclq $63, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rclq $63, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rclq $63, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rclq $63, %rax

  // RCLr64i8_255_64  
  movq $0, %rax
  rclq $0xFF, %rax
  
  movq $1, %rax
  rclq $0xFF, %rax
  
  movq $0x8000000000000000, %rax
  rclq $0xFF, %rax
  
  movq $0x5500000000000000, %rax
  rclq $0xFF, %rax
  
  movq $0xAA00000000000000, %rax
  rclq $0xFF, %rax
  
  movq $0x0F0F0F0F0F0F0F0F, %rax
  rclq $0xFF, %rax
  
  movq $0xF7F7F7F7F7F7F7F7, %rax
  rclq $0xFF, %rax
  
  movq $0xFEFEFEFEFEFEFEFE, %rax
  rclq $0xFF, %rax

  nop
