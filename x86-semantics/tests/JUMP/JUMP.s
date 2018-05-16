main:
  pushq %rbp
  movq %rsp, %rbp
  movl $2, -8(%rbp)
  movl $3, -12(%rbp)
  movl $0, -4(%rbp)
  movl -8(%rbp), %eax
  cmpl -12(%rbp), %eax
  jle L2
  movl -8(%rbp), %eax
  subl -12(%rbp), %eax
  movl %eax, -4(%rbp)
  jmp L3
L2:
  movl -8(%rbp), %edx
  movl -12(%rbp), %eax
  addl %edx, %eax
  movl %eax, -4(%rbp)
L3:
  movl -4(%rbp), %eax
  popq %rbp
  ret
