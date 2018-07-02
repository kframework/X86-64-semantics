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
	jne	L40
	movzbl	a(%rip), %eax
	testb	%al, %al
	je	L41
L40:
	movl	$1, %eax
	jmp	L42
L41:
	movl	$0, %eax
L42:
	movl	%eax, -4(%rbp)
	movzbl	o(%rip), %eax
	testb	%al, %al
	jg	L43
	movzwl	d(%rip), %eax
	movswl	%ax, %edx
	movzbl	o(%rip), %eax
	movsbl	%al, %eax
	movl	$1, %ecx
	sarx	%eax, %ecx, %eax
	cmpl	%eax, %edx
	jg	L43
	movzwl	d(%rip), %eax
	movswl	%ax, %edx
	movzbl	o(%rip), %eax
	movsbl	%al, %eax
	shlx	%eax, %edx, %eax
	jmp	L44
L43:
	movzwl	d(%rip), %eax
L44:
	movw	%ax, n(%rip)
	jmp	L45
L49:
	movzwl	c(%rip), %eax
	testw	%ax, %ax
	js	L46
	movzbl	m(%rip), %eax
	testb	%al, %al
	jne	L46
	movzwl	c(%rip), %eax
	movswl	%ax, %edx
	movl	-4(%rbp), %eax
	shlx	%eax, %edx, %eax
	testl	%eax, %eax
	je	L47
L46:
	movl	$1, %eax
	jmp	L48
L47:
	movl	$0, %eax
L48:
	movb	%al, m(%rip)
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
L45:
	movl	j(%rip), %eax
	testl	%eax, %eax
	jne	L49
	movl	f(%rip), %eax
	addl	$1, %eax
	movb	%al, l(%rip)
	jmp	L50
L51:
	movzbl	h(%rip), %eax
	addl	$1, %eax
	movb	%al, k(%rip)
	movl	$1, f(%rip)
L50:
	movl	f(%rip), %eax
	testl	%eax, %eax
	jle	L51
	popq	%rbp
	ret
fn2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	L52
	call	abort
L52:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L55
L58:
	call	fn1
	movzbl	k(%rip), %eax
	testb	%al, %al
	je	L56
	movzbl	k(%rip), %eax
	movb	%al, -1(%rbp)
L56:
	movsbl	-1(%rbp), %edx
	movl	q(%rip), %eax
	cmpl	%eax, %edx
	jle	L57
	movl	$0, g(%rip)
L57:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L55:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jle	L58
	movzbl	k(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	fn2
	movl	$0, %eax
	leave
	ret
