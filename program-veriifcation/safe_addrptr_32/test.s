main:
  movl -8(%ebp), %edx
  movl -16(%ebp), %eax
  addl %edx, %eax
  movl $0, %edx
  cmpl -8(%ebp), %eax
  movl %edx, %eax
  sbbl -4(%ebp), %eax
  jnc L2
  movl $1, %eax
  jmp L3
L2:
  movl $0, %eax
L3:
  ret
