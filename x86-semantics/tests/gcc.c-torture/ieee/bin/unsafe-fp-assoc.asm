C:
    .long	4294967295
    .long	2146435071
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    vmovsd	%xmm0, -8(%rbp)
    movabsq	$9218868437227405311, %rax
    vmovq	%rax, %xmm1
    vmulsd	-8(%rbp), %xmm1, %xmm0
    movabsq	$9218868437227405311, %rax
    vmovq	%rax, %xmm2
    vmulsd	%xmm2, %xmm0, %xmm0
    movabsq	$9218868437227405311, %rax
    vmovq	%rax, %xmm4
    vmulsd	%xmm4, %xmm0, %xmm3
    vmovq	%xmm3, %rax
    vmovq	%rax, %xmm0
    popq	%rbp
    ret
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    vxorpd	%xmm0, %xmm0, %xmm0
    call	foo
    vmovq	%xmm0, %rax
    movq	%rax, -8(%rbp)
    movl	$0, %eax
    vmovq	%rax, %xmm1
    vucomisd	-8(%rbp), %xmm1
    jp	L7
    movl	$0, %eax
    vmovq	%rax, %xmm2
    vucomisd	-8(%rbp), %xmm2
    je	L8
L7:
    call	abort
L8:
    movl	$0, %eax
    leave
    ret
