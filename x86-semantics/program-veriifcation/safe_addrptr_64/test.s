main:
  movq -8(%rbp), %rdx
  movq -16(%rbp), %rax
  addq %rdx, %rax
  cmpq -8(%rbp), %rax
  jnb L2
  movl $1, %eax
  jmp L3
L2:
  movl $0, %eax
L3:
  ret
