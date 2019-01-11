    .text
    .section    .rodata
LC2:
    .string    "%d\n"
    .text
    .globl    main
    .globl _start
_start:
    pushq    %rbp
    movq    %rsp, %rbp
    subq    $144, %rsp
    movq    $40, %rax
    movq    %rax, -8(%rbp)
    xorl    %eax, %eax
    vmovss    LC0(%rip), %xmm0
    vmovss    %xmm0, -32(%rbp)
    vxorps    %xmm0, %xmm0, %xmm0
    vmovss    %xmm0, -28(%rbp)
    vxorps    %xmm0, %xmm0, %xmm0
    vmovss    %xmm0, -24(%rbp)
    vxorps    %xmm0, %xmm0, %xmm0
    vmovss    %xmm0, -20(%rbp)
    leaq    -32(%rbp), %rax
    movq    %rax, -136(%rbp)
    movq    -136(%rbp), %rax
    vmovaps    (%rax), %xmm0
    vmovaps    %xmm0, -64(%rbp)
    vmovaps    -64(%rbp), %xmm0
    vcvtps2ph    $0, %xmm0, %xmm0
    vmovaps    %xmm0, -80(%rbp)
    movq    -80(%rbp), %rax
    movq    %rax, -40(%rbp)
    movzwl    -40(%rbp), %eax
    movzwl    %ax, %eax
    movl    %eax, %esi
    leaq    LC2(%rip), %rdi
    movl    $0, %eax
    call    printf
    vmovaps    -64(%rbp), %xmm0
    vcvtps2ph    $1, %xmm0, %xmm0
    vmovaps    %xmm0, -96(%rbp)
    movq    -96(%rbp), %rax
    movq    %rax, -40(%rbp)
    movzwl    -40(%rbp), %eax
    movzwl    %ax, %eax
    movl    %eax, %esi
    leaq    LC2(%rip), %rdi
    movl    $0, %eax
    call    printf
    vmovaps    -64(%rbp), %xmm0
    vcvtps2ph    $2, %xmm0, %xmm0
    vmovaps    %xmm0, -112(%rbp)
    movq    -112(%rbp), %rax
    movq    %rax, -40(%rbp)
    movzwl    -40(%rbp), %eax
    movzwl    %ax, %eax
    movl    %eax, %esi
    leaq    LC2(%rip), %rdi
    movl    $0, %eax
    call    printf
    vmovaps    -64(%rbp), %xmm0
    vcvtps2ph    $3, %xmm0, %xmm0
    vmovaps    %xmm0, -128(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, -40(%rbp)
    movzwl    -40(%rbp), %eax
    movzwl    %ax, %eax
    movl    %eax, %esi
    leaq    LC2(%rip), %rdi
    movl    $0, %eax
    call    printf
    movl    $0, %eax
    movq    -8(%rbp), %rdx
    xorq    $40, %rdx
    je    L8
    call    __stack_chk_fail
L8:
    leave
    ret
    .section    .rodata
LC0:
    .long    933741996
