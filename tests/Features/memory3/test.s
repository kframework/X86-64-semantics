.section .text
.globl _start

_start:
  // Read a char from env anf increment t and store in eax
  // int main(int argc, char** argv) {
  //      return argv[1][0] + 42;
  //  }
  
  pushq %rbp
  movq %rsp, %rbp
  movl $0, -4(%rbp)
  movl %edi, -8(%rbp)
  movq %rsi, -16(%rbp)
  movq -16(%rbp), %rsi
  movq 8(%rsi), %rsi
  movsbl 0(%rsi), %edi
  addl $42, %edi
  movl %edi, %eax
  popq %rbp
  
  nop
