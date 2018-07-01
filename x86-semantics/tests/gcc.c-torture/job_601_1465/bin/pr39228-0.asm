strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	LC0(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	LC1(%rip), %eax
	vmovd	%edx, %xmm2
	vmovd	%eax, %xmm3
	vmulss	%xmm3, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	vmovss	LC2(%rip), %xmm0
	andl	$2147483647, %eax
	vmovd	%eax, %xmm4
	vucomiss	LC0(%rip), %xmm4
	setbe	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jg	L11
	call	abort
L11:
	movabsq	$9218868437227405311, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movabsq	$4607227454796291113, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	vmovsd	LC5(%rip), %xmm0
	btrq	$63, %rax
	vmovq	%rax, %xmm1
	vucomisd	LC3(%rip), %xmm1
	setbe	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jg	L13
	call	abort
L13:
	movq	$-1, %rax
	movl	$32766, %edx
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	fldt	-48(%rbp)
	fldt	LC7(%rip)
	fmulp	%st, %st(1)
	fstpt	-64(%rbp)
	fldt	-64(%rbp)
	fxam
	fnstsw	%ax
	fstp	%st(0)
	andb	$69, %ah
	cmpb	$5, %ah
	sete	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jg	L15
	call	abort
L15:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	2139095039
LC1:
	.long	1065437102
LC2:
	.long	2147483647
	.long	0
	.long	0
	.long	0
LC3:
	.long	4294967295
	.long	2146435071
LC5:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
LC7:
	.long	2061584302
	.long	2168958484
	.long	16383
	.long	0
