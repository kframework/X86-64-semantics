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
	.comm	a,16384,64
	.comm	c,16384,64
	.comm	b,16384,64
	.comm	d,16384,64
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L11:
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
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L10:
	cmpl	$4095, -4(%rbp)
	jle	L11
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L13:
	cmpl	$4095, -4(%rbp)
	jle	L14
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L16
L17:
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
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L16:
	cmpl	$4095, -4(%rbp)
	jle	L17
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L19
L20:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L19:
	cmpl	$4095, -4(%rbp)
	jle	L20
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L22
L23:
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
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L22:
	cmpl	$4095, -4(%rbp)
	jle	L23
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L25
L26:
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
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L25:
	cmpl	$4095, -4(%rbp)
	jle	L26
	popq	%rbp
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L28
L29:
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
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	negl	%eax
	leal	(%rcx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L28:
	cmpl	$4095, -4(%rbp)
	jle	L29
	popq	%rbp
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L31
L32:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	%eax, %edx
	movl	$2863311531, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	%eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L31:
	cmpl	$4095, -4(%rbp)
	jle	L32
	popq	%rbp
	ret
f9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L34
L35:
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
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %ecx
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	negl	%eax
	leal	(%rcx,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L34:
	cmpl	$4095, -4(%rbp)
	jle	L35
	popq	%rbp
	ret
f10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L37
L38:
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %eax
	movl	%eax, %eax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	shrl	$2, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L37:
	cmpl	$4095, -4(%rbp)
	jle	L38
	popq	%rbp
	ret
f11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L40
L41:
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
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	a(,%rax,4), %edx
	movl	-8(%rbp), %eax
	imull	$-19, %eax, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, c(,%rax,4)
	addl	$1, -4(%rbp)
L40:
	cmpl	$4095, -4(%rbp)
	jle	L41
	popq	%rbp
	ret
f12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L43
L44:
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
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, d(,%rax,4)
	addl	$1, -4(%rbp)
L43:
	cmpl	$4095, -4(%rbp)
	jle	L44
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L46
L47:
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
L46:
	cmpl	$4095, -4(%rbp)
	jle	L47
	movl	$-2147483648, a(%rip)
	movl	$-2147483647, a+4(%rip)
	movl	$2147483647, a+16380(%rip)
	movl	$-1, b+16380(%rip)
	call	f1
	call	f2
	movl	$0, -4(%rbp)
	jmp	L48
L51:
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
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L49
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L50
L49:
	call	abort
L50:
	addl	$1, -4(%rbp)
L48:
	cmpl	$4095, -4(%rbp)
	jle	L51
	call	f3
	call	f4
	movl	$0, -4(%rbp)
	jmp	L52
L55:
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
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L53
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L54
L53:
	call	abort
L54:
	addl	$1, -4(%rbp)
L52:
	cmpl	$4095, -4(%rbp)
	jle	L55
	call	f5
	call	f6
	movl	$0, -4(%rbp)
	jmp	L56
L59:
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
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L57
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
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L58
L57:
	call	abort
L58:
	addl	$1, -4(%rbp)
L56:
	cmpl	$4095, -4(%rbp)
	jle	L59
	call	f7
	call	f8
	movl	$0, -4(%rbp)
	jmp	L60
L63:
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
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L61
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L62
L61:
	call	abort
L62:
	addl	$1, -4(%rbp)
L60:
	cmpl	$4095, -4(%rbp)
	jle	L63
	call	f9
	call	f10
	movl	$0, -4(%rbp)
	jmp	L64
L67:
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
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L65
	movl	-4(%rbp), %eax
	cltq
	movl	d(,%rax,4), %esi
	movl	-4(%rbp), %eax
	cltq
	movl	b(,%rax,4), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L66
L65:
	call	abort
L66:
	addl	$1, -4(%rbp)
L64:
	cmpl	$4095, -4(%rbp)
	jle	L67
	call	f11
	call	f12
	movl	$0, -4(%rbp)
	jmp	L68
L71:
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
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L69
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
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L70
L69:
	call	abort
L70:
	addl	$1, -4(%rbp)
L68:
	cmpl	$4095, -4(%rbp)
	jle	L71
	movl	$0, %eax
	leave
	ret
