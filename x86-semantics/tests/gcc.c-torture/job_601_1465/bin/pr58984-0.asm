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
	jmp	L40
L43:
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
	je	L41
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	b(%rip), %eax
	jmp	L44
L41:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L40:
	movl	e(%rip), %eax
	cmpl	$1, %eax
	jle	L43
	movl	$0, %eax
L44:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$200, %rsp
	movl	%edi, -320(%rbp)
	jmp	L46
L49:
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
	je	L47
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	b(%rip), %eax
	jmp	L50
L47:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L46:
	movl	e(%rip), %eax
	cmpl	$1, %eax
	jle	L49
	movl	$0, %eax
L50:
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
	jne	L52
	movzbl	-16(%rbp), %eax
	testb	%al, %al
	je	L53
L52:
	movl	$1, %eax
	jmp	L54
L53:
	movl	$0, %eax
L54:
	movl	%eax, m(%rip)
	movl	a(%rip), %eax
	cmpl	$1, %eax
	je	L55
	call	abort
L55:
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
	jne	L56
	movzbl	-32(%rbp), %eax
	testb	%al, %al
	je	L57
L56:
	movl	$1, %eax
	jmp	L58
L57:
	movl	$0, %eax
L58:
	movl	m(%rip), %edx
	orl	%edx, %eax
	movl	%eax, m(%rip)
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L59
	call	abort
L59:
	movl	$0, %eax
	leave
	ret
