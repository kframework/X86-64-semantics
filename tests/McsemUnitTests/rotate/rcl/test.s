section .text
global _start

_start:
  mov eax, $0
  rcl al, 0
  
  mov eax, $1
  rcl al, 0
  
  mov eax, $0x80
  rcl al, $0
  
  mov eax, $0x55
  rcl al, 0
  
  mov eax, $0xAA
  rcl al, 0
  
  mov eax, $0x0F
  rcl al, 0
  
  mov eax, $0xF7
  rcl al, 0
  
  mov eax, $0xFE
  rcl al, 0

/* Mask 0x1F of 0xFF is still bigger than 8 bits. */
  mov eax, $0
  rcl al, 0xFF
  
  mov eax, $1
  rcl al, 0xFF
  
  mov eax, $0x80
  rcl al, 0xFF
  
  mov eax, $0x55
  rcl al, 0xFF
  
  mov eax, $0xAA
  rcl al, 0xFF
  
  mov eax, $0x0F
  rcl al, 0xFF
  
  mov eax, $0xF7
  rcl al, 0xFF
  
  mov eax, $0xFE
  rcl al, 0xFF

/* Special encoding of RCLr8 with i8 = 1, also has special behaviour
 * with AF and OF */
  mov eax, $0
  rcl al, 1
  
  mov eax, $1
  rcl al, 1
  
  mov eax, $0x80
  rcl al, 1
  
  mov eax, $0x55
  rcl al, 1
  
  mov eax, $0xAA
  rcl al, 1
  
  mov eax, $0x0F
  rcl al, 1
  
  mov eax, $0xF7
  rcl al, 1
  
  mov eax, $0xFE
  rcl al, 1

/* REX-prefix encoded RCLr8i8 */
  mov r8, $0
  rcl r8b, 1
  
  mov r8, $1
  rcl r8b, 1
  
  mov r8, $0x80
  rcl r8b, 1
  
  mov r8, $0x55
  rcl r8b, 1
  
  mov r8, $0xAA
  rcl r8b, 1
  
  mov r8, $0x0F
  rcl r8b, 1
  
  mov r8, $0xF7
  rcl r8b, 1
  
  mov r8, $0xFE
  rcl r8b, 1

/* Special encoding with `cl` as the reg containing the number of bits */
  mov eax, $0
  mov ecx, $2
  rcl al, cl
  
  mov eax, $1
  mov ecx, $2
  rcl al, cl
  
  mov eax, $0x80
  mov ecx, $2
  rcl al, cl
  
  mov eax, $0x55
  mov ecx, $2
  rcl al, cl
  
  mov eax, $0xAA
  mov ecx, $2
  rcl al, cl
  
  mov eax, $0x0F
  mov ecx, $2
  rcl al, cl
  
  mov eax, $0xF7
  mov ecx, $2
  rcl al, cl
  
  mov eax, $0xFE
  mov ecx, $2
  rcl al, cl
  
  mov eax, $0
  mov ecx, $7
  rcl al, cl
  
  mov eax, $1
  mov ecx, $7
  rcl al, cl
  
  mov eax, $0x80
  mov ecx, $7
  rcl al, cl
  
  mov eax, $0x55
  mov ecx, $7
  rcl al, cl
  
  mov eax, $0xAA
  mov ecx, $7
  rcl al, cl
  
  mov eax, $0x0F
  mov ecx, $7
  rcl al, cl
  
  mov eax, $0xF7
  mov ecx, $7
  rcl al, cl
  
  mov eax, $0xFE
  mov ecx, $7
  rcl al, cl

/* Special encoding with `cl` as the reg containing the number of bits, using
 * a REX prefix to access a 64-bit dest reg. */
  mov r8, $0
  mov rcx, $1
  rcl r8b, cl
  
  mov r8, $1
  mov rcx, $1
  rcl r8b, cl
  
  mov r8, $0x80
  mov rcx, $1
  rcl r8b, cl
  
  mov r8, $0x55
  mov rcx, $1
  rcl r8b, cl
  
  mov r8, $0xAA
  mov rcx, $1
  rcl r8b, cl
  
  mov r8, $0x0F
  mov rcx, $1
  rcl r8b, cl
  
  mov r8, $0xF7
  mov rcx, $1
  rcl r8b, cl
  
  mov r8, $0xFE
  mov rcx, $1
  rcl r8b, cl

/* Right shift where the number of bits is greater than the number of bits
 * in the src/dst reg */
  mov eax, $0
  rcl al, 9
  
  mov eax, $1
  rcl al, 9
  
  mov eax, $0x80
  rcl al, 9
  
  mov eax, $0x55
  rcl al, 9
  
  mov eax, $0xAA
  rcl al, 9
  
  mov eax, $0x0F
  rcl al, 9
  
  mov eax, $0xF7
  rcl al, 9
  
  mov eax, $0xFE
  rcl al, 9

  mov eax, $0
  rcl al, 2
  
  mov eax, $1
  rcl al, 2
  
  mov eax, $0x80
  rcl al, 2
  
  mov eax, $0x55
  rcl al, 2
  
  mov eax, $0xAA
  rcl al, 2
  
  mov eax, $0x0F
  rcl al, 2
  
  mov eax, $0xF7
  rcl al, 2
  
  mov eax, $0xFE
  rcl al, 2

  mov eax, $0
  mov ecx, $8
  rcl ax, cl
  
  mov eax, $1
  mov ecx, $8
  rcl ax, cl
  
  mov eax, $0x8000
  mov ecx, $8
  rcl ax, cl
  
  mov eax, $0x5500
  mov ecx, $8
  rcl ax, cl
  
  mov eax, $0xAA00
  mov ecx, $8
  rcl ax, cl
  
  mov eax, $0x0F0F
  mov ecx, $8
  rcl ax, cl
  
  mov eax, $0xF7F7
  mov ecx, $8
  rcl ax, cl
  
  mov eax, $0xFEFE
  mov ecx, $8
  rcl ax, cl
  
  mov eax, $0
  mov ecx, $15
  rcl ax, cl
  
  mov eax, $1
  mov ecx, $15
  rcl ax, cl
  
  mov eax, $0x8000
  mov ecx, $15
  rcl ax, cl
  
  mov eax, $0x5500
  mov ecx, $15
  rcl ax, cl
  
  mov eax, $0xAA00
  mov ecx, $15
  rcl ax, cl
  
  mov eax, $0x0F0F
  mov ecx, $15
  rcl ax, cl
  
  mov eax, $0xF7F7
  mov ecx, $15
  rcl ax, cl
  
  mov eax, $0xFEFE
  mov ecx, $15
  rcl ax, cl

  mov eax, $0
  rcl ax, 1
  
  mov eax, $1
  rcl ax, 1
  
  mov eax, $0x8000
  rcl ax, 1
  
  mov eax, $0x5500
  rcl ax, 1
  
  mov eax, $0xAA00
  rcl ax, 1
  
  mov eax, $0x0F0F
  rcl ax, 1
  
  mov eax, $0xF7F7
  rcl ax, 1
  
  mov eax, $0xFEFE
  rcl ax, 1

  mov eax, $0
  rcl ax, 8
  
  mov eax, $1
  rcl ax, 8
  
  mov eax, $0x8000
  rcl ax, 8
  
  mov eax, $0x5500
  rcl ax, 8
  
  mov eax, $0xAA00
  rcl ax, 8
  
  mov eax, $0x0F0F
  rcl ax, 8
  
  mov eax, $0xF7F7
  rcl ax, 8
  
  mov eax, $0xFEFE
  rcl ax, 8

  mov eax, $0
  rcl ax, 15
  
  mov eax, $1
  rcl ax, 15
  
  mov eax, $0x8000
  rcl ax, 15
  
  mov eax, $0x5500
  rcl ax, 15
  
  mov eax, $0xAA00
  rcl ax, 15
  
  mov eax, $0x0F0F
  rcl ax, 15
  
  mov eax, $0xF7F7
  rcl ax, 15
  
  mov eax, $0xFEFE
  rcl ax, 15

  mov eax, $0
  rcl ax, 0xFF
  
  mov eax, $1
  rcl ax, 0xFF
  
  mov eax, $0x8000
  rcl ax, 0xFF
  
  mov eax, $0x5500
  rcl ax, 0xFF
  
  mov eax, $0xAA00
  rcl ax, 0xFF
  
  mov eax, $0x0F0F
  rcl ax, 0xFF
  
  mov eax, $0xF7F7
  rcl ax, 0xFF
  
  mov eax, $0xFEFE
  rcl ax, 0xFF

  mov eax, $0
  rcl eax, 1
  
  mov eax, $1
  rcl eax, 1
  
  mov eax, $0x80000000
  rcl eax, 1
  
  mov eax, $0x55000000
  rcl eax, 1
  
  mov eax, $0xAA000000
  rcl eax, 1
  
  mov eax, $0x0F0F0F0F
  rcl eax, 1
  
  mov eax, $0xF7F7F7F7
  rcl eax, 1
  
  mov eax, $0xFEFEFEFE
  rcl eax, 1

  mov eax, $0
  rcl eax, 16
  
  mov eax, $1
  rcl eax, 16
  
  mov eax, $0x80000000
  rcl eax, 16
  
  mov eax, $0x55000000
  rcl eax, 16
  
  mov eax, $0xAA000000
  rcl eax, 16
  
  mov eax, $0x0F0F0F0F
  rcl eax, 16
  
  mov eax, $0xF7F7F7F7
  rcl eax, 16
  
  mov eax, $0xFEFEFEFE
  rcl eax, 16

  mov eax, $0
  rcl eax, 31
  
  mov eax, $1
  rcl eax, 31
  
  mov eax, $0x80000000
  rcl eax, 31
  
  mov eax, $0x55000000
  rcl eax, 31
  
  mov eax, $0xAA000000
  rcl eax, 31
  
  mov eax, $0x0F0F0F0F
  rcl eax, 31
  
  mov eax, $0xF7F7F7F7
  rcl eax, 31
  
  mov eax, $0xFEFEFEFE
  rcl eax, 31

  mov eax, $0
  rcl eax, 0xFF
  
  mov eax, $1
  rcl eax, 0xFF
  
  mov eax, $0x80000000
  rcl eax, 0xFF
  
  mov eax, $0x55000000
  rcl eax, 0xFF
  
  mov eax, $0xAA000000
  rcl eax, 0xFF
  
  mov eax, $0x0F0F0F0F
  rcl eax, 0xFF
  
  mov eax, $0xF7F7F7F7
  rcl eax, 0xFF
  
  mov eax, $0xFEFEFEFE
  rcl eax, 0xFF

  mov rax, $0
  rcl rax, 1
  
  mov rax, $1
  rcl rax, 1
  
  mov rax, $0x8000000000000000
  rcl rax, 1
  
  mov rax, $0x5500000000000000
  rcl rax, 1
  
  mov rax, $0xAA00000000000000
  rcl rax, 1
  
  mov rax, $0x0F0F0F0F0F0F0F0F
  rcl rax, 1
  
  mov rax, $0xF7F7F7F7F7F7F7F7
  rcl rax, 1
  
  mov rax, $0xFEFEFEFEFEFEFEFE
  rcl rax, 1

  mov rax, $0
  rcl rax, 32
  
  mov rax, $1
  rcl rax, 32
  
  mov rax, $0x8000000000000000
  rcl rax, 32
  
  mov rax, $0x5500000000000000
  rcl rax, 32
  
  mov rax, $0xAA00000000000000
  rcl rax, 32
  
  mov rax, $0x0F0F0F0F0F0F0F0F
  rcl rax, 32
  
  mov rax, $0xF7F7F7F7F7F7F7F7
  rcl rax, 32
  
  mov rax, $0xFEFEFEFEFEFEFEFE
  rcl rax, 32

  mov rax, $0
  rcl rax, 63
  
  mov rax, $1
  rcl rax, 63
  
  mov rax, $0x8000000000000000
  rcl rax, 63
  
  mov rax, $0x5500000000000000
  rcl rax, 63
  
  mov rax, $0xAA00000000000000
  rcl rax, 63
  
  mov rax, $0x0F0F0F0F0F0F0F0F
  rcl rax, 63
  
  mov rax, $0xF7F7F7F7F7F7F7F7
  rcl rax, 63
  
  mov rax, $0xFEFEFEFEFEFEFEFE
  rcl rax, 63

  mov rax, $0
  rcl rax, 0xFF
  
  mov rax, $1
  rcl rax, 0xFF
  
  mov rax, $0x8000000000000000
  rcl rax, 0xFF
  
  mov rax, $0x5500000000000000
  rcl rax, 0xFF
  
  mov rax, $0xAA00000000000000
  rcl rax, 0xFF
  
  mov rax, $0x0F0F0F0F0F0F0F0F
  rcl rax, 0xFF
  
  mov rax, $0xF7F7F7F7F7F7F7F7
  rcl rax, 0xFF
  
  mov rax, $0xFEFEFEFEFEFEFEFE
  rcl rax, 0xFF

  nop
