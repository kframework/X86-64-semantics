    .text
    pushq   %rbp
L1:
    movq    %rsp, %rbp
L2:
    movl    (%rdi), %eax
    movl    (%rsi), %ecx
    movl    %ecx, (%rdi)
    movl    %eax, (%rsi)
    popq    %rbp
    retq
    
