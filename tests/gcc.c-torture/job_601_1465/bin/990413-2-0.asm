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
minus_zero:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -16(%rbp)
	movl	$-2147483648, -12(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
__atan2l:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	movq	32(%rbp), %rax
	movl	40(%rbp), %edx
	fldt	16(%rbp)
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	fldt	-32(%rbp)
	fpatan
	
	fstpt	-32(%rbp)
	movq	-32(%rbp), %r12
	movl	-24(%rbp), %r13d
	movq	%r12, %rax
	movl	%r13d, %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	fldt	-32(%rbp)
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
__sqrtl:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	fldt	-32(%rbp)
	fsqrt
	fstpt	-32(%rbp)
	movq	-32(%rbp), %r12
	movl	-24(%rbp), %r13d
	movq	%r12, %rax
	movl	%r13d, %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	fldt	-32(%rbp)
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
asin:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm3
	vsubsd	%xmm0, %xmm3, %xmm2
	vmovsd	%xmm2, -24(%rbp)
	fldl	-24(%rbp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	__sqrtl
	addq	$16, %rsp
	fldl	-8(%rbp)
	fxch	%st(1)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	__atan2l
	addq	$32, %rsp
	fstpl	-16(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	leave
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	minus_zero
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	call	asin
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	vmovq	%rax, %xmm1
	vucomisd	-8(%rbp), %xmm1
	jp	L21
	movl	$0, %eax
	vmovq	%rax, %xmm2
	vucomisd	-8(%rbp), %xmm2
	je	L22
L21:
	call	abort
L22:
	movl	$0, %eax
	leave
	ret
