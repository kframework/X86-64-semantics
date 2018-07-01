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
c:
	.quad	a
	.comm	e,4,4
	.comm	n,4,4
	.comm	b,4,4
	.comm	m,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$200, %rsp
	movl	%edi, -320(%rbp)
	jmp	L10
L13:
	leaq	-304(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	c(%rip), %rax
	movq	c(%rip), %rdx
	movl	(%rdx), %edx
	xorl	$1, %edx
	movl	%edx, (%rax)
	movl	-320(%rbp), %eax
	andl	$507904, %eax
	testl	%eax, %eax
	je	L11
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	b(%rip), %eax
	jmp	L14
L11:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L10:
	movl	e(%rip), %eax
	cmpl	$1, %eax
	jle	L13
	movl	$0, %eax
L14:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$200, %rsp
	movl	%edi, -320(%rbp)
	jmp	L16
L19:
	leaq	-304(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	c(%rip), %rax
	movq	c(%rip), %rdx
	movl	(%rdx), %edx
	xorl	$1, %edx
	movl	%edx, (%rax)
	movl	-320(%rbp), %eax
	andl	$507904, %eax
	testl	%eax, %eax
	je	L17
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	b(%rip), %eax
	jmp	L20
L17:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L16:
	movl	e(%rip), %eax
	cmpl	$1, %eax
	jle	L19
	movl	$0, %eax
L20:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -16(%rbp)
	movb	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	andl	$-507905, %eax
	orb	$64, %ah
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	foo
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	L22
	movzbl	-16(%rbp), %eax
	testb	%al, %al
	je	L23
L22:
	movl	$1, %eax
	jmp	L24
L23:
	movl	$0, %eax
L24:
	movl	%eax, m(%rip)
	movl	a(%rip), %eax
	cmpl	$1, %eax
	je	L25
	call	abort
L25:
	movl	$0, e(%rip)
	movl	$0, -32(%rbp)
	movb	$1, -32(%rbp)
	movzbl	-31(%rbp), %eax
	andl	$63, %eax
	orl	$64, %eax
	movb	%al, -31(%rbp)
	movzbl	-30(%rbp), %eax
	andl	$-8, %eax
	movb	%al, -30(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	L26
	movzbl	-32(%rbp), %eax
	testb	%al, %al
	je	L27
L26:
	movl	$1, %eax
	jmp	L28
L27:
	movl	$0, %eax
L28:
	movl	m(%rip), %edx
	orl	%edx, %eax
	movl	%eax, m(%rip)
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L29
	call	abort
L29:
	movl	$0, %eax
	leave
	ret
