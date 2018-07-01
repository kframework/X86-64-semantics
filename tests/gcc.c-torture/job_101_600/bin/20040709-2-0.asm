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
myrnd:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	s.2261(%rip), %eax
	imull	$1103515245, %eax, %eax
	movl	%eax, s.2261(%rip)
	movl	s.2261(%rip), %eax
	addl	$12345, %eax
	movl	%eax, s.2261(%rip)
	movl	s.2261(%rip), %eax
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
	jmp	L22
L23:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L22:
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	jbe	L23
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
	jne	L24
	movzbl	-64(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	L24
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
	jne	L24
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L24
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L25
L24:
	call	abort
L25:
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
	jne	L26
	movzbl	-64(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	L26
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
	jne	L26
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L26
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
	je	L27
L26:
	call	abort
L27:
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
	jne	L28
	movzbl	-64(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	L28
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L28
	movzbl	-64(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L28
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L21
L28:
	call	abort
L21:
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
	jmp	L41
L42:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L41:
	movl	-12(%rbp), %eax
	cmpl	$5, %eax
	jbe	L42
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
	jne	L43
	movzbl	-56(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L43
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
	jne	L43
	movl	-54(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	L43
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L44
L43:
	call	abort
L44:
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
	jne	L45
	movzbl	-56(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L45
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
	jne	L45
	movl	-54(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	L45
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
	je	L46
L45:
	call	abort
L46:
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
	jne	L47
	movzbl	-56(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L47
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-40(%rbp), %eax
	jne	L47
	movl	-54(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	L47
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L40
L47:
	call	abort
L40:
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
	jmp	L60
L61:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L60:
	movl	-12(%rbp), %eax
	cmpl	$5, %eax
	jbe	L61
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
	jne	L62
	movzbl	-52(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L62
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
	jne	L62
	movl	-56(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L62
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L63
L62:
	call	abort
L63:
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
	jne	L64
	movzbl	-52(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L64
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
	jne	L64
	movl	-56(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L64
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
	je	L65
L64:
	call	abort
L65:
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
	jne	L66
	movzbl	-52(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L66
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-40(%rbp), %eax
	jne	L66
	movl	-56(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	L66
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L59
L66:
	call	abort
L59:
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
	jmp	L79
L80:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L79:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L80
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
	jne	L81
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
	jne	L81
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
	jne	L81
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L81
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L82
L81:
	call	abort
L82:
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
	jne	L83
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
	jne	L83
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
	jne	L83
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L83
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
	je	L84
L83:
	call	abort
L84:
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
	jne	L85
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
	jne	L85
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
	jne	L85
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L85
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L78
L85:
	call	abort
L78:
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
	jmp	L98
L99:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L98:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L99
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
	jne	L100
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
	jne	L100
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
	jne	L100
	movq	-64(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	L100
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L101
L100:
	call	abort
L101:
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
	jne	L102
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
	jne	L102
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
	jne	L102
	movq	-64(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	L102
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
	je	L103
L102:
	call	abort
L103:
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
	jne	L104
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
	jne	L104
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
	jne	L104
	movq	-64(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	L104
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L97
L104:
	call	abort
L97:
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
	jmp	L117
L118:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L117:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L118
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
	jne	L119
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
	jne	L119
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
	jne	L119
	movq	-56(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L119
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L120
L119:
	call	abort
L120:
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
	jne	L121
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
	jne	L121
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
	jne	L121
	movq	-56(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L121
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
	je	L122
L121:
	call	abort
L122:
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
	jne	L123
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
	jne	L123
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
	jne	L123
	movq	-56(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L123
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L116
L123:
	call	abort
L116:
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
	jmp	L136
L137:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L136:
	movl	-12(%rbp), %eax
	cmpl	$8, %eax
	jbe	L137
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
	jne	L138
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L138
	movzbl	-56(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	cmpb	%al, %dl
	jne	L138
	movq	-55(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L138
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L139
L138:
	call	abort
L139:
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
	jne	L140
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L140
	movzbl	-56(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	cmpb	%al, %dl
	jne	L140
	movq	-55(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L140
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
	je	L141
L140:
	call	abort
L141:
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
	jne	L142
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L142
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L142
	movq	-55(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L142
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L135
L142:
	call	abort
L135:
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
	jmp	L155
L156:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L155:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L156
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
	jne	L157
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	L157
	movzbl	-55(%rbp), %edx
	movzbl	sH+1(%rip), %eax
	cmpb	%al, %dl
	jne	L157
	movq	-54(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L157
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L158
L157:
	call	abort
L158:
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
	jne	L159
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	L159
	movzbl	-55(%rbp), %edx
	movzbl	sH+1(%rip), %eax
	cmpb	%al, %dl
	jne	L159
	movq	-54(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L159
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
	je	L160
L159:
	call	abort
L160:
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
	jne	L161
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	L161
	movzbl	sH+1(%rip), %eax
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L161
	movq	-54(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L161
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L154
L161:
	call	abort
L154:
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
	jmp	L174
L175:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L174:
	movl	-12(%rbp), %eax
	cmpl	$8, %eax
	jbe	L175
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
	jne	L176
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L176
	movzbl	-56(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	cmpb	%al, %dl
	jne	L176
	movq	-55(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L176
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L177
L176:
	call	abort
L177:
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
	jne	L178
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L178
	movzbl	-56(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	cmpb	%al, %dl
	jne	L178
	movq	-55(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L178
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
	je	L179
L178:
	call	abort
L179:
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
	jne	L180
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L180
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L180
	movq	-55(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	L180
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L173
L180:
	call	abort
L173:
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
	jmp	L193
L194:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L193:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L194
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
	jne	L195
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
	jne	L195
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L195
	movzwl	-62(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L195
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L196
L195:
	call	abort
L196:
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
	jne	L197
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
	jne	L197
	movzbl	-63(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	L197
	movzwl	-62(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L197
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
	je	L198
L197:
	call	abort
L198:
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
	jne	L199
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
	jne	L199
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L199
	movzwl	-62(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L199
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L192
L199:
	call	abort
L192:
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
	jmp	L212
L213:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L212:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L213
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
	jne	L214
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
	jne	L214
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L214
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L214
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L215
L214:
	call	abort
L215:
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
	jne	L216
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
	jne	L216
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L216
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L216
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
	je	L217
L216:
	call	abort
L217:
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
	jne	L218
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
	jne	L218
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L218
	movzbl	-64(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L218
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L211
L218:
	call	abort
L211:
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
	jmp	L231
L232:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L231:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L232
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
	jne	L233
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
	jne	L233
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L233
	movl	-60(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L233
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L234
L233:
	call	abort
L234:
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
	jne	L235
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
	jne	L235
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L235
	movl	-60(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L235
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
	je	L236
L235:
	call	abort
L236:
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
	jne	L237
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
	jne	L237
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L237
	movl	-60(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	L237
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L230
L237:
	call	abort
L230:
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
	jmp	L250
L251:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L250:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L251
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
	jne	L252
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
	jne	L252
	movzbl	-60(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L252
	movl	-64(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	L252
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L253
L252:
	call	abort
L253:
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
	jne	L254
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
	jne	L254
	movzbl	-60(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L254
	movl	-64(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	L254
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
	je	L255
L254:
	call	abort
L255:
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
	jne	L256
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
	jne	L256
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L256
	movl	-64(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	L256
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L249
L256:
	call	abort
L249:
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
	jmp	L269
L270:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L269:
	movl	-20(%rbp), %eax
	cmpl	$7, %eax
	jbe	L270
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
	jne	L271
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
	jne	L271
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
	jne	L271
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L271
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L272
L271:
	call	abort
L272:
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
	jne	L273
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
	jne	L273
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
	jne	L273
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L273
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
	je	L274
L273:
	call	abort
L274:
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
	jne	L275
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
	jne	L275
	movzbl	sN(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sN+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L275
	movzbl	-64(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L275
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L268
L275:
	call	abort
L268:
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
	jmp	L288
L289:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L288:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L289
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
	jne	L290
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
	jne	L290
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L290
	movq	-64(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	L290
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L291
L290:
	call	abort
L291:
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
	jne	L292
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
	jne	L292
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L292
	movq	-64(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	L292
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
	je	L293
L292:
	call	abort
L293:
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
	jne	L294
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
	jne	L294
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L294
	movq	-64(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	L294
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L287
L294:
	call	abort
L287:
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
	jmp	L307
L308:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L307:
	movl	-20(%rbp), %eax
	cmpl	$15, %eax
	jbe	L308
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
	jne	L309
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
	jne	L309
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L309
	movq	-56(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L309
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L310
L309:
	call	abort
L310:
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
	jne	L311
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
	jne	L311
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L311
	movq	-56(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L311
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
	je	L312
L311:
	call	abort
L312:
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
	jne	L313
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
	jne	L313
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L313
	movq	-56(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	L313
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L306
L313:
	call	abort
L306:
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
	jmp	L326
L327:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L326:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L327
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
	jne	L328
	movzbl	-55(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L328
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L328
	movq	-54(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L328
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L329
L328:
	call	abort
L329:
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
	jne	L330
	movzbl	-55(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L330
	movzwl	-56(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L330
	movq	-54(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L330
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
	je	L331
L330:
	call	abort
L331:
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
	jne	L332
	movzbl	-55(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L332
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-40(%rbp), %eax
	jne	L332
	movq	-54(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L332
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L325
L332:
	call	abort
L325:
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
	jmp	L345
L346:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L345:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L346
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
	jne	L347
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
	jne	L347
	movzbl	-56(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	cmpb	%al, %dl
	jne	L347
	movq	-54(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L347
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L348
L347:
	call	abort
L348:
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
	jne	L349
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
	jne	L349
	movzbl	-56(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	cmpb	%al, %dl
	jne	L349
	movq	-54(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L349
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
	je	L350
L349:
	call	abort
L350:
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
	jne	L351
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
	jne	L351
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L351
	movq	-54(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L351
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L344
L351:
	call	abort
L344:
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
	jmp	L364
L365:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L364:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L365
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
	jne	L366
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L366
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L366
	movq	-54(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L366
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L367
L366:
	call	abort
L367:
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
	jne	L368
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L368
	movzbl	-56(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L368
	movq	-54(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L368
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
	je	L369
L368:
	call	abort
L369:
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
	jne	L370
	movzbl	-56(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L370
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L370
	movq	-54(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L370
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L363
L370:
	call	abort
L363:
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
	jmp	L383
L384:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L383:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L384
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
	jne	L385
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
	jne	L385
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L385
	movzwl	-62(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L385
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L386
L385:
	call	abort
L386:
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
	jne	L387
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
	jne	L387
	movzbl	-64(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L387
	movzwl	-62(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L387
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
	je	L388
L387:
	call	abort
L388:
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
	jne	L389
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
	jne	L389
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L389
	movzwl	-62(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L389
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L382
L389:
	call	abort
L382:
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
	jmp	L402
L403:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -12(%rbp)
L402:
	movl	-12(%rbp), %eax
	cmpl	$9, %eax
	jbe	L403
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
	jne	L404
	movzbl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L404
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L404
	movq	-54(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L404
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L405
L404:
	call	abort
L405:
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
	jne	L406
	movzbl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L406
	movzbl	-56(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L406
	movq	-54(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L406
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
	je	L407
L406:
	call	abort
L407:
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
	jne	L408
	movzbl	-56(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	L408
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-40(%rbp), %eax
	jne	L408
	movq	-54(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	L408
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	L401
L408:
	call	abort
L401:
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
	jmp	L421
L422:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L421:
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jbe	L422
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
	jne	L423
	movzbl	-64(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	L423
	movzbl	-63(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L423
	movzwl	-62(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L423
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L424
L423:
	call	abort
L424:
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
	jne	L425
	movzbl	-64(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	L425
	movzbl	-63(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	L425
	movzwl	-62(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L425
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
	je	L426
L425:
	call	abort
L426:
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
	jne	L427
	movzbl	-64(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	L427
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-48(%rbp), %eax
	jne	L427
	movzwl	-62(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	L427
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L420
L427:
	call	abort
L420:
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
	jmp	L440
L441:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L440:
	movl	-20(%rbp), %eax
	cmpl	$19, %eax
	jbe	L441
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
	jne	L442
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
	jne	L442
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L442
	fldt	-80(%rbp)
	fldt	sW(%rip)
	fucomi	%st(1), %st
	jp	L448
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L442
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L443
	jmp	L442
L448:
	fstp	%st(0)
	fstp	%st(0)
L442:
	call	abort
L443:
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
	jne	L444
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
	jne	L444
	movzwl	-64(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L444
	fldt	-80(%rbp)
	fldt	sW(%rip)
	fucomi	%st(1), %st
	jp	L449
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L444
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
	je	L445
	jmp	L444
L449:
	fstp	%st(0)
	fstp	%st(0)
L444:
	call	abort
L445:
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
	jne	L446
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
	jne	L446
	movzbl	sW+16(%rip), %eax
	movzbl	sW+17(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L446
	fldt	-80(%rbp)
	fldt	sW(%rip)
	fucomi	%st(1), %st
	jp	L450
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L446
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L439
	jmp	L446
L450:
	fstp	%st(0)
	fstp	%st(0)
L446:
	call	abort
L439:
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
	jmp	L462
L463:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L462:
	movl	-20(%rbp), %eax
	cmpl	$19, %eax
	jbe	L463
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
	jne	L464
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
	jne	L464
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L464
	fldt	-76(%rbp)
	fldt	sX+4(%rip)
	fucomi	%st(1), %st
	jp	L470
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L464
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L465
	jmp	L464
L470:
	fstp	%st(0)
	fstp	%st(0)
L464:
	call	abort
L465:
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
	jne	L466
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
	jne	L466
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L466
	fldt	-76(%rbp)
	fldt	sX+4(%rip)
	fucomi	%st(1), %st
	jp	L471
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L466
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
	je	L467
	jmp	L466
L471:
	fstp	%st(0)
	fstp	%st(0)
L466:
	call	abort
L467:
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
	jne	L468
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
	jne	L468
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L468
	fldt	-76(%rbp)
	fldt	sX+4(%rip)
	fucomi	%st(1), %st
	jp	L472
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L468
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L461
	jmp	L468
L472:
	fstp	%st(0)
	fstp	%st(0)
L468:
	call	abort
L461:
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
	jmp	L484
L485:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L484:
	movl	-20(%rbp), %eax
	cmpl	$19, %eax
	jbe	L485
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
	jne	L486
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
	jne	L486
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L486
	fldt	-76(%rbp)
	fldt	sY+4(%rip)
	fucomi	%st(1), %st
	jp	L492
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L486
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L487
	jmp	L486
L492:
	fstp	%st(0)
	fstp	%st(0)
L486:
	call	abort
L487:
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
	jne	L488
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
	jne	L488
	movzwl	-80(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L488
	fldt	-76(%rbp)
	fldt	sY+4(%rip)
	fucomi	%st(1), %st
	jp	L493
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L488
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
	je	L489
	jmp	L488
L493:
	fstp	%st(0)
	fstp	%st(0)
L488:
	call	abort
L489:
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
	jne	L490
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
	jne	L490
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L490
	fldt	-76(%rbp)
	fldt	sY+4(%rip)
	fucomi	%st(1), %st
	jp	L494
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L490
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L483
	jmp	L490
L494:
	fstp	%st(0)
	fstp	%st(0)
L490:
	call	abort
L483:
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
	jmp	L506
L507:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
L506:
	movl	-20(%rbp), %eax
	cmpl	$19, %eax
	jbe	L507
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
	jne	L508
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+16(%rip), %eax
	movzbl	sZ+17(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L508
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
	jne	L508
	fldt	-80(%rbp)
	fldt	sZ(%rip)
	fucomi	%st(1), %st
	jp	L514
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L508
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L509
	jmp	L508
L514:
	fstp	%st(0)
	fstp	%st(0)
L508:
	call	abort
L509:
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
	jne	L510
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+16(%rip), %eax
	movzbl	sZ+17(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L510
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
	jne	L510
	fldt	-80(%rbp)
	fldt	sZ(%rip)
	fucomi	%st(1), %st
	jp	L515
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L510
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
	je	L511
	jmp	L510
L515:
	fstp	%st(0)
	fstp	%st(0)
L510:
	call	abort
L511:
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
	jne	L512
	movzwl	-64(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+16(%rip), %eax
	movzbl	sZ+17(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	L512
	movzbl	sZ+18(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+19(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-48(%rbp), %eax
	jne	L512
	fldt	-80(%rbp)
	fldt	sZ(%rip)
	fucomi	%st(1), %st
	jp	L516
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L512
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	andl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	L505
	jmp	L512
L516:
	fstp	%st(0)
	fstp	%st(0)
L512:
	call	abort
L505:
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
s.2261:
	.long	1388815473
