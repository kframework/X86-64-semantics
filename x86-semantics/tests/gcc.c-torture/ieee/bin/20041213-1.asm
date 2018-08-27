    .comm	once,4,4
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movl $once(%rip), %eax
    leal	1(%rax), %edx
    movl	%edx, $once(%rip)
    testl	%eax, %eax
    je	L2
    call	abort
L2:
    movl	$0, %eax
    movl	$0, %edx
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vdivsd	%xmm3, %xmm2, %xmm1
    vmovq	%xmm1, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .comm	x,8,8
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    call	foo
    vmovq	%xmm0, %rax
    vmovq	%rax, %xmm0
    call	sqrt
    vmovq	%xmm0, %rax
    movq	%rax, $x(%rip)
    movl	$0, %eax
    popq	%rbp
    ret
