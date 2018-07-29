.section .text
.globl _start

_start:
  // LOOP
  movq $2, %rcx
L1:
  loop L1

  nop
