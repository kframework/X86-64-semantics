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
	.comm	a,1,1
	.comm	b,1,1
	.comm	h,1,1
	.comm	k,1,1
	.comm	l,1,1
	.comm	m,1,1
	.comm	o,1,1
	.comm	c,2,2
	.comm	d,2,2
	.comm	n,2,2
	.comm	e,4,4
	.comm	f,4,4
	.comm	g,4,4
	.comm	j,4,4
	.comm	q,4,4
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	b(%rip), %eax
	testb	%al, %al
	jne	L10
	movzbl	a(%rip), %eax
	testb	%al, %al
	je	L11
L10:
	movl	$1, %eax
	jmp	L12
L11:
	movl	$0, %eax
L12:
	movl	%eax, -4(%rbp)
	movzbl	o(%rip), %eax
	testb	%al, %al
	jg	L13
	movzwl	d(%rip), %eax
	movswl	%ax, %edx
	movzbl	o(%rip), %eax
	movsbl	%al, %eax
	movl	$1, %ecx
	sarx	%eax, %ecx, %eax
	cmpl	%eax, %edx
	jg	L13
	movzwl	d(%rip), %eax
	movswl	%ax, %edx
	movzbl	o(%rip), %eax
	movsbl	%al, %eax
	shlx	%eax, %edx, %eax
	jmp	L14
L13:
	movzwl	d(%rip), %eax
L14:
	movw	%ax, n(%rip)
	jmp	L15
L19:
	movzwl	c(%rip), %eax
	testw	%ax, %ax
	js	L16
	movzbl	m(%rip), %eax
	testb	%al, %al
	jne	L16
	movzwl	c(%rip), %eax
	movswl	%ax, %edx
	movl	-4(%rbp), %eax
	shlx	%eax, %edx, %eax
	testl	%eax, %eax
	je	L17
L16:
	movl	$1, %eax
	jmp	L18
L17:
	movl	$0, %eax
L18:
	movb	%al, m(%rip)
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
L15:
	movl	j(%rip), %eax
	testl	%eax, %eax
	jne	L19
	movl	f(%rip), %eax
	addl	$1, %eax
	movb	%al, l(%rip)
	jmp	L20
L21:
	movzbl	h(%rip), %eax
	addl	$1, %eax
	movb	%al, k(%rip)
	movl	$1, f(%rip)
L20:
	movl	f(%rip), %eax
	testl	%eax, %eax
	jle	L21
	popq	%rbp
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	L22
	call	abort
L22:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L25
L28:
	call	fn1
	movzbl	k(%rip), %eax
	testb	%al, %al
	je	L26
	movzbl	k(%rip), %eax
	movb	%al, -1(%rbp)
L26:
	movsbl	-1(%rbp), %edx
	movl	q(%rip), %eax
	cmpl	%eax, %edx
	jle	L27
	movl	$0, g(%rip)
L27:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L25:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jle	L28
	movzbl	k(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	fn2
	movl	$0, %eax
	leave
	ret
