	.comm	a,8,8
	.comm	p,8,8
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$4607182418800017408, %rax
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, p(%rip)
L2:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movabsq	$4602678819172646912, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L2
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jne	L2
	movq	-16(%rbp), %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, a(%rip)
	movq	a(%rip), %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	jp	L3
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm0
	vucomisd	%xmm0, %xmm7
	jne	L3
	call	abort
L3:
	movl	$0, %edi
	call	exit
