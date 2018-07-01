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
	.comm	g,4,4
	.comm	k,4,4
	.comm	l,4,4
	.comm	m,4,4
	.comm	n,4,4
	.comm	h,1,1
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L10
L21:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L11
	movl	c(%rip), %eax
	testl	%eax, %eax
	js	L11
	movl	c(%rip), %eax
	cmpl	$1, %eax
	jle	L12
L11:
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	testl	%eax, %eax
	jne	L15
	movl	c(%rip), %eax
L15:
	movl	%eax, m(%rip)
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	L16
	movl	m(%rip), %eax
	testl	%eax, %eax
	js	L16
	movl	m(%rip), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %edx
	movl	m(%rip), %eax
	movl	$1, %ecx
	sarx	%eax, %ecx, %eax
	cmpl	%eax, %edx
	jle	L17
L16:
	movl	$1, %eax
	jmp	L18
L17:
	movl	$0, %eax
L18:
	testl	%eax, %eax
	jne	L20
	movl	m(%rip), %eax
	movl	$1, %edx
	shlx	%eax, %edx, %eax
L20:
	movl	%eax, l(%rip)
	movl	l(%rip), %eax
	movl	%eax, g(%rip)
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
L10:
	movl	k(%rip), %eax
	testl	%eax, %eax
	jne	L21
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, l(%rip)
	jmp	L22
L23:
	movl	a(%rip), %eax
	addl	$1, %eax
	movb	%al, h(%rip)
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L22:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	L23
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L25
L28:
	movl	$0, %eax
	call	fn1
	movzbl	h(%rip), %eax
	testb	%al, %al
	je	L26
	movzbl	h(%rip), %eax
	movb	%al, -1(%rbp)
L26:
	movsbl	-1(%rbp), %edx
	movl	c(%rip), %eax
	cmpl	%eax, %edx
	jle	L27
	movl	$0, g(%rip)
L27:
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L25:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jle	L28
	movzbl	h(%rip), %eax
	cmpb	$1, %al
	je	L29
	call	abort
L29:
	movl	$0, %eax
	leave
	ret
