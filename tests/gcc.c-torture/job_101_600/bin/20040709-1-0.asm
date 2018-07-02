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
myrnd:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	s.2321(%rip), %eax
	imull	$1103515245, %eax, %eax
	movl	%eax, s.2321(%rip)
	movl	s.2321(%rip), %eax
	addl	$12345, %eax
	movl	%eax, s.2321(%rip)
	movl	s.2321(%rip), %eax
	shrl	$16, %eax
	andl	$2047, %eax
	popq	%rbp
	ret
	.comm	sA,4,4
retmeA:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
fn1A:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	sA(%rip), %eax
	movl	%eax, -16(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-14(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	retmeA
	movl	%eax, -16(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %eax
	leave
	ret
fn2A:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	sA(%rip), %eax
	movl	%eax, -16(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-14(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-14(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitA:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3A:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sA+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sA+2(%rip)
	call	retitA
	leave
	ret
testA:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sA, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L52
L53:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L52:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L53
	movzwl	sA+2(%rip), %eax
	orl	$-2, %eax
	movw	%ax, sA+2(%rip)
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sA+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sA+2(%rip)
	movl	sA(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1A
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L54
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sA(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	L54
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L54
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L54
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L55
L54:
	call	abort
L55:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sA+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sA+2(%rip)
	movl	sA(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2A
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L56
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sA(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	L56
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L56
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L56
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L57
L56:
	call	abort
L57:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sA+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sA+2(%rip)
	movl	sA(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3A
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L58
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sA(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	L58
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L58
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L58
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L51
L58:
	call	abort
L51:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sB,8,4
retmeB:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
fn1B:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sB(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-14(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	retmeB
	movq	%rax, -16(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %eax
	leave
	ret
fn2B:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sB(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-14(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-14(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitB:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3B:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sB+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sB+2(%rip)
	call	retitB
	leave
	ret
testB:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sB, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L71
L72:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L71:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L72
	movzwl	sB+2(%rip), %eax
	orl	$-2, %eax
	movw	%ax, sB+2(%rip)
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sB+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sB+2(%rip)
	movq	sB(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1B
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L73
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sB(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L73
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L73
	movl	-60(%rbp), %edx
	movl	sB+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L73
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L74
L73:
	call	abort
L74:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sB+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sB+2(%rip)
	movq	sB(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2B
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L75
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sB(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L75
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L75
	movl	-60(%rbp), %edx
	movl	sB+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L75
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L76
L75:
	call	abort
L76:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sB+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sB+2(%rip)
	movq	sB(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3B
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L77
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sB(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L77
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L77
	movl	-60(%rbp), %edx
	movl	sB+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L77
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L70
L77:
	call	abort
L70:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sC,8,4
retmeC:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
fn1C:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sC(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	-10(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-10(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -10(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	retmeC
	movq	%rax, -16(%rbp)
	movzwl	-10(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %eax
	leave
	ret
fn2C:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sC(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	-10(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-10(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -10(%rbp)
	movzwl	-10(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	-10(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, -10(%rbp)
	movzwl	-10(%rbp), %eax
	shrw	%ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitC:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3C:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sC+6(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sC+6(%rip)
	call	retitC
	leave
	ret
testC:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sC, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L90
L91:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L90:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L91
	movzwl	sC+6(%rip), %eax
	orl	$-2, %eax
	movw	%ax, sC+6(%rip)
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sC+6(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sC+6(%rip)
	movq	sC(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1C
	movl	%eax, -48(%rbp)
	movzbl	-60(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L92
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sC+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L92
	movzwl	-58(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L92
	movl	-64(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L92
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L93
L92:
	call	abort
L93:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sC+6(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sC+6(%rip)
	movq	sC(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2C
	movl	%eax, -48(%rbp)
	movzbl	-60(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L94
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sC+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L94
	movzwl	-58(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L94
	movl	-64(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L94
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L95
L94:
	call	abort
L95:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sC+6(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sC+6(%rip)
	movq	sC(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3C
	movl	%eax, -48(%rbp)
	movzbl	-60(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L96
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sC+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L96
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L96
	movl	-64(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L96
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L89
L96:
	call	abort
L89:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sD,8,8
retmeD:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
fn1D:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sD(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-12(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	retmeD
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	leave
	ret
fn2D:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sD(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-12(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-12(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	popq	%rbp
	ret
retitD:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	popq	%rbp
	ret
fn3D:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sD+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sD+4(%rip)
	call	retitD
	leave
	ret
testD:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sD, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L109
L110:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L109:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L110
	movl	sD+4(%rip), %eax
	orl	$-8, %eax
	movl	%eax, sD+4(%rip)
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sD+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sD+4(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1D
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sD(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L111
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sD(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L111
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L111
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L111
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L112
L111:
	call	abort
L112:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sD+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sD+4(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2D
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sD(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L113
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sD(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L113
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L113
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L113
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L114
L113:
	call	abort
L114:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sD+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sD+4(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3D
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sD(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L115
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sD(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L115
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	cmpl	-48(%rbp), %eax
	jne	L115
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L115
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L108
L115:
	call	abort
L108:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sE,16,16
retmeE:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1E:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sE(%rip), %rax
	movq	sE+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	-4(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-4(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeE
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	-4(%rbp), %eax
	shrl	$3, %eax
	leave
	ret
fn2E:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sE(%rip), %rax
	movq	sE+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	-4(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-4(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-4(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$3, %eax
	popq	%rbp
	ret
retitE:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	popq	%rbp
	ret
fn3E:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sE+12(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sE+12(%rip)
	call	retitE
	leave
	ret
testE:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sE, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L128
L129:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L128:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L129
	movl	sE+12(%rip), %eax
	orl	$-8, %eax
	movl	%eax, sE+12(%rip)
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sE+12(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sE+12(%rip)
	movq	sE(%rip), %rax
	movq	sE+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1E
	movl	%eax, -48(%rbp)
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sE+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L130
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sE+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L130
	movl	-52(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L130
	movq	-64(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	L130
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L131
L130:
	call	abort
L131:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sE+12(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sE+12(%rip)
	movq	sE(%rip), %rax
	movq	sE+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2E
	movl	%eax, -48(%rbp)
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sE+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L132
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sE+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L132
	movl	-52(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L132
	movq	-64(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	L132
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L133
L132:
	call	abort
L133:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sE+12(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sE+12(%rip)
	movq	sE(%rip), %rax
	movq	sE+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3E
	movl	%eax, -48(%rbp)
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sE+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L134
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sE+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L134
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	cmpl	-48(%rbp), %eax
	jne	L134
	movq	-64(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	L134
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L127
L134:
	call	abort
L127:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sF,16,16
retmeF:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1F:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sF(%rip), %rax
	movq	sF+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-12(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeF
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	leave
	ret
fn2F:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sF(%rip), %rax
	movq	sF+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-12(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	-12(%rbp), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	popq	%rbp
	ret
retitF:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	popq	%rbp
	ret
fn3F:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sF+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sF+4(%rip)
	call	retitF
	leave
	ret
testF:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sF, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L147
L148:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L147:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L148
	movl	sF+4(%rip), %eax
	orl	$-8, %eax
	movl	%eax, sF+4(%rip)
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sF+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sF+4(%rip)
	movq	sF(%rip), %rax
	movq	sF+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1F
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sF(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L149
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sF(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L149
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L149
	movq	-56(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L149
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L150
L149:
	call	abort
L150:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sF+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sF+4(%rip)
	movq	sF(%rip), %rax
	movq	sF+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2F
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sF(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L151
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sF(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L151
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L151
	movq	-56(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L151
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L152
L151:
	call	abort
L152:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sF+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sF+4(%rip)
	movq	sF(%rip), %rax
	movq	sF+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3F
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sF(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L153
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sF(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L153
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	cmpl	-48(%rbp), %eax
	jne	L153
	movq	-56(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L153
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L146
L153:
	call	abort
L146:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sG,16,16
retmeG:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1G:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sG(%rip), %rax
	movq	sG+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-13(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	-13(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, -13(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeG
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-13(%rbp), %eax
	shrb	%al
	movzbl	%al, %eax
	leave
	ret
fn2G:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sG(%rip), %rax
	movq	sG+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-13(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	-13(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, -13(%rbp)
	movzbl	-13(%rbp), %eax
	shrb	%al
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	-13(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, -13(%rbp)
	movzbl	-13(%rbp), %eax
	shrb	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
retitG:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sG+3(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3G:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sG+3(%rip), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sG+3(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sG+3(%rip)
	call	retitG
	leave
	ret
testG:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sG, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L166
L167:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L166:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L167
	movzbl	sG+3(%rip), %eax
	orl	$-2, %eax
	movb	%al, sG+3(%rip)
	movzbl	sG+3(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sG+3(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sG+3(%rip)
	movq	sG(%rip), %rax
	movq	sG+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1G
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sG(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L168
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sG(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L168
	movzbl	-61(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sG+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L168
	movq	-56(%rbp), %rdx
	movq	sG+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L168
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L169
L168:
	call	abort
L169:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sG+3(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sG+3(%rip)
	movq	sG(%rip), %rax
	movq	sG+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2G
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sG(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L170
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sG(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L170
	movzbl	-61(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sG+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L170
	movq	-56(%rbp), %rdx
	movq	sG+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L170
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L171
L170:
	call	abort
L171:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sG+3(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sG+3(%rip)
	movq	sG(%rip), %rax
	movq	sG+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3G
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sG(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L172
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sG(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L172
	movzbl	sG+3(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L172
	movq	-56(%rbp), %rdx
	movq	sG+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L172
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L165
L172:
	call	abort
L165:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sH,16,16
retmeH:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1H:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sH(%rip), %rax
	movq	sH+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeH
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2H:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sH(%rip), %rax
	movq	sH+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$7, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitH:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3H:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sH+2(%rip)
	call	retitH
	leave
	ret
testH:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sH, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L185
L186:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L185:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L186
	movzwl	sH+2(%rip), %eax
	orl	$-128, %eax
	movw	%ax, sH+2(%rip)
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sH+2(%rip)
	movq	sH(%rip), %rax
	movq	sH+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1H
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sH(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L187
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sH(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L187
	movzwl	-62(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L187
	movq	-56(%rbp), %rdx
	movq	sH+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L187
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L188
L187:
	call	abort
L188:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sH+2(%rip)
	movq	sH(%rip), %rax
	movq	sH+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2H
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sH(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L189
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sH(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L189
	movzwl	-62(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L189
	movq	-56(%rbp), %rdx
	movq	sH+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L189
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L190
L189:
	call	abort
L190:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sH+2(%rip)
	movq	sH(%rip), %rax
	movq	sH+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3H
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sH(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L191
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sH(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L191
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L191
	movq	-56(%rbp), %rdx
	movq	sH+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L191
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L184
L191:
	call	abort
L184:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sI,16,16
retmeI:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1I:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sI(%rip), %rax
	movq	sI+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeI
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2I:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sI(%rip), %rax
	movq	sI+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$7, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitI:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3I:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sI(%rip)
	call	retitI
	leave
	ret
testI:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sI, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L204
L205:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L204:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L205
	movzwl	sI(%rip), %eax
	orl	$-128, %eax
	movw	%ax, sI(%rip)
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sI(%rip)
	movq	sI(%rip), %rax
	movq	sI+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1I
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L206
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L206
	movzwl	-64(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L206
	movq	-56(%rbp), %rdx
	movq	sI+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L206
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L207
L206:
	call	abort
L207:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sI(%rip)
	movq	sI(%rip), %rax
	movq	sI+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2I
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L208
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L208
	movzwl	-64(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L208
	movq	-56(%rbp), %rdx
	movq	sI+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L208
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L209
L208:
	call	abort
L209:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sI(%rip)
	movq	sI(%rip), %rax
	movq	sI+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3I
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L210
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L210
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L210
	movq	-56(%rbp), %rdx
	movq	sI+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L210
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L203
L210:
	call	abort
L203:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sJ,4,2
retmeJ:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
fn1J:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	sJ(%rip), %eax
	movl	%eax, -16(%rbp)
	movzbl	-15(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, -15(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	retmeJ
	movl	%eax, -16(%rbp)
	movzbl	-15(%rbp), %eax
	shrb	%al
	movzbl	%al, %eax
	leave
	ret
fn2J:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	sJ(%rip), %eax
	movl	%eax, -16(%rbp)
	movzbl	-15(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, -15(%rbp)
	movzbl	-15(%rbp), %eax
	shrb	%al
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, -15(%rbp)
	movzbl	-15(%rbp), %eax
	shrb	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
retitJ:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3J:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sJ+1(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sJ+1(%rip)
	call	retitJ
	leave
	ret
testJ:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sJ, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L223
L224:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L223:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L224
	movzbl	sJ+1(%rip), %eax
	orl	$-2, %eax
	movb	%al, sJ+1(%rip)
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sJ+1(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sJ+1(%rip)
	movl	sJ(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1J
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sJ(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L225
	movzwl	-64(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sJ(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	L225
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L225
	movzwl	-62(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L225
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L226
L225:
	call	abort
L226:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sJ+1(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sJ+1(%rip)
	movl	sJ(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2J
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sJ(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L227
	movzwl	-64(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sJ(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	L227
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L227
	movzwl	-62(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L227
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L228
L227:
	call	abort
L228:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sJ+1(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sJ+1(%rip)
	movl	sJ(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3J
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sJ(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L229
	movzwl	-64(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sJ(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	L229
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L229
	movzwl	-62(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L229
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L222
L229:
	call	abort
L222:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sK,4,4
retmeK:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
fn1K:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	sK(%rip), %eax
	movl	%eax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	retmeK
	movl	%eax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	leave
	ret
fn2K:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	sK(%rip), %eax
	movl	%eax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitK:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3K:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sK(%rip)
	call	retitK
	leave
	ret
testK:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sK, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L242
L243:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L242:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L243
	movzbl	sK(%rip), %eax
	orl	$63, %eax
	movb	%al, sK(%rip)
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sK(%rip)
	movl	sK(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1K
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sK+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L244
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sK(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	L244
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L244
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L244
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L245
L244:
	call	abort
L245:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sK(%rip)
	movl	sK(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2K
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sK+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L246
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sK(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	L246
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L246
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L246
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L247
L246:
	call	abort
L247:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sK(%rip)
	movl	sK(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3K
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sK+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L248
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sK(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	L248
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L248
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L248
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L241
L248:
	call	abort
L241:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sL,8,4
retmeL:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
fn1L:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sL(%rip), %rax
	movq	%rax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	retmeL
	movq	%rax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	leave
	ret
fn2L:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sL(%rip), %rax
	movq	%rax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitL:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3L:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sL(%rip)
	call	retitL
	leave
	ret
testL:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sL, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L261
L262:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L261:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L262
	movzbl	sL(%rip), %eax
	orl	$63, %eax
	movb	%al, sL(%rip)
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sL(%rip)
	movq	sL(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1L
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sL+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L263
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sL(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L263
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L263
	movl	-60(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L263
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L264
L263:
	call	abort
L264:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sL(%rip)
	movq	sL(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2L
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sL+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L265
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sL(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L265
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L265
	movl	-60(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L265
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L266
L265:
	call	abort
L266:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sL(%rip)
	movq	sL(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3L
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sL+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L267
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sL(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L267
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L267
	movl	-60(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L267
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L260
L267:
	call	abort
L260:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sM,8,4
retmeM:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
fn1M:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sM(%rip), %rax
	movq	%rax, -16(%rbp)
	movzbl	-12(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-12(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -12(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	retmeM
	movq	%rax, -16(%rbp)
	movzbl	-12(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	leave
	ret
fn2M:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sM(%rip), %rax
	movq	%rax, -16(%rbp)
	movzbl	-12(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-12(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	-12(%rbp), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitM:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3M:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sM+4(%rip)
	call	retitM
	leave
	ret
testM:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sM, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L280
L281:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L280:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L281
	movzbl	sM+4(%rip), %eax
	orl	$63, %eax
	movb	%al, sM+4(%rip)
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sM+4(%rip)
	movq	sM(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1M
	movl	%eax, -48(%rbp)
	movzwl	-58(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sM+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L282
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sM+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L282
	movzbl	-60(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L282
	movl	-64(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	L282
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L283
L282:
	call	abort
L283:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sM+4(%rip)
	movq	sM(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2M
	movl	%eax, -48(%rbp)
	movzwl	-58(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sM+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L284
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sM+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L284
	movzbl	-60(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L284
	movl	-64(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	L284
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L285
L284:
	call	abort
L285:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sM+4(%rip)
	movq	sM(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3M
	movl	%eax, -48(%rbp)
	movzwl	-58(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sM+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	L286
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sM+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L286
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L286
	movl	-64(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	L286
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L279
L286:
	call	abort
L279:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sN,8,8
retmeN:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
fn1N:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sN(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4033, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	retmeN
	movq	%rax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	leave
	ret
fn2N:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sN(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4033, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4033, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitN:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3N:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzwl	sN(%rip), %eax
	andw	$-4033, %ax
	orl	%edx, %eax
	movw	%ax, sN(%rip)
	call	retitN
	leave
	ret
testN:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sN, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L299
L300:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L299:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L300
	movzwl	sN(%rip), %eax
	orw	$4032, %ax
	movw	%ax, sN(%rip)
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzwl	sN(%rip), %eax
	andw	$-4033, %ax
	orl	%edx, %eax
	movw	%ax, sN(%rip)
	movq	sN(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1N
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sN+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L301
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sN(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L301
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L301
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L301
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L302
L301:
	call	abort
L302:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzwl	sN(%rip), %eax
	andw	$-4033, %ax
	orl	%edx, %eax
	movw	%ax, sN(%rip)
	movq	sN(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2N
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sN+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L303
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sN(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L303
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L303
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L303
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L304
L303:
	call	abort
L304:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzwl	sN(%rip), %eax
	andw	$-4033, %ax
	orl	%edx, %eax
	movw	%ax, sN(%rip)
	movq	sN(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3N
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sN+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L305
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sN(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L305
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L305
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L305
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L298
L305:
	call	abort
L298:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sO,16,16
retmeO:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1O:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sO(%rip), %rax
	movq	sO+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-8(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-8(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeO
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-8(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2O:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sO(%rip), %rax
	movq	sO+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-8(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-8(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -8(%rbp)
	movzwl	-8(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-8(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -8(%rbp)
	movzwl	-8(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitO:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3O:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sO+8(%rip)
	call	retitO
	leave
	ret
testO:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sO, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L318
L319:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L318:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L319
	movzwl	sO+8(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sO+8(%rip)
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sO+8(%rip)
	movq	sO(%rip), %rax
	movq	sO+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1O
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sO+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L320
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sO+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L320
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L320
	movq	-64(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	L320
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L321
L320:
	call	abort
L321:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sO+8(%rip)
	movq	sO(%rip), %rax
	movq	sO+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2O
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sO+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L322
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sO+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L322
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L322
	movq	-64(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	L322
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L323
L322:
	call	abort
L323:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sO+8(%rip)
	movq	sO(%rip), %rax
	movq	sO+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3O
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sO+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L324
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sO+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L324
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L324
	movq	-64(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	L324
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L317
L324:
	call	abort
L317:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sP,16,16
retmeP:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1P:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sP(%rip), %rax
	movq	sP+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeP
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2P:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sP(%rip), %rax
	movq	sP+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitP:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3P:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sP(%rip)
	call	retitP
	leave
	ret
testP:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sP, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L337
L338:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L337:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L338
	movzwl	sP(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sP(%rip)
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sP(%rip)
	movq	sP(%rip), %rax
	movq	sP+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1P
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sP+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L339
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sP(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L339
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L339
	movq	-56(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L339
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L340
L339:
	call	abort
L340:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sP(%rip)
	movq	sP(%rip), %rax
	movq	sP+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2P
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sP+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L341
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sP(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L341
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L341
	movq	-56(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L341
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L342
L341:
	call	abort
L342:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sP(%rip)
	movq	sP(%rip), %rax
	movq	sP+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3P
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sP+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	L343
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sP(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	L343
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L343
	movq	-56(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L343
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L336
L343:
	call	abort
L336:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sQ,16,16
retmeQ:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1Q:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sQ(%rip), %rax
	movq	sQ+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeQ
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2Q:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sQ(%rip), %rax
	movq	sQ+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitQ:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3Q:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sQ(%rip)
	call	retitQ
	leave
	ret
testQ:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sQ, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L356
L357:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L356:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L357
	movzwl	sQ(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sQ(%rip)
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sQ(%rip)
	movq	sQ(%rip), %rax
	movq	sQ+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1Q
	movl	%eax, -48(%rbp)
	movzbl	-61(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sQ+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L358
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sQ(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L358
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L358
	movq	-56(%rbp), %rdx
	movq	sQ+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L358
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L359
L358:
	call	abort
L359:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sQ(%rip)
	movq	sQ(%rip), %rax
	movq	sQ+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2Q
	movl	%eax, -48(%rbp)
	movzbl	-61(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sQ+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L360
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sQ(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L360
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L360
	movq	-56(%rbp), %rdx
	movq	sQ+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L360
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L361
L360:
	call	abort
L361:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sQ(%rip)
	movq	sQ(%rip), %rax
	movq	sQ+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3Q
	movl	%eax, -48(%rbp)
	movzbl	-61(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sQ+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L362
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sQ(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L362
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L362
	movq	-56(%rbp), %rdx
	movq	sQ+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L362
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L355
L362:
	call	abort
L355:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sR,16,16
retmeR:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1R:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sR(%rip), %rax
	movq	sR+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeR
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2R:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sR(%rip), %rax
	movq	sR+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitR:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3R:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sR(%rip)
	call	retitR
	leave
	ret
testR:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sR, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L375
L376:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L375:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L376
	movzwl	sR(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sR(%rip)
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sR(%rip)
	movq	sR(%rip), %rax
	movq	sR+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1R
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sR+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L377
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sR(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L377
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L377
	movq	-56(%rbp), %rdx
	movq	sR+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L377
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L378
L377:
	call	abort
L378:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sR(%rip)
	movq	sR(%rip), %rax
	movq	sR+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2R
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sR+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L379
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sR(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L379
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L379
	movq	-56(%rbp), %rdx
	movq	sR+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L379
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L380
L379:
	call	abort
L380:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sR(%rip)
	movq	sR(%rip), %rax
	movq	sR+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3R
	movl	%eax, -48(%rbp)
	movzwl	-62(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sR+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L381
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sR(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L381
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L381
	movq	-56(%rbp), %rdx
	movq	sR+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L381
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L374
L381:
	call	abort
L374:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sS,16,16
retmeS:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1S:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sS(%rip), %rax
	movq	sS+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeS
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leave
	ret
fn2S:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sS(%rip), %rax
	movq	sS+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitS:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3S:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	call	retitS
	leave
	ret
testS:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sS, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L394
L395:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L394:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L395
	movzbl	sS(%rip), %eax
	orl	$1, %eax
	movb	%al, sS(%rip)
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	sS+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1S
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sS(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L396
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L396
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L396
	movq	-56(%rbp), %rdx
	movq	sS+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L396
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L397
L396:
	call	abort
L397:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	sS+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2S
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sS(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L398
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L398
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L398
	movq	-56(%rbp), %rdx
	movq	sS+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L398
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L399
L398:
	call	abort
L399:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	sS+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3S
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sS(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L400
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L400
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L400
	movq	-56(%rbp), %rdx
	movq	sS+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L400
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L393
L400:
	call	abort
L393:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sT,4,2
retmeT:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
fn1T:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	sT(%rip), %eax
	movl	%eax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	retmeT
	movl	%eax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leave
	ret
fn2T:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	sT(%rip), %eax
	movl	%eax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitT:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3T:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sT(%rip)
	call	retitT
	leave
	ret
testT:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sT, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L413
L414:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L413:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L414
	movzbl	sT(%rip), %eax
	orl	$1, %eax
	movb	%al, sT(%rip)
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sT(%rip)
	movl	sT(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1T
	movl	%eax, -48(%rbp)
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sT+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L415
	movzwl	-64(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sT(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	L415
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L415
	movzwl	-62(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L415
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L416
L415:
	call	abort
L416:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sT(%rip)
	movl	sT(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2T
	movl	%eax, -48(%rbp)
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sT+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L417
	movzwl	-64(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sT(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	L417
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L417
	movzwl	-62(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L417
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L418
L417:
	call	abort
L418:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sT(%rip)
	movl	sT(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3T
	movl	%eax, -48(%rbp)
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sT+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L419
	movzwl	-64(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sT(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	L419
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L419
	movzwl	-62(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L419
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L412
L419:
	call	abort
L412:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sU,16,16
retmeU:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	ret
fn1U:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sU(%rip), %rax
	movq	sU+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	retmeU
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	leave
	ret
fn2U:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sU(%rip), %rax
	movq	sU+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitU:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3U:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	call	retitU
	leave
	ret
testU:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sU, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L432
L433:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L432:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L433
	movzbl	sU(%rip), %eax
	orl	$64, %eax
	movb	%al, sU(%rip)
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	sU+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1U
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sU(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L434
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L434
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L434
	movq	-56(%rbp), %rdx
	movq	sU+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L434
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L435
L434:
	call	abort
L435:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	sU+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2U
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sU(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L436
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L436
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L436
	movq	-56(%rbp), %rdx
	movq	sU+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L436
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L437
L436:
	call	abort
L437:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	sU+8(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3U
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sU(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L438
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L438
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L438
	movq	-56(%rbp), %rdx
	movq	sU+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L438
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L431
L438:
	call	abort
L431:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sV,4,2
retmeV:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
fn1V:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	sV(%rip), %eax
	movl	%eax, -16(%rbp)
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-15(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -15(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	retmeV
	movl	%eax, -16(%rbp)
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	leave
	ret
fn2V:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	sV(%rip), %eax
	movl	%eax, -16(%rbp)
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-15(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -15(%rbp)
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-15(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -15(%rbp)
	movzbl	-15(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitV:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3V:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sV+1(%rip)
	call	retitV
	leave
	ret
testV:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sV, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L451
L452:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L451:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L452
	movzbl	sV+1(%rip), %eax
	orl	$1, %eax
	movb	%al, sV+1(%rip)
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sV+1(%rip)
	movl	sV(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1V
	movl	%eax, -48(%rbp)
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L453
	movzbl	-64(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	L453
	movzbl	-63(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L453
	movzwl	-62(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L453
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L454
L453:
	call	abort
L454:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sV+1(%rip)
	movl	sV(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2V
	movl	%eax, -48(%rbp)
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L455
	movzbl	-64(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	L455
	movzbl	-63(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L455
	movzwl	-62(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L455
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L456
L455:
	call	abort
L456:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sV+1(%rip)
	movl	sV(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3V
	movl	%eax, -48(%rbp)
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L457
	movzbl	-64(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	L457
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L457
	movzwl	-62(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L457
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L450
L457:
	call	abort
L450:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sW,32,32
retmeW:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1W:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	sW(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	sW+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	sW+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	leaq	-32(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rax, %rdi
	call	retmeW
	addq	$32, %rsp
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2W:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movq	sW(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	sW+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	sW+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitW:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sW+16(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3W:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sW+16(%rip), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+16(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sW+16(%rip)
	call	retitW
	leave
	ret
testW:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	$sW, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L470
L471:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L470:
	movl	-20(%rbp), %eax
	cmpl	$31, %eax
	jbe	L471
	movabsq	$-6341068275337658368, %rax
	movl	$16385, %edx
	movq	%rax, sW(%rip)
	movl	%edx, sW+8(%rip)
	movzwl	sW+16(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sW+16(%rip)
	movzwl	sW+16(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+16(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sW+16(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sW+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sW+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1W
	movl	%eax, -48(%rbp)
	movzbl	-61(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sW+19(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L472
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sW+16(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L472
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+16(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L472
	fldt	-80(%rbp)
	fldt	sW(%rip)
	fucomi	%st(1), %st
	jp	L478
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L472
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L473
	jmp	L472
L478:
	fstp	%st(0)
	fstp	%st(0)
L472:
	call	abort
L473:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+16(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sW+16(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sW+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sW+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2W
	movl	%eax, -48(%rbp)
	movzbl	-61(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sW+19(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L474
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sW+16(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L474
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+16(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L474
	fldt	-80(%rbp)
	fldt	sW(%rip)
	fucomi	%st(1), %st
	jp	L479
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L474
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L475
	jmp	L474
L479:
	fstp	%st(0)
	fstp	%st(0)
L474:
	call	abort
L475:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+16(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sW+16(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sW+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sW+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3W
	movl	%eax, -48(%rbp)
	movzbl	-61(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sW+19(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L476
	movl	-64(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sW+16(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L476
	movzwl	sW+16(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L476
	fldt	-80(%rbp)
	fldt	sW(%rip)
	fucomi	%st(1), %st
	jp	L480
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L476
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L469
	jmp	L476
L480:
	fstp	%st(0)
	fstp	%st(0)
L476:
	call	abort
L469:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sX,32,32
retmeX:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1X:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	sX(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	sX+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	sX+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-32(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -32(%rbp)
	leaq	-32(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rax, %rdi
	call	retmeX
	addq	$32, %rsp
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2X:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movq	sX(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	sX+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	sX+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-32(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -32(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-32(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -32(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitX:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3X:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sX(%rip)
	call	retitX
	leave
	ret
testX:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	$sX, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L492
L493:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L492:
	movl	-20(%rbp), %eax
	cmpl	$31, %eax
	jbe	L493
	movabsq	$-6341068275337658368, %rax
	movl	$16385, %edx
	movq	%rax, sX+16(%rip)
	movl	%edx, sX+24(%rip)
	movzwl	sX(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sX(%rip)
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sX(%rip)
	movq	sX(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sX+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sX+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1X
	movl	%eax, -48(%rbp)
	movzbl	-77(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sX+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L494
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sX(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L494
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L494
	fldt	-64(%rbp)
	fldt	sX+16(%rip)
	fucomi	%st(1), %st
	jp	L500
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L494
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L495
	jmp	L494
L500:
	fstp	%st(0)
	fstp	%st(0)
L494:
	call	abort
L495:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sX(%rip)
	movq	sX(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sX+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sX+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2X
	movl	%eax, -48(%rbp)
	movzbl	-77(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sX+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L496
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sX(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L496
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L496
	fldt	-64(%rbp)
	fldt	sX+16(%rip)
	fucomi	%st(1), %st
	jp	L501
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L496
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L497
	jmp	L496
L501:
	fstp	%st(0)
	fstp	%st(0)
L496:
	call	abort
L497:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sX(%rip)
	movq	sX(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sX+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sX+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3X
	movl	%eax, -48(%rbp)
	movzbl	-77(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sX+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L498
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sX(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L498
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L498
	fldt	-64(%rbp)
	fldt	sX+16(%rip)
	fucomi	%st(1), %st
	jp	L502
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L498
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L491
	jmp	L498
L502:
	fstp	%st(0)
	fstp	%st(0)
L498:
	call	abort
L491:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sY,32,32
retmeY:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1Y:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	sY(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	sY+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	sY+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-32(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -32(%rbp)
	leaq	-32(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rax, %rdi
	call	retmeY
	addq	$32, %rsp
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2Y:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movq	sY(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	sY+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	sY+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-32(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -32(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	-32(%rbp), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, -32(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitY:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3Y:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sY(%rip)
	call	retitY
	leave
	ret
testY:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	$sY, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L514
L515:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L514:
	movl	-20(%rbp), %eax
	cmpl	$31, %eax
	jbe	L515
	movabsq	$-6341068275337658368, %rax
	movl	$16385, %edx
	movq	%rax, sY+16(%rip)
	movl	%edx, sY+24(%rip)
	movzwl	sY(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sY(%rip)
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sY(%rip)
	movq	sY(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sY+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sY+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1Y
	movl	%eax, -48(%rbp)
	movzwl	-78(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sY+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L516
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sY(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L516
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L516
	fldt	-64(%rbp)
	fldt	sY+16(%rip)
	fucomi	%st(1), %st
	jp	L522
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L516
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L517
	jmp	L516
L522:
	fstp	%st(0)
	fstp	%st(0)
L516:
	call	abort
L517:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sY(%rip)
	movq	sY(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sY+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sY+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2Y
	movl	%eax, -48(%rbp)
	movzwl	-78(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sY+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L518
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sY(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L518
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	L518
	fldt	-64(%rbp)
	fldt	sY+16(%rip)
	fucomi	%st(1), %st
	jp	L523
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L518
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L519
	jmp	L518
L523:
	fstp	%st(0)
	fstp	%st(0)
L518:
	call	abort
L519:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sY(%rip)
	movq	sY(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sY+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sY+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3Y
	movl	%eax, -48(%rbp)
	movzwl	-78(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sY+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	L520
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sY(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	L520
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L520
	fldt	-64(%rbp)
	fldt	sY+16(%rip)
	fucomi	%st(1), %st
	jp	L524
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L520
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L513
	jmp	L520
L524:
	fstp	%st(0)
	fstp	%st(0)
L520:
	call	abort
L513:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sZ,32,32
retmeZ:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1Z:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	sZ(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	sZ+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	sZ+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	leaq	-32(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rax, %rdi
	call	retmeZ
	addq	$32, %rsp
	movzwl	-14(%rbp), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2Z:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -36(%rbp)
	movq	sZ(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	sZ+16(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	sZ+24(%rip), %rax
	movq	%rax, -8(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$4, %ax
	movzwl	%ax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitZ:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sZ+18(%rip), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3Z:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzwl	sZ+18(%rip), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	sZ+18(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, sZ+18(%rip)
	call	retitZ
	leave
	ret
testZ:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	$sZ, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	L536
L537:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L536:
	movl	-20(%rbp), %eax
	cmpl	$31, %eax
	jbe	L537
	movabsq	$-6341068275337658368, %rax
	movl	$16385, %edx
	movq	%rax, sZ(%rip)
	movl	%edx, sZ+8(%rip)
	movzwl	sZ+18(%rip), %eax
	orl	$-16, %eax
	movw	%ax, sZ+18(%rip)
	movzwl	sZ+18(%rip), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	sZ+18(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, sZ+18(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sZ+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sZ+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1Z
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %edx
	andl	$127, %edx
	movl	sZ+16(%rip), %eax
	shrl	$13, %eax
	andl	$127, %eax
	cmpb	%al, %dl
	jne	L538
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %edx
	movzwl	sZ+16(%rip), %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L538
	movzwl	-62(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movzwl	sZ+18(%rip), %eax
	shrw	$4, %ax
	cmpw	%ax, %dx
	jne	L538
	fldt	-80(%rbp)
	fldt	sZ(%rip)
	fucomi	%st(1), %st
	jp	L544
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L538
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L539
	jmp	L538
L544:
	fstp	%st(0)
	fstp	%st(0)
L538:
	call	abort
L539:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	sZ+18(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, sZ+18(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sZ+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sZ+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2Z
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %edx
	andl	$127, %edx
	movl	sZ+16(%rip), %eax
	shrl	$13, %eax
	andl	$127, %eax
	cmpb	%al, %dl
	jne	L540
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %edx
	movzwl	sZ+16(%rip), %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L540
	movzwl	-62(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movzwl	sZ+18(%rip), %eax
	shrw	$4, %ax
	cmpw	%ax, %dx
	jne	L540
	fldt	-80(%rbp)
	fldt	sZ(%rip)
	fucomi	%st(1), %st
	jp	L545
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L540
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L541
	jmp	L540
L545:
	fstp	%st(0)
	fstp	%st(0)
L540:
	call	abort
L541:
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	sZ+18(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, sZ+18(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	sZ+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	sZ+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3Z
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %edx
	andl	$127, %edx
	movl	sZ+16(%rip), %eax
	shrl	$13, %eax
	andl	$127, %eax
	cmpb	%al, %dl
	jne	L542
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %edx
	movzwl	sZ+16(%rip), %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	L542
	movzwl	sZ+18(%rip), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L542
	fldt	-80(%rbp)
	fldt	sZ(%rip)
	fucomi	%st(1), %st
	jp	L546
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L542
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L535
	jmp	L542
L546:
	fstp	%st(0)
	fstp	%st(0)
L542:
	call	abort
L535:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	testA
	call	testB
	call	testC
	call	testD
	call	testE
	call	testF
	call	testG
	call	testH
	call	testI
	call	testJ
	call	testK
	call	testL
	call	testM
	call	testN
	call	testO
	call	testP
	call	testQ
	call	testR
	call	testS
	call	testT
	call	testU
	call	testV
	call	testW
	call	testX
	call	testY
	call	testZ
	movl	$0, %edi
	call	exit
s.2321:
	.long	1388815473
