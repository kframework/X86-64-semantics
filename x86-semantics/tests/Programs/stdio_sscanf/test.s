strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L2:
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
	jne	L2
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
LC0:
	.string	"%s %s %d  %d"
LC1:
	.string	"%s %d, %d = %s\n"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-112(%rbp), %rax
	movabsq	$8746382394089824595, %rdi
	movq	%rdi, (%rax)
	movabsq	$3612001677481168160, %rdx
	movq	%rdx, 8(%rax)
	movl	$959520821, 16(%rax)
	movw	$14648, 20(%rax)
	movb	$0, 22(%rax)
	leaq	-180(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	leaq	-144(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sscanf
	movl	-180(%rbp), %ecx
	movl	-184(%rbp), %edx
	leaq	-176(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	$40, %rcx
	je	L6
L6:
	leave
	ret
