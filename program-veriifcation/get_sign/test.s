main:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -4(%rbp)
  cmpl $0, -4(%rbp)
  jne L2
  movl $0, %eax
  jmp L3
L2:
  cmpl $0, -4(%rbp)
  jns L4
  movl $-1, %eax
  jmp L3
L4:
  movl $1, %eax
L3:
  popq %rbp
  ret
