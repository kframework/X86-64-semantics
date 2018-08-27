zero:
    .zero	8
pone:
    .long	0
    .long	1072693248
none:
    .long	0
    .long	-1074790400
pinf:
    .long	0
    .long	2146435072
ninf:
    .long	0
    .long	-1048576
    .globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movabsq	$4607182418800017408, %rax
    movl	$0, %edx
    vmovq	%rax, %xmm1
    vmovq	%rdx, %xmm2
    vdivsd	%xmm2, %xmm1, %xmm0
    vmovq	%xmm0, %rax
    movabsq	$9218868437227405312, %rdx
    vmovq	%rax, %xmm3
    vmovq	%rdx, %xmm4
    vucomisd	%xmm4, %xmm3
    jp	L8
    vmovq	%rax, %xmm5
    vmovq	%rdx, %xmm6
    vucomisd	%xmm6, %xmm5
    je	L10
L8:
    call	abort
L10:
    movabsq	$-4616189618054758400, %rax
    movl	$0, %edx
    vmovq	%rax, %xmm0
    vmovq	%rdx, %xmm1
    vdivsd	%xmm1, %xmm0, %xmm7
    vmovq	%xmm7, %rax
    movabsq	$-4503599627370496, %rdx
    vmovq	%rax, %xmm2
    vmovq	%rdx, %xmm3
    vucomisd	%xmm3, %xmm2
    jp	L9
    vmovq	%rax, %xmm4
    vmovq	%rdx, %xmm5
    vucomisd	%xmm5, %xmm4
    je	L11
L9:
    call	abort
L11:
    movabsq	$9218868437227405312, %rax
    vmovq	%rax, %xmm6
    vucomisd $LC5(%rip), %xmm6
    seta	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L6
    call	abort
L6:
    movabsq	$-4503599627370496, %rdx
    movabsq	$-4503599627370497, %rax
    vmovq	%rax, %xmm7
    vmovq	%rdx, %xmm0
    vucomisd	%xmm0, %xmm7
    seta	%al
    xorl	$1, %eax
    testb	%al, %al
    je	L7
    call	abort
L7:
    movl	$0, %edi
    call	exit
LC5:
    .long	4294967295
    .long	2146435071
