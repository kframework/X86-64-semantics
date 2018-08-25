.globl _start
_start:      
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $16, %rsp
        movl    $0, -4(%rbp)
        movb    $65, -5(%rbp)
        movsbl  -5(%rbp), %edi
        callq   putchar
        addq    $16, %rsp
        popq    %rbp
        retq
