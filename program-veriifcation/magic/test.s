vulnerable(char*):
  pushq %rbp
  movq %rsp, %rbp
  movq %rdi, -8(%rbp)
  movq -8(%rbp), %rax
  movzbl (%rax), %eax
  cmpb $109, %al
  jne L2
  movq -8(%rbp), %rax
  incq %rax
  movzbl (%rax), %eax
  cmpb $97, %al
  jne L2
  movq -8(%rbp), %rax
  addq $2, %rax
  movzbl (%rax), %eax
  cmpb $103, %al
  jne L2
  movq -8(%rbp), %rax
  addq $3, %rax
  movzbl (%rax), %eax
  cmpb $105, %al
  jne L2
  movq -8(%rbp), %rax
  addq $4, %rax
  movzbl (%rax), %eax
  cmpb $99, %al
  jne L3
  movl $0, %eax
  jmp L4
L3:
  movl $1, %eax
  jmp L4
L2:
  movl $-1, %eax
L4:
  popq %rbp
  ret
