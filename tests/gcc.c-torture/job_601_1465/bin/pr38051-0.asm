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
mymemcmp1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
L40:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -32(%rbp)
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L40
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
mymemcmp2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	andl	$3, %eax
	cmpq	$1, %rax
	je	L44
	cmpq	$1, %rax
	jb	L45
	cmpq	$3, %rax
	je	L46
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -48(%rbp)
	addq	$2, -56(%rbp)
	jmp	L47
L46:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -48(%rbp)
	addq	$1, -56(%rbp)
	jmp	L48
L45:
	cmpq	$0, -56(%rbp)
	jne	L49
	movl	$0, %eax
	jmp	L50
L49:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L51
L44:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	subq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	L52
	jmp	L53
L52:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L51
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L50
L51:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	L48
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L50
L48:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L47
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L50
L47:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	L54
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L50
L54:
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -48(%rbp)
	subq	$4, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	L52
L53:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L55
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L50
L55:
	movl	$0, %eax
L50:
	leave
	ret
mymemcmp3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	andl	$7, %eax
	sall	$3, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -72(%rbp)
	andq	$-8, -88(%rbp)
	movq	-104(%rbp), %rax
	andl	$3, %eax
	cmpq	$1, %rax
	je	L58
	cmpq	$1, %rax
	jb	L59
	cmpq	$3, %rax
	je	L60
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -96(%rbp)
	addq	$2, -104(%rbp)
	jmp	L61
L60:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -96(%rbp)
	addq	$1, -104(%rbp)
	jmp	L62
L59:
	cmpq	$0, -104(%rbp)
	jne	L63
	movl	$0, %eax
	jmp	L64
L63:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	jmp	L65
L58:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	subq	$1, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	L66
	jmp	L67
L66:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	L65
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L64
L65:
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	L62
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L64
L62:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	L61
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L64
L61:
	movq	-88(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-24(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	L68
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L64
L68:
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -96(%rbp)
	subq	$4, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	L66
L67:
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	L69
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L64
L69:
	movl	$0, %eax
L64:
	leave
	ret
mymemcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	L71
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mymemcmp2
	jmp	L72
L71:
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mymemcmp3
L72:
	leave
	ret
	.comm	buf,256,64
LC0:
	.string	"\0017\202\247UI\235\277\370D\266U\027\216\371"
LC1:
	.string	"\0017\202\247UI\320\363\267*m#qIj"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$305419896, -16(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	$120, %al
	jne	L74
	movzbl	-15(%rbp), %eax
	cmpb	$86, %al
	jne	L74
	movzbl	-14(%rbp), %eax
	cmpb	$52, %al
	jne	L74
	movzbl	-13(%rbp), %eax
	cmpb	$18, %al
	je	L75
L74:
	movl	$0, %eax
	jmp	L78
L75:
	movl	$buf, %eax
	andl	$15, %eax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	%rdx, %rax
	addq	$buf, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movl	$15, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movl	$15, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movl	$33, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mymemcmp
	cmpl	$-51, %eax
	je	L77
	call	abort
L77:
	movl	$0, %eax
L78:
	leave
	ret
