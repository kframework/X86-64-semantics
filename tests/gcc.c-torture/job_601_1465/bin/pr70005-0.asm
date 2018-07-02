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
a:
	.byte	6
	.comm	b,4,4
	.comm	c,4,4
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movzbl	a(%rip), %eax
	cmpb	$1, %al
	ja	L40
	movzbl	a(%rip), %eax
	movzbl	%al, %eax
	jmp	L41
L40:
	movl	$1, %eax
L41:
	movl	%eax, -12(%rbp)
	movzbl	a(%rip), %eax
	testb	%al, %al
	je	L42
	movzbl	a(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L42
	movl	$1, %eax
	jmp	L43
L42:
	movl	$0, %eax
L43:
	movl	%eax, c(%rip)
	movl	c(%rip), %eax
	andl	$6, %eax
	movl	%eax, -16(%rbp)
	movl	$0, -4(%rbp)
	movzbl	a(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	c(%rip), %eax
	notl	%eax
	movl	%eax, -8(%rbp)
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L44
	movzbl	a(%rip), %eax
	testb	%al, %al
	je	L45
L44:
	movl	$1, %eax
	jmp	L46
L45:
	movl	$0, %eax
L46:
	movl	%eax, -24(%rbp)
	movzbl	a(%rip), %eax
	notl	%eax
	movb	%al, -25(%rbp)
	movzbl	a(%rip), %eax
	testb	%al, %al
	je	L47
	movl	-16(%rbp), %eax
	movl	%eax, -8(%rbp)
L47:
	cmpb	$0, -25(%rbp)
	je	L48
	cmpl	$0, -24(%rbp)
	je	L48
	movzbl	a(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
L48:
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %edx
	movzbl	-25(%rbp), %eax
	imull	%edx, %eax
	leal	1(%rax), %edx
	movl	c(%rip), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	je	L49
	cmpl	$0, -20(%rbp)
	jne	L50
	cmpl	$0, -12(%rbp)
	je	L51
L50:
	movl	$1, %eax
	jmp	L52
L51:
	movl	$0, %eax
L52:
	cmpl	-8(%rbp), %eax
	je	L49
	movl	$1, %eax
	jmp	L53
L49:
	movl	$0, %eax
L53:
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	L39
	call	abort
L39:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn1
	movl	$0, %eax
	popq	%rbp
	ret
