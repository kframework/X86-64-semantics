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
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L10
L14:
	movzbl	-64(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -64(%rbp)
	movzwl	-64(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -64(%rbp)
	movzbl	-62(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -62(%rbp)
	movzbl	-61(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -61(%rbp)
	movzbl	-61(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movb	%al, -61(%rbp)
	movzbl	-60(%rbp), %eax
	andl	$0, %eax
	movb	%al, -60(%rbp)
	movzbl	-59(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -59(%rbp)
	movzbl	-58(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -58(%rbp)
	movzwl	-58(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -58(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -56(%rbp)
	movzbl	-55(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -55(%rbp)
	movzbl	-55(%rbp), %eax
	andl	$1, %eax
	movb	%al, -55(%rbp)
	movzbl	-54(%rbp), %eax
	andl	$0, %eax
	movb	%al, -54(%rbp)
	movzbl	-53(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -53(%rbp)
	movzbl	-52(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -52(%rbp)
	movzwl	-52(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -52(%rbp)
	movzbl	-50(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -50(%rbp)
	movzbl	-49(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -49(%rbp)
	movzbl	-49(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movb	%al, -49(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$0, %eax
	movb	%al, -48(%rbp)
	movzbl	-47(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -47(%rbp)
	movzbl	-46(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -46(%rbp)
	movzwl	-46(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -46(%rbp)
	movzbl	-44(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -44(%rbp)
	movzbl	-43(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -43(%rbp)
	movzbl	-43(%rbp), %eax
	andl	$1, %eax
	movb	%al, -43(%rbp)
	movzbl	-42(%rbp), %eax
	andl	$0, %eax
	movb	%al, -42(%rbp)
	movzbl	-41(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -41(%rbp)
	movzbl	-40(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -40(%rbp)
	movzwl	-40(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -40(%rbp)
	movzbl	-38(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -38(%rbp)
	movzbl	-37(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -37(%rbp)
	movzbl	-37(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movb	%al, -37(%rbp)
	movzbl	-36(%rbp), %eax
	andl	$0, %eax
	movb	%al, -36(%rbp)
	movzbl	-35(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -35(%rbp)
	movzbl	-34(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -34(%rbp)
	movzwl	-34(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -34(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -32(%rbp)
	movzbl	-31(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -31(%rbp)
	movzbl	-31(%rbp), %eax
	andl	$1, %eax
	movb	%al, -31(%rbp)
	movzbl	-30(%rbp), %eax
	andl	$0, %eax
	movb	%al, -30(%rbp)
	movzbl	-29(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -29(%rbp)
	movzbl	-28(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -28(%rbp)
	movzwl	-28(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -28(%rbp)
	movzbl	-26(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -26(%rbp)
	movzbl	-25(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movb	%al, -25(%rbp)
	movzbl	-24(%rbp), %eax
	andl	$0, %eax
	movb	%al, -24(%rbp)
	movzbl	-23(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -23(%rbp)
	movzbl	-22(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -22(%rbp)
	movzwl	-22(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -22(%rbp)
	movzbl	-20(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -20(%rbp)
	movzbl	-19(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -19(%rbp)
	movzbl	-19(%rbp), %eax
	andl	$1, %eax
	movb	%al, -19(%rbp)
	movzbl	-18(%rbp), %eax
	andl	$0, %eax
	movb	%al, -18(%rbp)
	movzbl	-17(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -17(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -16(%rbp)
	movzbl	-14(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -14(%rbp)
	movzbl	-13(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -13(%rbp)
	movzbl	-13(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movb	%al, -13(%rbp)
	movzbl	-12(%rbp), %eax
	andl	$0, %eax
	movb	%al, -12(%rbp)
	movzbl	-11(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -11(%rbp)
	movzbl	-10(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -10(%rbp)
	movzwl	-10(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -10(%rbp)
	movzbl	-8(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -8(%rbp)
	movzbl	-7(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -7(%rbp)
	movzbl	-7(%rbp), %eax
	andl	$1, %eax
	movb	%al, -7(%rbp)
	movzbl	-6(%rbp), %eax
	andl	$0, %eax
	movb	%al, -6(%rbp)
	movzbl	-5(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -5(%rbp)
	movzbl	-4(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -4(%rbp)
	movzwl	-4(%rbp), %eax
	andl	$1, %eax
	orl	$18, %eax
	movw	%ax, -4(%rbp)
	movzbl	-2(%rbp), %eax
	andl	$-32, %eax
	movb	%al, -2(%rbp)
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L11
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L12
L11:
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movl	%eax, b(%rip)
	movl	-64(%rbp), %eax
	sall	$11, %eax
	sarl	$12, %eax
	movl	%eax, c(%rip)
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L10:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jle	L14
	movl	$0, %eax
	popq	%rbp
	ret
