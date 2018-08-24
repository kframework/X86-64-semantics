main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$7809639169054242164, %rax
	movq	%rax, -48(%rbp)
	movl	$1768910963, -40(%rbp)
	movw	$29806, -36(%rbp)
	movb	$0, -34(%rbp)
	leaq	-32(%rbp), %rax
	movabsq	$8026941110971363171, %rdx
	movq	%rdx, (%rax)
	movl	$1852402798, 8(%rax)
	movw	$101, 12(%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	$40, %rcx
	je	L3
L3:
	leave
	ret
