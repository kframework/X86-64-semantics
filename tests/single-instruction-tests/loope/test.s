 .text
.globl _start

_start:
  // LOOP
  movq $2, %rcx
  movq $1, %rax
L1:
  decb %al
  loope L1

  nop
