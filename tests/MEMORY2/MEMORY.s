.section .text
.globl _start

_start:
  // Read a char from env anf increment t and store in eax
  // int main(int argc, char** argv) {
  //      return argv[0][1] + 42;
  //  }
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -4(%rbp)
  movq %rsi, -16(%rbp)
  movq -16(%rbp), %rax
  movq 0(%rax), %rax
  incq %rax
  movb 0(%rax), %al
  movsbl %al, %eax
  addl $42, %eax
  popq %rbp
  
  nop
