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
	.comm	a,16384,64
	.comm	c,16384,64
	.comm	b,16384,64
	.comm	d,16384,64
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L40
L41:
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L40:
	cmpl	$4095, -4(%rbp)
	jle	L41
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L43
L44:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	$-1431655765, %edx
	mull	%edx
	shrl	%edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L43:
	cmpl	$4095, -4(%rbp)
	jle	L44
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L46
L47:
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L46:
	cmpl	$4095, -4(%rbp)
	jle	L47
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L49
L50:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	$954437177, %edx
	mull	%edx
	shrl	$2, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L49:
	cmpl	$4095, -4(%rbp)
	jle	L50
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L52
L53:
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L52:
	cmpl	$4095, -4(%rbp)
	jle	L53
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L55
L56:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$-1356305461, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L55:
	cmpl	$4095, -4(%rbp)
	jle	L56
	popq	%rbp
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L58
L59:
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %eax
	shrl	$31, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L58:
	cmpl	$4095, -4(%rbp)
	jle	L59
	popq	%rbp
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L61
L62:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	%eax, %edx
	movl	$2863311531, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L61:
	cmpl	$4095, -4(%rbp)
	jle	L62
	popq	%rbp
	ret
f9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L64
L65:
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %eax
	shrl	$31, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L64:
	cmpl	$4095, -4(%rbp)
	jle	L65
	popq	%rbp
	ret
f10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L67
L68:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	%eax, %eax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L67:
	cmpl	$4095, -4(%rbp)
	jle	L68
	popq	%rbp
	ret
f11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L70
L71:
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %eax
	cltq
	imulq	$1808407283, %rax, %rax
	shrq	$32, %rax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %eax
	shrl	$31, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L70:
	cmpl	$4095, -4(%rbp)
	jle	L71
	popq	%rbp
	ret
f12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L73
L74:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	%eax, %edx
	movl	$2938661835, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	subl	-8(%rbp), %eax
	shrl	%eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	shrl	$4, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L73:
	cmpl	$4095, -4(%rbp)
	jle	L74
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L76
L77:
	movl	-4(%rbp), %eax
	leal	-2048(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, a(,%rax,4)
	movl	-4(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, b(,%rax,4)
	addl	$1, -4(%rbp)
L76:
	cmpl	$4095, -4(%rbp)
	jle	L77
	movl	$-2147483648, a(%rip)
	movl	$-2147483647, a+4(%rip)
	movl	$2147483647, a+16380(%rip)
	movl	$-1, b+16380(%rip)
	call	f1
	call	f2
	movl	$0, -4(%rbp)
	jmp	L78
L81:
	movl	-4(%rbp), %eax
	cltq
	movl	c(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L79
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	%eax
	cmpl	%eax, %ecx
	je	L80
L79:
	call	abort
L80:
	addl	$1, -4(%rbp)
L78:
	cmpl	$4095, -4(%rbp)
	jle	L81
	call	f3
	call	f4
	movl	$0, -4(%rbp)
	jmp	L82
L85:
	movl	-4(%rbp), %eax
	cltq
	movl	c(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L83
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	$954437177, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	je	L84
L83:
	call	abort
L84:
	addl	$1, -4(%rbp)
L82:
	cmpl	$4095, -4(%rbp)
	jle	L85
	call	f5
	call	f6
	movl	$0, -4(%rbp)
	jmp	L86
L89:
	movl	-4(%rbp), %eax
	cltq
	movl	c(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L87
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$-1356305461, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	cmpl	%eax, %esi
	je	L88
L87:
	call	abort
L88:
	addl	$1, -4(%rbp)
L86:
	cmpl	$4095, -4(%rbp)
	jle	L89
	call	f7
	call	f8
	movl	$0, -4(%rbp)
	jmp	L90
L93:
	movl	-4(%rbp), %eax
	cltq
	movl	c(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L91
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	%eax
	cmpl	%eax, %ecx
	je	L92
L91:
	call	abort
L92:
	addl	$1, -4(%rbp)
L90:
	cmpl	$4095, -4(%rbp)
	jle	L93
	call	f9
	call	f10
	movl	$0, -4(%rbp)
	jmp	L94
L97:
	movl	-4(%rbp), %eax
	cltq
	movl	c(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L95
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	$954437177, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	je	L96
L95:
	call	abort
L96:
	addl	$1, -4(%rbp)
L94:
	cmpl	$4095, -4(%rbp)
	jle	L97
	call	f11
	call	f12
	movl	$0, -4(%rbp)
	jmp	L98
L101:
	movl	-4(%rbp), %eax
	cltq
	movl	c(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	$1808407283, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L99
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$-1356305461, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	cmpl	%eax, %esi
	je	L100
L99:
	call	abort
L100:
	addl	$1, -4(%rbp)
L98:
	cmpl	$4095, -4(%rbp)
	jle	L101
	movl	$0, %eax
	leave
	ret
