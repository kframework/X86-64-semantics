.section .text
.globl _start

_start:
  // MEMORY  
  movq $61438, %rax
  movq %rax, (%rsp)

  movq $0xabcd, %rax
  movq %rax, -8(%rsp)

  movq $0xdcba, %rax
  movq %rax, -16(, %rsp)

  movq $0xacbd, %rax
  movq %rax, -32(, %rsp, 1)

  movq (,%rsp), %rbx
  movq -8(,%rsp), %rcx

  movq $0, %r10
  movq -16(%rsp,%r10, 1), %rdx

  movq -32(%r10,%rsp, 1), %r11
  
  nop
