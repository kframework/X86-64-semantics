.section .text
.globl _start

_start:
  // SHRDQ  
  movq $0, %rax
  movq $0, %rbx
  shrdq $0, %eax, %ebx
  
  movq $0, %rax
  movq $0, %rbx
  shrdq $1, %eax, %ebx
  
  movq $1, %rax
  movq $1, %rbx
  shrdq $1, %eax, %ebx
  
  movq $0xFF, %rax
  movq $0xFF, %rbx
  shrdq $1, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  shrdq $1, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFF, %rbx
  shrdq $1, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0, %rbx
  shrdq $1, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $1, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $1, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0, %rbx
  shrdq $1, %eax, %ebx
  
  movq $0, %rax
  movq $0, %rbx
  shrdq $15, %eax, %ebx
  
  movq $1, %rax
  movq $1, %rbx
  shrdq $15, %eax, %ebx
  
  movq $0xFF, %rax
  movq $0xFF, %rbx
  shrdq $15, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  shrdq $15, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFF, %rbx
  shrdq $15, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0, %rbx
  shrdq $15, %eax, %ebx
  
  movq $0, %rax
  movq $0, %rbx
  shrdq $16, %eax, %ebx
  
  movq $1, %rax
  movq $1, %rbx
  shrdq $16, %eax, %ebx
  
  movq $0xFF, %rax
  movq $0xFF, %rbx
  shrdq $16, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  shrdq $16, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFF, %rbx
  shrdq $16, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0, %rbx
  shrdq $16, %eax, %ebx
  
  movq $0xFF, %rax
  movq $0xFF, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFF, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0, %rbx
  shrdq $31, %eax, %ebx
  
  movq $0xFF, %rax
  movq $0xFF, %rbx
  shrdq $32, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  shrdq $32, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFF, %rbx
  shrdq $32, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0, %rbx
  shrdq $32, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $32, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $32, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0, %rbx
  shrdq $32, %eax, %ebx
  
  movq $0xFF, %rax
  movq $0xFF, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFF, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0, %rbx
  shrdq $63, %eax, %ebx
  
  movq $0xFF, %rax
  movq $0xFF, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFF, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0xFFFF, %rax
  movq $0, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFFFFFF, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  shrdq $64, %eax, %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0, %rbx
  shrdq $64, %eax, %ebx

  nop
