popcnt(unsigned long):
  movl $64, %edx
  xorl %eax, %eax
.L2:
  movl %edi, %ecx
  shrq $1, %rdi
  andl $1, %ecx
  addl %ecx, %eax
  decl %edx
  jne L2
  ret
