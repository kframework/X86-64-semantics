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
	.comm	m,4,4
	.comm	n,4,4
	.comm	o,4,4
	.comm	p,4,4
	.comm	s,4,4
	.comm	u,4,4
	.comm	i,4,4
	.comm	c,1,1
	.comm	q,1,1
	.comm	y,1,1
	.comm	d,2,2
	.comm	e,1,1
	.local	f
	.comm	f,4,4
	.local	h
	.comm	h,4,4
	.local	g
	.comm	g,2,2
	.local	r
	.comm	r,2,2
	.local	v
	.comm	v,2,2
	.comm	t,4,4
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	a(%rip), %eax
	testl	%eax, %eax
	jne	L40
	movl	a(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	jmp	L41
L40:
	movl	-4(%rbp), %eax
L41:
	popq	%rbp
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	cmpl	$1, -8(%rbp)
	jg	L44
	movzbl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	sarx	%eax, %edx, %eax
	jmp	L45
L44:
	movzbl	-4(%rbp), %eax
L45:
	popq	%rbp
	ret
fn3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L48
L59:
	movzbl	c(%rip), %eax
	movsbl	%al, %edx
	movzbl	c(%rip), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %ecx
	movzbl	c(%rip), %eax
	movsbl	%al, %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %edi
	call	fn1
	movl	%eax, s(%rip)
	movl	s(%rip), %eax
	movzbl	%al, %eax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	fn2
	movzbl	%al, %eax
	movl	%eax, t(%rip)
	movzbl	c(%rip), %eax
	movsbl	%al, %edx
	movl	t(%rip), %eax
	movw	%ax, d(%rip)
	movzwl	d(%rip), %eax
	cwtl
	movl	%eax, m(%rip)
	movl	m(%rip), %ecx
	movl	p(%rip), %eax
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, o(%rip)
	movl	o(%rip), %eax
	cmpl	$4, %eax
	setbe	%al
	movzbl	%al, %eax
	negl	%eax
	cmpl	%eax, %edx
	jbe	L49
	movl	n(%rip), %eax
	testl	%eax, %eax
	je	L49
	movl	$1, %eax
	jmp	L50
L49:
	movl	$0, %eax
L50:
	movb	%al, c(%rip)
	movzbl	c(%rip), %eax
	cbtw
	negl	%eax
	movw	%ax, v(%rip)
	movb	$1, y(%rip)
	jmp	L51
L52:
	movzwl	v(%rip), %eax
	cmpw	$1, %ax
	sete	%al
	movb	%al, e(%rip)
	movzbl	y(%rip), %eax
	addl	$1, %eax
	movb	%al, y(%rip)
L51:
	movzbl	y(%rip), %eax
	testb	%al, %al
	jne	L52
	movw	$0, d(%rip)
	nop
	movl	h(%rip), %eax
	cmpl	$2, %eax
	je	L58
L57:
	movl	m(%rip), %eax
	testl	%eax, %eax
	jne	L54
	call	abort
L54:
	movl	f(%rip), %eax
	movl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movw	%ax, r(%rip)
	movzwl	r(%rip), %eax
	movl	%eax, %edx
	movl	i(%rip), %eax
	orl	%edx, %eax
	movb	%al, e(%rip)
	movzbl	e(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movzwl	g(%rip), %eax
	movl	u(%rip), %edx
	imull	%edx, %eax
	movb	%al, q(%rip)
	movzbl	q(%rip), %eax
	movsbl	%al, %edx
	movl	b(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	L55
	nop
	jmp	L58
L55:
	jmp	L57
L58:
	movl	p(%rip), %eax
	addl	$1, %eax
	movl	%eax, p(%rip)
L48:
	movl	p(%rip), %eax
	cmpl	$30, %eax
	jle	L59
	movl	-4(%rbp), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn3
	movl	$0, %eax
	popq	%rbp
	ret
