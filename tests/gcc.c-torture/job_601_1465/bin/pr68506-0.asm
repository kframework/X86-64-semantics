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
	jne	L10
	movl	a(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	jmp	L11
L10:
	movl	-4(%rbp), %eax
L11:
	popq	%rbp
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	cmpl	$1, -8(%rbp)
	jg	L14
	movzbl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	sarx	%eax, %edx, %eax
	jmp	L15
L14:
	movzbl	-4(%rbp), %eax
L15:
	popq	%rbp
	ret
fn3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L18
L29:
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
	jbe	L19
	movl	n(%rip), %eax
	testl	%eax, %eax
	je	L19
	movl	$1, %eax
	jmp	L20
L19:
	movl	$0, %eax
L20:
	movb	%al, c(%rip)
	movzbl	c(%rip), %eax
	cbtw
	negl	%eax
	movw	%ax, v(%rip)
	movb	$1, y(%rip)
	jmp	L21
L22:
	movzwl	v(%rip), %eax
	cmpw	$1, %ax
	sete	%al
	movb	%al, e(%rip)
	movzbl	y(%rip), %eax
	addl	$1, %eax
	movb	%al, y(%rip)
L21:
	movzbl	y(%rip), %eax
	testb	%al, %al
	jne	L22
	movw	$0, d(%rip)
	nop
	movl	h(%rip), %eax
	cmpl	$2, %eax
	je	L28
L27:
	movl	m(%rip), %eax
	testl	%eax, %eax
	jne	L24
	call	abort
L24:
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
	je	L25
	nop
	jmp	L28
L25:
	jmp	L27
L28:
	movl	p(%rip), %eax
	addl	$1, %eax
	movl	%eax, p(%rip)
L18:
	movl	p(%rip), %eax
	cmpl	$30, %eax
	jle	L29
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
