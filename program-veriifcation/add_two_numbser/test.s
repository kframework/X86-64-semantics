 .text
 .globl _start
_start:
        pushq   %rbp
        movq    %rsp, %rbp
        movl    %edi, -4(%rbp)
        movl    %esi, -8(%rbp)
        movl    -4(%rbp), %esi
        addl    -8(%rbp), %esi
        movl    %esi, %eax
        popq    %rbp
        retq

