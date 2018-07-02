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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L40
L44:
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
	jne	L41
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	L42
L41:
	movl	$1, %eax
	jmp	L43
L42:
	movl	$0, %eax
L43:
	movl	%eax, b(%rip)
	movl	-64(%rbp), %eax
	sall	$11, %eax
	sarl	$12, %eax
	movl	%eax, c(%rip)
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L40:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jle	L44
	movl	$0, %eax
	popq	%rbp
	ret
