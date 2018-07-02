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
	.comm	sA,2,1
retmeA:
	pushq	%rbp
	movq	%rsp, %rbp
	movw	%di, -16(%rbp)
	movzwl	-16(%rbp), %eax
	popq	%rbp
	ret
fn1A:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movzwl	sA(%rip), %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	movl	%eax, %edi
	call	retmeA
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2A:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movzwl	sA(%rip), %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
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
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitA:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3A:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sA(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sA(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sA+1(%rip)
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
	cmpl	$1, %eax
	jbe	L53
	movzbl	sA(%rip), %eax
	orl	$-32, %eax
	movb	%al, sA(%rip)
	movzbl	sA+1(%rip), %eax
	orl	$-1, %eax
	movb	%al, sA+1(%rip)
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sA(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sA(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sA+1(%rip)
	movzwl	sA(%rip), %eax
	movw	%ax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1A
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L54
	movzbl	-64(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	L54
	movzwl	-64(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L54
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
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
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sA(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sA(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sA+1(%rip)
	movzwl	sA(%rip), %eax
	movw	%ax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2A
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L56
	movzbl	-64(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	L56
	movzwl	-64(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L56
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
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
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sA(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sA(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sA+1(%rip)
	movzwl	sA(%rip), %eax
	movw	%ax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3A
	movl	%eax, -48(%rbp)
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L58
	movzbl	-64(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	L58
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L58
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
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
	.comm	sB,6,1
retmeB:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rbp), %edx
	movl	%edx, (%rax)
	movzwl	20(%rbp), %edx
	movw	%dx, 4(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1B:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	sB(%rip), %eax
	movl	%eax, -16(%rbp)
	movzwl	sB+4(%rip), %eax
	movw	%ax, -12(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	subq	$8, %rsp
	movq	%rsp, %rax
	movl	-16(%rbp), %ecx
	movl	%ecx, (%rax)
	movzwl	-12(%rbp), %ecx
	movw	%cx, 4(%rax)
	movq	%rdx, %rdi
	call	retmeB
	addq	$8, %rsp
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2B:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	sB(%rip), %eax
	movl	%eax, -16(%rbp)
	movzwl	sB+4(%rip), %eax
	movw	%ax, -12(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
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
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-16(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -16(%rbp)
	movzwl	-16(%rbp), %eax
	shrw	$5, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitB:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3B:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sB(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sB(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sB+1(%rip)
	call	retitB
	leave
	ret
testB:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$sB, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L71
L72:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L71:
	movl	-12(%rbp), %eax
	cmpl	$5, %eax
	jbe	L72
	movzbl	sB(%rip), %eax
	orl	$-32, %eax
	movb	%al, sB(%rip)
	movzbl	sB+1(%rip), %eax
	orl	$-1, %eax
	movb	%al, sB+1(%rip)
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sB(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sB(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sB+1(%rip)
	movl	sB(%rip), %eax
	movl	%eax, -56(%rbp)
	movzwl	sB+4(%rip), %eax
	movw	%ax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1B
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	L73
	movzbl	-56(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L73
	movzwl	-56(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L73
	movl	-54(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	L73
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L74
L73:
	call	abort
L74:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sB(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sB(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sB+1(%rip)
	movl	sB(%rip), %eax
	movl	%eax, -56(%rbp)
	movzwl	sB+4(%rip), %eax
	movw	%ax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2B
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	L75
	movzbl	-56(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L75
	movzwl	-56(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L75
	movl	-54(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	L75
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L76
L75:
	call	abort
L76:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sB(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sB(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sB+1(%rip)
	movl	sB(%rip), %eax
	movl	%eax, -56(%rbp)
	movzwl	sB+4(%rip), %eax
	movw	%ax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3B
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	L77
	movzbl	-56(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L77
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-40(%rbp), %eax
	jne	L77
	movl	-54(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	L77
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L70
L77:
	call	abort
L70:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sC,6,1
retmeC:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -16(%rbp)
	movzwl	-20(%rbp), %eax
	movw	%ax, -12(%rbp)
	movl	$0, %eax
	movzbl	-16(%rbp), %edx
	movzbl	%dl, %edx
	movb	$0, %al
	orq	%rdx, %rax
	movzbl	-15(%rbp), %edx
	movb	%dl, %ah
	movzbl	-14(%rbp), %edx
	movzbl	%dl, %edx
	salq	$16, %rdx
	andq	$-16711681, %rax
	orq	%rdx, %rax
	movzbl	-13(%rbp), %edx
	movzbl	%dl, %edx
	movq	%rdx, %rcx
	salq	$24, %rcx
	movabsq	$-4278190081, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movzbl	-12(%rbp), %edx
	movzbl	%dl, %edx
	movq	%rdx, %rcx
	salq	$32, %rcx
	movabsq	$-1095216660481, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	movzbl	-11(%rbp), %edx
	movzbl	%dl, %edx
	movq	%rdx, %rcx
	salq	$40, %rcx
	movabsq	$-280375465082881, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	popq	%rbp
	ret
fn1C:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	sC(%rip), %eax
	movl	%eax, -16(%rbp)
	movzwl	sC+4(%rip), %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -12(%rbp)
	movq	-16(%rbp), %rdi
	call	retmeC
	movb	%al, -16(%rbp)
	movzbl	%ah, %edx
	movb	%dl, -15(%rbp)
	movq	%rax, %rdx
	shrq	$16, %rdx
	andb	$255, %dh
	movb	%dl, -14(%rbp)
	movq	%rax, %rdx
	shrq	$24, %rdx
	andb	$255, %dh
	movb	%dl, -13(%rbp)
	movq	%rax, %rdx
	shrq	$32, %rdx
	andb	$255, %dh
	movb	%dl, -12(%rbp)
	shrq	$40, %rax
	andb	$255, %ah
	movb	%al, -11(%rbp)
	movzwl	-12(%rbp), %eax
	shrw	$5, %ax
	movzwl	%ax, %eax
	leave
	ret
fn2C:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	sC(%rip), %eax
	movl	%eax, -16(%rbp)
	movzwl	sC+4(%rip), %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	shrw	$5, %ax
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
	andw	$2047, %ax
	sall	$5, %eax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	andl	$31, %eax
	orl	%edx, %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	shrw	$5, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
retitC:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3C:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sC+4(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sC+4(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sC+5(%rip)
	call	retitC
	leave
	ret
testC:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$sC, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L90
L91:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L90:
	movl	-12(%rbp), %eax
	cmpl	$5, %eax
	jbe	L91
	movzbl	sC+4(%rip), %eax
	orl	$-32, %eax
	movb	%al, sC+4(%rip)
	movzbl	sC+5(%rip), %eax
	orl	$-1, %eax
	movb	%al, sC+5(%rip)
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sC+4(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sC+4(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sC+5(%rip)
	movl	sC(%rip), %eax
	movl	%eax, -56(%rbp)
	movzwl	sC+4(%rip), %eax
	movw	%ax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1C
	movl	%eax, -40(%rbp)
	movzbl	-52(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	L92
	movzbl	-52(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L92
	movzwl	-52(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L92
	movl	-56(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L92
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L93
L92:
	call	abort
L93:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sC+4(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sC+4(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sC+5(%rip)
	movl	sC(%rip), %eax
	movl	%eax, -56(%rbp)
	movzwl	sC+4(%rip), %eax
	movw	%ax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2C
	movl	%eax, -40(%rbp)
	movzbl	-52(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	L94
	movzbl	-52(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L94
	movzwl	-52(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L94
	movl	-56(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L94
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L95
L94:
	call	abort
L95:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$2047, %ax
	movzwl	%ax, %edx
	andl	$7, %edx
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	sC+4(%rip), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, sC+4(%rip)
	shrw	$3, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sC+5(%rip)
	movl	sC(%rip), %eax
	movl	%eax, -56(%rbp)
	movzwl	sC+4(%rip), %eax
	movw	%ax, -52(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3C
	movl	%eax, -40(%rbp)
	movzbl	-52(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	L96
	movzbl	-52(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L96
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-40(%rbp), %eax
	jne	L96
	movl	-56(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L96
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L89
L96:
	call	abort
L89:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sD,8,1
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
	movzbl	sD+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sD+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sD+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sD+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	popq	%rbp
	ret
fn3D:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sD+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sD+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sD+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sD+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sD+4(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sD+4(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sD+5(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sD+5(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sD+6(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sD+6(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sD+7(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sD+7(%rip)
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
	movzbl	sD+4(%rip), %eax
	orl	$-8, %eax
	movb	%al, sD+4(%rip)
	movzbl	sD+5(%rip), %eax
	orl	$-1, %eax
	movb	%al, sD+5(%rip)
	movzbl	sD+6(%rip), %eax
	orl	$-1, %eax
	movb	%al, sD+6(%rip)
	movzbl	sD+7(%rip), %eax
	orl	$-1, %eax
	movb	%al, sD+7(%rip)
	movzbl	sD+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sD+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sD+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sD+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sD+4(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sD+4(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sD+5(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sD+5(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sD+6(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sD+6(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sD+7(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sD+7(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1D
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %ecx
	andl	$63, %ecx
	movzbl	sD(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sD+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	L111
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sD+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sD+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sD+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sD+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L111
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sD+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sD+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sD+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sD+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
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
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sD+4(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sD+4(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sD+5(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sD+5(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sD+6(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sD+6(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sD+7(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sD+7(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2D
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %ecx
	andl	$63, %ecx
	movzbl	sD(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sD+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	L113
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sD+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sD+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sD+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sD+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L113
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sD+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sD+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sD+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sD+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
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
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sD+4(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sD+4(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sD+5(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sD+5(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sD+6(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sD+6(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sD+7(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sD+7(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3D
	movl	%eax, -48(%rbp)
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %ecx
	andl	$63, %ecx
	movzbl	sD(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sD+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	L115
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sD+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sD+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sD+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sD+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L115
	movzbl	sD+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sD+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sD+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sD+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
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
	movzbl	sE+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sE+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sE+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sE+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	popq	%rbp
	ret
fn3E:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sE+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sE+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sE+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sE+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sE+12(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sE+12(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sE+13(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sE+13(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sE+14(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sE+14(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sE+15(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sE+15(%rip)
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
	movzbl	sE+12(%rip), %eax
	orl	$-8, %eax
	movb	%al, sE+12(%rip)
	movzbl	sE+13(%rip), %eax
	orl	$-1, %eax
	movb	%al, sE+13(%rip)
	movzbl	sE+14(%rip), %eax
	orl	$-1, %eax
	movb	%al, sE+14(%rip)
	movzbl	sE+15(%rip), %eax
	orl	$-1, %eax
	movb	%al, sE+15(%rip)
	movzbl	sE+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sE+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sE+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sE+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sE+12(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sE+12(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sE+13(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sE+13(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sE+14(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sE+14(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sE+15(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sE+15(%rip)
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
	movl	%eax, %ecx
	movzbl	sE+8(%rip), %eax
	movzbl	sE+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L130
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sE+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sE+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sE+11(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sE+12(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L130
	movl	-52(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sE+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sE+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sE+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sE+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
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
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sE+12(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sE+12(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sE+13(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sE+13(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sE+14(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sE+14(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sE+15(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sE+15(%rip)
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
	movl	%eax, %ecx
	movzbl	sE+8(%rip), %eax
	movzbl	sE+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L132
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sE+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sE+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sE+11(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sE+12(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L132
	movl	-52(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sE+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sE+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sE+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sE+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
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
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sE+12(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sE+12(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sE+13(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sE+13(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sE+14(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sE+14(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sE+15(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sE+15(%rip)
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
	movl	%eax, %ecx
	movzbl	sE+8(%rip), %eax
	movzbl	sE+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L134
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sE+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sE+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sE+11(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sE+12(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L134
	movzbl	sE+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sE+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sE+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sE+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
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
	movzbl	sF+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sF+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sF+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sF+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	popq	%rbp
	ret
fn3F:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sF+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sF+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sF+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sF+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$536870911, %eax
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sF+4(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sF+4(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sF+5(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sF+5(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sF+6(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sF+6(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sF+7(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sF+7(%rip)
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
	movzbl	sF+4(%rip), %eax
	orl	$-8, %eax
	movb	%al, sF+4(%rip)
	movzbl	sF+5(%rip), %eax
	orl	$-1, %eax
	movb	%al, sF+5(%rip)
	movzbl	sF+6(%rip), %eax
	orl	$-1, %eax
	movb	%al, sF+6(%rip)
	movzbl	sF+7(%rip), %eax
	orl	$-1, %eax
	movb	%al, sF+7(%rip)
	movzbl	sF+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sF+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sF+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sF+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$536870911, %eax
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sF+4(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sF+4(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sF+5(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sF+5(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sF+6(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sF+6(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sF+7(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sF+7(%rip)
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
	movl	%eax, %ecx
	movzbl	sF(%rip), %eax
	movzbl	sF+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L149
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sF+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sF+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sF+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sF+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L149
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sF+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sF+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sF+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sF+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
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
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sF+4(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sF+4(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sF+5(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sF+5(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sF+6(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sF+6(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sF+7(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sF+7(%rip)
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
	movl	%eax, %ecx
	movzbl	sF(%rip), %eax
	movzbl	sF+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L151
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sF+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sF+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sF+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sF+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L151
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sF+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sF+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sF+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sF+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
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
	movl	%eax, %edx
	andl	$31, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	sF+4(%rip), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movb	%dl, sF+4(%rip)
	movl	%eax, %edx
	shrl	$5, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sF+5(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sF+5(%rip)
	movl	%eax, %edx
	shrl	$13, %edx
	movl	%edx, %edx
	movzbl	%dl, %edx
	movzbl	sF+6(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sF+6(%rip)
	shrl	$21, %eax
	movl	%eax, %eax
	movzbl	%al, %eax
	movzbl	sF+7(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sF+7(%rip)
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
	movl	%eax, %ecx
	movzbl	sF(%rip), %eax
	movzbl	sF+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L153
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sF+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sF+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sF+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sF+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L153
	movzbl	sF+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sF+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sF+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sF+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
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
	.comm	sG,9,1
retmeG:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movzbl	24(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1G:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movq	sG(%rip), %rax
	movq	%rax, -16(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -8(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	-16(%rbp), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	leaq	-16(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movzbl	-8(%rbp), %ecx
	movb	%cl, 8(%rax)
	movq	%rdx, %rdi
	call	retmeG
	addq	$16, %rsp
	movzbl	-16(%rbp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	leave
	ret
fn2G:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sG(%rip), %rax
	movq	%rax, -16(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -8(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	-16(%rbp), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$2, %al
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
	leal	0(,%rax,4), %edx
	movzbl	-16(%rbp), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	popq	%rbp
	ret
retitG:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3G:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	sG(%rip), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, sG(%rip)
	call	retitG
	leave
	ret
testG:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$sG, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L166
L167:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L166:
	movl	-12(%rbp), %eax
	cmpl	$8, %eax
	jbe	L167
	movzbl	sG(%rip), %eax
	orl	$-4, %eax
	movb	%al, sG(%rip)
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	sG(%rip), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, sG(%rip)
	movq	sG(%rip), %rax
	movq	%rax, -56(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1G
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L168
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L168
	movzbl	-56(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	cmpb	%al, %dl
	jne	L168
	movq	-55(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L168
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L169
L168:
	call	abort
L169:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	sG(%rip), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, sG(%rip)
	movq	sG(%rip), %rax
	movq	%rax, -56(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2G
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L170
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L170
	movzbl	-56(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	cmpb	%al, %dl
	jne	L170
	movq	-55(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L170
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L171
L170:
	call	abort
L171:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	sG(%rip), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, sG(%rip)
	movq	sG(%rip), %rax
	movq	%rax, -56(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3G
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L172
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L172
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L172
	movq	-55(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L172
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L165
L172:
	call	abort
L165:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sH,10,1
retmeH:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movzwl	24(%rbp), %edx
	movw	%dx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1H:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movq	sH(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -8(%rbp)
	movzbl	-15(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -15(%rbp)
	leaq	-16(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-8(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeH
	addq	$16, %rsp
	movzbl	-15(%rbp), %eax
	movzbl	%al, %eax
	leave
	ret
fn2H:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sH(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -8(%rbp)
	movzbl	-15(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -15(%rbp)
	movzbl	-15(%rbp), %ecx
	movzbl	%cl, %edx
	movl	%edx, %eax
	sall	$4, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	shrw	$8, %ax
	movl	%eax, %edx
	shrb	$3, %dl
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movb	%dl, -15(%rbp)
	movzbl	-15(%rbp), %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitH:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sH+1(%rip), %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3H:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sH+1(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movb	%al, sH+1(%rip)
	call	retitH
	leave
	ret
testH:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$sH, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L185
L186:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L185:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L186
	movb	$-1, sH+1(%rip)
	movzbl	sH+1(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movb	%al, sH+1(%rip)
	movq	sH(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1H
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L187
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	L187
	movzbl	-55(%rbp), %edx
	movzbl	sH+1(%rip), %eax
	cmpb	%al, %dl
	jne	L187
	movq	-54(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L187
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L188
L187:
	call	abort
L188:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movb	%al, sH+1(%rip)
	movq	sH(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2H
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L189
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	L189
	movzbl	-55(%rbp), %edx
	movzbl	sH+1(%rip), %eax
	cmpb	%al, %dl
	jne	L189
	movq	-54(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L189
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L190
L189:
	call	abort
L190:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movb	%al, sH+1(%rip)
	movq	sH(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3H
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L191
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	L191
	movzbl	sH+1(%rip), %eax
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L191
	movq	-54(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L191
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L184
L191:
	call	abort
L184:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sI,9,1
retmeI:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movzbl	24(%rbp), %edx
	movb	%dl, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1I:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movq	sI(%rip), %rax
	movq	%rax, -16(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -8(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	leaq	-16(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movzbl	-8(%rbp), %ecx
	movb	%cl, 8(%rax)
	movq	%rdx, %rdi
	call	retmeI
	addq	$16, %rsp
	movzbl	-16(%rbp), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	leave
	ret
fn2I:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sI(%rip), %rax
	movq	%rax, -16(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -8(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$7, %al
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
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	popq	%rbp
	ret
retitI:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3I:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, sI(%rip)
	call	retitI
	leave
	ret
testI:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$sI, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L204
L205:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L204:
	movl	-12(%rbp), %eax
	cmpl	$8, %eax
	jbe	L205
	movzbl	sI(%rip), %eax
	orl	$-128, %eax
	movb	%al, sI(%rip)
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, sI(%rip)
	movq	sI(%rip), %rax
	movq	%rax, -56(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1I
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L206
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L206
	movzbl	-56(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	cmpb	%al, %dl
	jne	L206
	movq	-55(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L206
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L207
L206:
	call	abort
L207:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, sI(%rip)
	movq	sI(%rip), %rax
	movq	%rax, -56(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2I
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L208
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L208
	movzbl	-56(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	cmpb	%al, %dl
	jne	L208
	movq	-55(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L208
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L209
L208:
	call	abort
L209:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, sI(%rip)
	movq	sI(%rip), %rax
	movq	%rax, -56(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3I
	movl	%eax, -40(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L210
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L210
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L210
	movq	-55(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L210
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L203
L210:
	call	abort
L203:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sJ,4,1
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
	movl	%eax, %ecx
	andb	$255, %ch
	movzbl	sJ(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sJ+1(%rip), %edx
	andl	$1, %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
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
	movl	%eax, %ecx
	andb	$255, %ch
	movzbl	sJ(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sJ+1(%rip), %edx
	andl	$1, %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
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
	movl	%eax, %ecx
	andb	$255, %ch
	movzbl	sJ(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sJ+1(%rip), %edx
	andl	$1, %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
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
	.comm	sK,4,1
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
	movl	%eax, %ecx
	movzbl	sK+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sK+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L244
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %ecx
	andw	$1023, %cx
	movzbl	sK(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sK+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rax, %rdx
	movzbl	sK+2(%rip), %eax
	andl	$1, %eax
	salq	$9, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movl	%eax, %ecx
	movzbl	sK+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sK+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L246
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %ecx
	andw	$1023, %cx
	movzbl	sK(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sK+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rax, %rdx
	movzbl	sK+2(%rip), %eax
	andl	$1, %eax
	salq	$9, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movl	%eax, %ecx
	movzbl	sK+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sK+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L248
	movl	-64(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %ecx
	andw	$1023, %cx
	movzbl	sK(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sK+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rax, %rdx
	movzbl	sK+2(%rip), %eax
	andl	$1, %eax
	salq	$9, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	.comm	sL,8,1
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
	movl	%eax, %ecx
	movzbl	sL+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sL+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L263
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sL(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sL+1(%rip), %edx
	salq	$2, %rdx
	orq	%rax, %rdx
	movzbl	sL+2(%rip), %eax
	andl	$1, %eax
	salq	$10, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movl	%eax, %ecx
	movzbl	sL+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sL+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L265
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sL(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sL+1(%rip), %edx
	salq	$2, %rdx
	orq	%rax, %rdx
	movzbl	sL+2(%rip), %eax
	andl	$1, %eax
	salq	$10, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movl	%eax, %ecx
	movzbl	sL+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sL+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L267
	movl	-64(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sL(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sL+1(%rip), %edx
	salq	$2, %rdx
	orq	%rax, %rdx
	movzbl	sL+2(%rip), %eax
	andl	$1, %eax
	salq	$10, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	.comm	sM,8,1
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
	movl	%eax, %ecx
	movzbl	sM+6(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sM+7(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L282
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sM+4(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sM+5(%rip), %edx
	salq	$2, %rdx
	orq	%rax, %rdx
	movzbl	sM+6(%rip), %eax
	andl	$1, %eax
	salq	$10, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movl	%eax, %ecx
	movzbl	sM+6(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sM+7(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L284
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sM+4(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sM+5(%rip), %edx
	salq	$2, %rdx
	orq	%rax, %rdx
	movzbl	sM+6(%rip), %eax
	andl	$1, %eax
	salq	$10, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movl	%eax, %ecx
	movzbl	sM+6(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sM+7(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L286
	movl	-60(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sM+4(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sM+5(%rip), %edx
	salq	$2, %rdx
	orq	%rax, %rdx
	movzbl	sM+6(%rip), %eax
	andl	$1, %eax
	salq	$10, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	.comm	sN,8,1
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
	movzbl	sN(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sN+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3N:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sN(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sN+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	movzbl	%al, %edx
	andl	$3, %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	sN(%rip), %edx
	andl	$63, %edx
	orl	%ecx, %edx
	movb	%dl, sN(%rip)
	shrb	$2, %al
	movzbl	%al, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sN+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sN+1(%rip)
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
	movzbl	sN(%rip), %eax
	orl	$-64, %eax
	movb	%al, sN(%rip)
	movzbl	sN+1(%rip), %eax
	orl	$15, %eax
	movb	%al, sN+1(%rip)
	movzbl	sN(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sN+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$63, %eax
	movzbl	%al, %edx
	andl	$3, %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	sN(%rip), %edx
	andl	$63, %edx
	orl	%ecx, %edx
	movb	%dl, sN(%rip)
	shrb	$2, %al
	movzbl	%al, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sN+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sN+1(%rip)
	movq	sN(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1N
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sN+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sN+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sN+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sN+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L301
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sN+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sN+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sN+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sN+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L301
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %ecx
	andl	$63, %ecx
	movzbl	sN(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sN+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
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
	movzbl	%al, %edx
	andl	$3, %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	sN(%rip), %edx
	andl	$63, %edx
	orl	%ecx, %edx
	movb	%dl, sN(%rip)
	shrb	$2, %al
	movzbl	%al, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sN+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sN+1(%rip)
	movq	sN(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2N
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sN+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sN+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sN+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sN+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L303
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sN+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sN+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sN+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sN+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L303
	movzwl	-64(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %ecx
	andl	$63, %ecx
	movzbl	sN(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sN+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
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
	movzbl	%al, %edx
	andl	$3, %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	sN(%rip), %edx
	andl	$63, %edx
	orl	%ecx, %edx
	movb	%dl, sN(%rip)
	shrb	$2, %al
	movzbl	%al, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sN+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sN+1(%rip)
	movq	sN(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3N
	movl	%eax, -48(%rbp)
	movl	-60(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movzbl	sN+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sN+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sN+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sN+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L305
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sN+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sN+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sN+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sN+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L305
	movzbl	sN(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sN+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
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
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3O:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sO+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sO+8(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sO+9(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sO+9(%rip)
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
	movzbl	sO+8(%rip), %eax
	orl	$-1, %eax
	movb	%al, sO+8(%rip)
	movzbl	sO+9(%rip), %eax
	orl	$15, %eax
	movb	%al, sO+9(%rip)
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sO+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sO+8(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sO+9(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sO+9(%rip)
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
	movl	%eax, %ecx
	movzbl	sO+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sO+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sO+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sO+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L320
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sO+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sO+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sO+11(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sO+12(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L320
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sO+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sO+8(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sO+9(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sO+9(%rip)
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
	movl	%eax, %ecx
	movzbl	sO+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sO+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sO+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sO+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L322
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sO+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sO+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sO+11(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sO+12(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L322
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sO+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sO+8(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sO+9(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sO+9(%rip)
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
	movl	%eax, %ecx
	movzbl	sO+12(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sO+13(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sO+14(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sO+15(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L324
	movq	-56(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sO+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sO+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sO+11(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sO+12(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L324
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
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
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3P:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sP(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sP(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sP+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sP+1(%rip)
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
	movzbl	sP(%rip), %eax
	orl	$-1, %eax
	movb	%al, sP(%rip)
	movzbl	sP+1(%rip), %eax
	orl	$15, %eax
	movb	%al, sP+1(%rip)
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sP(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sP(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sP+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sP+1(%rip)
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
	movl	%eax, %ecx
	movzbl	sP+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sP+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sP+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sP+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L339
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sP+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sP+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sP+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sP+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L339
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sP(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sP(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sP+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sP+1(%rip)
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
	movl	%eax, %ecx
	movzbl	sP+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sP+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sP+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sP+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L341
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sP+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sP+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sP+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sP+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L341
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sP(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sP(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sP+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sP+1(%rip)
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
	movl	%eax, %ecx
	movzbl	sP+4(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	sP+5(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	sP+6(%rip), %eax
	salq	$13, %rax
	orq	%rax, %rdx
	movzbl	sP+7(%rip), %eax
	salq	$21, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L343
	movq	-64(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %ecx
	andl	$8388607, %ecx
	movzbl	sP+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sP+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sP+3(%rip), %eax
	salq	$12, %rax
	orq	%rax, %rdx
	movzbl	sP+4(%rip), %eax
	andl	$7, %eax
	salq	$20, %rax
	orq	%rdx, %rax
	cmpl	%eax, %ecx
	jne	L343
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
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
	.comm	sQ,10,1
retmeQ:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movzwl	24(%rbp), %edx
	movw	%dx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1Q:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movq	sQ(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -8(%rbp)
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
	leaq	-16(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-8(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeQ
	addq	$16, %rsp
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
	movq	%rax, -16(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -8(%rbp)
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
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3Q:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sQ(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sQ(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sQ+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sQ+1(%rip)
	call	retitQ
	leave
	ret
testQ:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$sQ, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L356
L357:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L356:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L357
	movzbl	sQ(%rip), %eax
	orl	$-1, %eax
	movb	%al, sQ(%rip)
	movzbl	sQ+1(%rip), %eax
	orl	$15, %eax
	movb	%al, sQ+1(%rip)
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sQ(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sQ(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sQ+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sQ+1(%rip)
	movq	sQ(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1Q
	movl	%eax, -40(%rbp)
	movzbl	-55(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	L358
	movzbl	-55(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L358
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L358
	movq	-54(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L358
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L359
L358:
	call	abort
L359:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sQ(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sQ(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sQ+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sQ+1(%rip)
	movq	sQ(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2Q
	movl	%eax, -40(%rbp)
	movzbl	-55(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	L360
	movzbl	-55(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L360
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L360
	movq	-54(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L360
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L361
L360:
	call	abort
L361:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sQ(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sQ(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sQ+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sQ+1(%rip)
	movq	sQ(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3Q
	movl	%eax, -40(%rbp)
	movzbl	-55(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	L362
	movzbl	-55(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L362
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-40(%rbp), %eax
	jne	L362
	movq	-54(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L362
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L355
L362:
	call	abort
L355:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sR,10,1
retmeR:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movzwl	24(%rbp), %edx
	movw	%dx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1R:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movq	sR(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -8(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	leaq	-16(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-8(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeR
	addq	$16, %rsp
	movzbl	-16(%rbp), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	leave
	ret
fn2R:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sR(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -8(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$3, %eax
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
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
retitR:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
fn3R:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, sR(%rip)
	call	retitR
	leave
	ret
testR:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$sR, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L375
L376:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L375:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L376
	movzbl	sR(%rip), %eax
	orl	$3, %eax
	movb	%al, sR(%rip)
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, sR(%rip)
	movq	sR(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1R
	movl	%eax, -40(%rbp)
	movzbl	-55(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sR+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	L377
	movzwl	-56(%rbp), %eax
	shrw	$2, %ax
	andw	$2047, %ax
	movzbl	sR(%rip), %edx
	shrb	$2, %dl
	movzbl	%dl, %edx
	movzbl	sR+1(%rip), %ecx
	andl	$31, %ecx
	salq	$6, %rcx
	orq	%rcx, %rdx
	cmpw	%dx, %ax
	jne	L377
	movzbl	-56(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	cmpb	%al, %dl
	jne	L377
	movq	-54(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L377
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L378
L377:
	call	abort
L378:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, sR(%rip)
	movq	sR(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2R
	movl	%eax, -40(%rbp)
	movzbl	-55(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sR+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	L379
	movzwl	-56(%rbp), %eax
	shrw	$2, %ax
	andw	$2047, %ax
	movzbl	sR(%rip), %edx
	shrb	$2, %dl
	movzbl	%dl, %edx
	movzbl	sR+1(%rip), %ecx
	andl	$31, %ecx
	salq	$6, %rcx
	orq	%rcx, %rdx
	cmpw	%dx, %ax
	jne	L379
	movzbl	-56(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	cmpb	%al, %dl
	jne	L379
	movq	-54(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L379
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L380
L379:
	call	abort
L380:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, sR(%rip)
	movq	sR(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3R
	movl	%eax, -40(%rbp)
	movzbl	-55(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sR+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	L381
	movzwl	-56(%rbp), %eax
	shrw	$2, %ax
	andw	$2047, %ax
	movzbl	sR(%rip), %edx
	shrb	$2, %dl
	movzbl	%dl, %edx
	movzbl	sR+1(%rip), %ecx
	andl	$31, %ecx
	salq	$6, %rcx
	orq	%rcx, %rdx
	cmpw	%dx, %ax
	jne	L381
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L381
	movq	-54(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L381
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L374
L381:
	call	abort
L374:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sS,10,1
retmeS:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movzwl	24(%rbp), %edx
	movw	%dx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1S:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movq	sS(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -8(%rbp)
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
	leaq	-16(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-8(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeS
	addq	$16, %rsp
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
	movq	%rax, -16(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -8(%rbp)
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
	subq	$48, %rsp
	movq	$sS, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L394
L395:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L394:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L395
	movzbl	sS(%rip), %eax
	orl	$1, %eax
	movb	%al, sS(%rip)
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1S
	movl	%eax, -40(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sS(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sS+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L396
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L396
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L396
	movq	-54(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L396
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L397
L396:
	call	abort
L397:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2S
	movl	%eax, -40(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sS(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sS+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L398
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L398
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L398
	movq	-54(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L398
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L399
L398:
	call	abort
L399:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3S
	movl	%eax, -40(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sS(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sS+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L400
	movzbl	-56(%rbp), %eax
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
	cmpl	-40(%rbp), %eax
	jne	L400
	movq	-54(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L400
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L393
L400:
	call	abort
L393:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sT,4,1
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
	movl	%eax, %ecx
	andb	$255, %ch
	movzbl	sT(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sT+1(%rip), %edx
	andl	$1, %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
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
	movl	%eax, %ecx
	andb	$255, %ch
	movzbl	sT(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sT+1(%rip), %edx
	andl	$1, %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
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
	movl	%eax, %ecx
	andb	$255, %ch
	movzbl	sT(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sT+1(%rip), %edx
	andl	$1, %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
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
	.comm	sU,10,1
retmeU:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movzwl	24(%rbp), %edx
	movw	%dx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1U:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movq	sU(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -8(%rbp)
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
	leaq	-16(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-8(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeU
	addq	$16, %rsp
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
	movq	%rax, -16(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -8(%rbp)
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
	subq	$48, %rsp
	movq	$sU, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L432
L433:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L432:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L433
	movzbl	sU(%rip), %eax
	orl	$64, %eax
	movb	%al, sU(%rip)
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn1U
	movl	%eax, -40(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sU(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sU+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L434
	movzbl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L434
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L434
	movq	-54(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L434
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L435
L434:
	call	abort
L435:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn2U
	movl	%eax, -40(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sU(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sU+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L436
	movzbl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L436
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L436
	movq	-54(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L436
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
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
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L437
L436:
	call	abort
L437:
	call	myrnd
	movl	%eax, -32(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	%rax, -56(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -48(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	fn3U
	movl	%eax, -40(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sU(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sU+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L438
	movzbl	-56(%rbp), %eax
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
	cmpl	-40(%rbp), %eax
	jne	L438
	movq	-54(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L438
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L431
L438:
	call	abort
L431:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.comm	sV,4,1
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
	.comm	sW,20,16
retmeW:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	32(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1W:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movq	sW(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	sW+16(%rip), %eax
	movl	%eax, -16(%rbp)
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
	leaq	-32(%rbp), %rdx
	subq	$24, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	-16(%rbp), %ecx
	movl	%ecx, 16(%rax)
	movq	%rdx, %rdi
	call	retmeW
	addq	$24, %rsp
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
	movl	sW+16(%rip), %eax
	movl	%eax, -16(%rbp)
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
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3W:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sW+16(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sW+16(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sW+17(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sW+17(%rip)
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
	cmpl	$19, %eax
	jbe	L471
	movabsq	$-6341068275337658368, %rax
	movl	$16385, %edx
	movq	%rax, sW(%rip)
	movl	%edx, sW+8(%rip)
	movzbl	sW+16(%rip), %eax
	orl	$-1, %eax
	movb	%al, sW+16(%rip)
	movzbl	sW+17(%rip), %eax
	orl	$15, %eax
	movb	%al, sW+17(%rip)
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sW+16(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sW+16(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sW+17(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sW+17(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sW+16(%rip), %eax
	movl	%eax, -64(%rbp)
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
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sW+17(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sW+18(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sW+19(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L472
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sW+16(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sW+16(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sW+17(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sW+17(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sW+16(%rip), %eax
	movl	%eax, -64(%rbp)
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
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sW+17(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sW+18(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sW+19(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L474
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sW+16(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sW+16(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sW+17(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sW+17(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sW+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sW+16(%rip), %eax
	movl	%eax, -64(%rbp)
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
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sW+17(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sW+18(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sW+19(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L476
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
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
	.comm	sX,20,16
retmeX:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	32(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1X:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movq	sX(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	sX+16(%rip), %eax
	movl	%eax, -16(%rbp)
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
	leaq	-32(%rbp), %rdx
	subq	$24, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	-16(%rbp), %ecx
	movl	%ecx, 16(%rax)
	movq	%rdx, %rdi
	call	retmeX
	addq	$24, %rsp
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
	movl	sX+16(%rip), %eax
	movl	%eax, -16(%rbp)
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
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3X:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sX(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sX(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sX+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sX+1(%rip)
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
	cmpl	$19, %eax
	jbe	L493
	movabsq	$-6341068275337658368, %rax
	movl	$16385, %edx
	movq	%rax, sX+4(%rip)
	movl	%edx, sX+12(%rip)
	movzbl	sX(%rip), %eax
	orl	$-1, %eax
	movb	%al, sX(%rip)
	movzbl	sX+1(%rip), %eax
	orl	$15, %eax
	movb	%al, sX+1(%rip)
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sX(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sX(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sX+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sX+1(%rip)
	movq	sX(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sX+16(%rip), %eax
	movl	%eax, -64(%rbp)
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
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sX+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sX+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sX+3(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L494
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L494
	fldt	-76(%rbp)
	fldt	sX+4(%rip)
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sX(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sX(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sX+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sX+1(%rip)
	movq	sX(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sX+16(%rip), %eax
	movl	%eax, -64(%rbp)
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
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sX+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sX+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sX+3(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L496
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L496
	fldt	-76(%rbp)
	fldt	sX+4(%rip)
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sX(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sX(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sX+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sX+1(%rip)
	movq	sX(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sX+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sX+16(%rip), %eax
	movl	%eax, -64(%rbp)
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
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sX+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sX+2(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sX+3(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L498
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L498
	fldt	-76(%rbp)
	fldt	sX+4(%rip)
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
	.comm	sY,20,16
retmeY:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	32(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1Y:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movq	sY(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	sY+16(%rip), %eax
	movl	%eax, -16(%rbp)
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
	leaq	-32(%rbp), %rdx
	subq	$24, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	-16(%rbp), %ecx
	movl	%ecx, 16(%rax)
	movq	%rdx, %rdi
	call	retmeY
	addq	$24, %rsp
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
	movl	sY+16(%rip), %eax
	movl	%eax, -16(%rbp)
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
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3Y:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sY(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sY(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sY+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sY+1(%rip)
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
	cmpl	$19, %eax
	jbe	L515
	movabsq	$-6341068275337658368, %rax
	movl	$16385, %edx
	movq	%rax, sY+4(%rip)
	movl	%edx, sY+12(%rip)
	movzbl	sY(%rip), %eax
	orl	$-1, %eax
	movb	%al, sY(%rip)
	movzbl	sY+1(%rip), %eax
	orl	$15, %eax
	movb	%al, sY+1(%rip)
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sY(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sY(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sY+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sY+1(%rip)
	movq	sY(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sY+16(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1Y
	movl	%eax, -48(%rbp)
	movzwl	-78(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sY+2(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sY+3(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L516
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sY+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sY+2(%rip), %edx
	andl	$127, %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L516
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L516
	fldt	-76(%rbp)
	fldt	sY+4(%rip)
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sY(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sY(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sY+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sY+1(%rip)
	movq	sY(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sY+16(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2Y
	movl	%eax, -48(%rbp)
	movzwl	-78(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sY+2(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sY+3(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L518
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sY+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sY+2(%rip), %edx
	andl	$127, %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L518
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L518
	fldt	-76(%rbp)
	fldt	sY+4(%rip)
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
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sY(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sY(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sY+1(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sY+1(%rip)
	movq	sY(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sY+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sY+16(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3Y
	movl	%eax, -48(%rbp)
	movzwl	-78(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sY+2(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sY+3(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L520
	movl	-80(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %ecx
	andw	$2047, %cx
	movzbl	sY+1(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sY+2(%rip), %edx
	andl	$127, %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L520
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L520
	fldt	-76(%rbp)
	fldt	sY+4(%rip)
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
	.comm	sZ,20,16
retmeZ:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	32(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
fn1Z:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movq	sZ(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	sZ+16(%rip), %eax
	movl	%eax, -16(%rbp)
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
	leaq	-32(%rbp), %rdx
	subq	$24, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	-16(%rbp), %ecx
	movl	%ecx, 16(%rax)
	movq	%rdx, %rdi
	call	retmeZ
	addq	$24, %rsp
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
	movl	sZ+16(%rip), %eax
	movl	%eax, -16(%rbp)
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
	movzbl	sZ+18(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
fn3Z:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sZ+18(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	andl	$15, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	sZ+18(%rip), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, sZ+18(%rip)
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sZ+19(%rip)
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
	cmpl	$19, %eax
	jbe	L537
	movabsq	$-6341068275337658368, %rax
	movl	$16385, %edx
	movq	%rax, sZ(%rip)
	movl	%edx, sZ+8(%rip)
	movzbl	sZ+18(%rip), %eax
	orl	$-16, %eax
	movb	%al, sZ+18(%rip)
	movzbl	sZ+19(%rip), %eax
	orl	$-1, %eax
	movb	%al, sZ+19(%rip)
	movzbl	sZ+18(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	andl	$15, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	sZ+18(%rip), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, sZ+18(%rip)
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sZ+19(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sZ+16(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn1Z
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	movzbl	sZ+17(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sZ+18(%rip), %edx
	andl	$15, %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	L538
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+16(%rip), %eax
	movzbl	sZ+17(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L538
	movzwl	-62(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %ecx
	movzbl	sZ+18(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movzwl	%ax, %edx
	andl	$15, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	sZ+18(%rip), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, sZ+18(%rip)
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sZ+19(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sZ+16(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn2Z
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	movzbl	sZ+17(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sZ+18(%rip), %edx
	andl	$15, %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	L540
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+16(%rip), %eax
	movzbl	sZ+17(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L540
	movzwl	-62(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %ecx
	movzbl	sZ+18(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
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
	movzwl	%ax, %edx
	andl	$15, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	sZ+18(%rip), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, sZ+18(%rip)
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sZ+19(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	sZ+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	sZ+16(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	fn3Z
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	movzbl	sZ+17(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sZ+18(%rip), %edx
	andl	$15, %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	L542
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+16(%rip), %eax
	movzbl	sZ+17(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L542
	movzbl	sZ+18(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
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
