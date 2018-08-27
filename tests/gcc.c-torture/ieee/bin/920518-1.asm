u:
    .long	-2147483457
f0:
    .long	1325400064
f1:
    .long	1325400065
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl $u(%rip), %eax
    movl	%eax, %eax
    testq	%rax, %rax
    js	L2
    vxorps	%xmm1, %xmm1, %xmm1
    vcvtsi2ssq	%rax, %xmm1, %xmm1
    vmovd	%xmm1, %eax
    jmp	L3
L2:
    movq	%rax, %rdx
    shrq	%rdx
    andl	$1, %eax
    orq	%rax, %rdx
    vxorps	%xmm0, %xmm0, %xmm0
    vcvtsi2ssq	%rdx, %xmm0, %xmm0
    vaddss	%xmm0, %xmm0, %xmm2
    vmovd	%xmm2, %eax
L3:
    movl	%eax, -4(%rbp)
    movl $f0(%rip), %eax
    vmovd	%eax, %xmm3
    vucomiss	-4(%rbp), %xmm3
    jp	L4
    vmovd	%eax, %xmm4
    vucomiss	-4(%rbp), %xmm4
    jne	L4
    call	abort
L4:
    movl	$0, %edi
    call	exit
