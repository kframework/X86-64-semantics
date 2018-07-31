	.file	"20040709-3.c"
	.text
	.globl	strchr
	.type	strchr, @function
strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	cmpb	%dl, %al
	je	.L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L1
.L3:
	movq	-8(%rbp), %rax
	jmp	.L1
.L6:
.L1:
	popq	%rbp
	ret
	.size	strchr, .-strchr
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L12:
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
	jne	.L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L17
.L16:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	ret
	.size	memcmp, .-memcmp
	.globl	exit
	.type	exit, @function
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
#APP
# 41 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	exit, .-exit
	.globl	abort
	.type	abort, @function
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 46 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	abort, .-abort
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L26
.L27:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	malloc
	.type	malloc, @function
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	malloc, .-malloc
	.globl	calloc
	.type	calloc, @function
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	calloc, .-calloc
	.globl	free
	.type	free, @function
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
	.size	free, .-free
	.globl	isprint
	.type	isprint, @function
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	.L35
	cmpl	$122, -4(%rbp)
	jg	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	cmpl	$64, -4(%rbp)
	jle	.L37
	cmpl	$90, -4(%rbp)
	jg	.L37
	movl	$1, %eax
	jmp	.L36
.L37:
	cmpl	$47, -4(%rbp)
	jle	.L38
	cmpl	$57, -4(%rbp)
	jg	.L38
	movl	$1, %eax
	jmp	.L36
.L38:
	movl	$0, %eax
.L36:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.globl	myrnd
	.type	myrnd, @function
myrnd:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	s.2317(%rip), %eax
	imull	$1103515245, %eax, %eax
	movl	%eax, s.2317(%rip)
	movl	s.2317(%rip), %eax
	addl	$12345, %eax
	movl	%eax, s.2317(%rip)
	movl	s.2317(%rip), %eax
	shrl	$16, %eax
	andl	$2047, %eax
	popq	%rbp
	ret
	.size	myrnd, .-myrnd
	.comm	sA,2,1
	.globl	retmeA
	.type	retmeA, @function
retmeA:
	pushq	%rbp
	movq	%rsp, %rbp
	movw	%di, -16(%rbp)
	movzwl	-16(%rbp), %eax
	popq	%rbp
	ret
	.size	retmeA, .-retmeA
	.globl	fn1A
	.type	fn1A, @function
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
	.size	fn1A, .-fn1A
	.globl	fn2A
	.type	fn2A, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2A, .-fn2A
	.globl	retitA
	.type	retitA, @function
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
	.size	retitA, .-retitA
	.globl	fn3A
	.type	fn3A, @function
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
	.size	fn3A, .-fn3A
	.globl	testA
	.type	testA, @function
testA:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	$sA, -24(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L52
.L53:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L52:
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	jbe	.L53
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
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
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
	movw	%ax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn1A
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L54
	movzbl	-48(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	.L54
	movzwl	-48(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L54
	movzbl	-48(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L54
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L55
.L54:
	call	abort
.L55:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
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
	movw	%ax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn2A
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L56
	movzbl	-48(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	.L56
	movzwl	-48(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L56
	movzbl	-48(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L56
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L57
.L56:
	call	abort
.L57:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
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
	movw	%ax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn3A
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L58
	movzbl	-48(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	sA(%rip), %eax
	shrb	$2, %al
	andl	$7, %eax
	cmpb	%al, %dl
	jne	.L58
	movzbl	sA(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sA+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-28(%rbp), %eax
	jne	.L58
	movzbl	-48(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L58
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L51
.L58:
	call	abort
.L51:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testA, .-testA
	.comm	sB,6,1
	.globl	retmeB
	.type	retmeB, @function
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
	.size	retmeB, .-retmeB
	.globl	fn1B
	.type	fn1B, @function
fn1B:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
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
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L64
	call	__stack_chk_fail
.L64:
	leave
	ret
	.size	fn1B, .-fn1B
	.globl	fn2B
	.type	fn2B, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2B, .-fn2B
	.globl	retitB
	.type	retitB, @function
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
	.size	retitB, .-retitB
	.globl	fn3B
	.type	fn3B, @function
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
	.size	fn3B, .-fn3B
	.globl	testB
	.type	testB, @function
testB:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sB, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L72
.L73:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L72:
	movl	-52(%rbp), %eax
	cmpl	$5, %eax
	jbe	.L73
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
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movl	%eax, -32(%rbp)
	movzwl	sB+4(%rip), %eax
	movw	%ax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1B
	movl	%eax, -36(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	.L74
	movzbl	-32(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L74
	movzwl	-32(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L74
	movl	-30(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	.L74
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L75
.L74:
	call	abort
.L75:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movl	%eax, -32(%rbp)
	movzwl	sB+4(%rip), %eax
	movw	%ax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2B
	movl	%eax, -36(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	.L76
	movzbl	-32(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L76
	movzwl	-32(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L76
	movl	-30(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	.L76
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L77
.L76:
	call	abort
.L77:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movl	%eax, -32(%rbp)
	movzwl	sB+4(%rip), %eax
	movw	%ax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3B
	movl	%eax, -36(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	.L78
	movzbl	-32(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sB(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L78
	movzbl	sB(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sB+1(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-36(%rbp), %eax
	jne	.L78
	movl	-30(%rbp), %edx
	movl	sB+2(%rip), %eax
	cmpl	%eax, %edx
	jne	.L78
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L71
.L78:
	call	abort
.L71:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testB, .-testB
	.comm	sC,6,1
	.globl	retmeC
	.type	retmeC, @function
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
	.size	retmeC, .-retmeC
	.globl	fn1C
	.type	fn1C, @function
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
	.size	fn1C, .-fn1C
	.globl	fn2C
	.type	fn2C, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2C, .-fn2C
	.globl	retitC
	.type	retitC, @function
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
	.size	retitC, .-retitC
	.globl	fn3C
	.type	fn3C, @function
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
	.size	fn3C, .-fn3C
	.globl	testC
	.type	testC, @function
testC:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	$sC, -16(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L91
.L92:
	movq	-16(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -16(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L91:
	movl	-44(%rbp), %eax
	cmpl	$5, %eax
	jbe	.L92
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
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
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
	movl	%eax, -24(%rbp)
	movzwl	sC+4(%rip), %eax
	movw	%ax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn1C
	movl	%eax, -28(%rbp)
	movzbl	-20(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	.L93
	movzbl	-20(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L93
	movzwl	-20(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L93
	movl	-24(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	.L93
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L94
.L93:
	call	abort
.L94:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
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
	movl	%eax, -24(%rbp)
	movzwl	sC+4(%rip), %eax
	movw	%ax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn2C
	movl	%eax, -28(%rbp)
	movzbl	-20(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	.L95
	movzbl	-20(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L95
	movzwl	-20(%rbp), %eax
	shrw	$5, %ax
	movl	%eax, %ecx
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L95
	movl	-24(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	.L95
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L96
.L95:
	call	abort
.L96:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
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
	movl	%eax, -24(%rbp)
	movzwl	sC+4(%rip), %eax
	movw	%ax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn3C
	movl	%eax, -28(%rbp)
	movzbl	-20(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$15, %eax
	cmpb	%al, %dl
	jne	.L97
	movzbl	-20(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sC+4(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L97
	movzbl	sC+4(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sC+5(%rip), %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-28(%rbp), %eax
	jne	.L97
	movl	-24(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	.L97
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L90
.L97:
	call	abort
.L90:
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testC, .-testC
	.comm	sD,8,1
	.globl	retmeD
	.type	retmeD, @function
retmeD:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
	.size	retmeD, .-retmeD
	.globl	fn1D
	.type	fn1D, @function
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
	.size	fn1D, .-fn1D
	.globl	fn2D
	.type	fn2D, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2D, .-fn2D
	.globl	retitD
	.type	retitD, @function
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
	.size	retitD, .-retitD
	.globl	fn3D
	.type	fn3D, @function
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
	.size	fn3D, .-fn3D
	.globl	testD
	.type	testD, @function
testD:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sD, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L110
.L111:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L110:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L111
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
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1D
	movl	%eax, -36(%rbp)
	movzwl	-32(%rbp), %eax
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
	jne	.L112
	movq	-32(%rbp), %rax
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
	jne	.L112
	movl	-28(%rbp), %eax
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
	jne	.L112
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L112
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L113
.L112:
	call	abort
.L113:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2D
	movl	%eax, -36(%rbp)
	movzwl	-32(%rbp), %eax
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
	jne	.L114
	movq	-32(%rbp), %rax
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
	jne	.L114
	movl	-28(%rbp), %eax
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
	jne	.L114
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L114
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L115
.L114:
	call	abort
.L115:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3D
	movl	%eax, -36(%rbp)
	movzwl	-32(%rbp), %eax
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
	jne	.L116
	movq	-32(%rbp), %rax
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
	jne	.L116
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
	cmpl	-36(%rbp), %eax
	jne	.L116
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L116
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L109
.L116:
	call	abort
.L109:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testD, .-testD
	.comm	sE,16,16
	.globl	retmeE
	.type	retmeE, @function
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
	.size	retmeE, .-retmeE
	.globl	fn1E
	.type	fn1E, @function
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
	.size	fn1E, .-fn1E
	.globl	fn2E
	.type	fn2E, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2E, .-fn2E
	.globl	retitE
	.type	retitE, @function
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
	.size	retitE, .-retitE
	.globl	fn3E
	.type	fn3E, @function
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
	.size	fn3E, .-fn3E
	.globl	testE
	.type	testE, @function
testE:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sE, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L129
.L130:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L129:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L130
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
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1E
	movl	%eax, -44(%rbp)
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sE+8(%rip), %eax
	movzbl	sE+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L131
	movq	-24(%rbp), %rax
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
	jne	.L131
	movl	-20(%rbp), %eax
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
	jne	.L131
	movq	-32(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L131
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L132
.L131:
	call	abort
.L132:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2E
	movl	%eax, -44(%rbp)
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sE+8(%rip), %eax
	movzbl	sE+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L133
	movq	-24(%rbp), %rax
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
	jne	.L133
	movl	-20(%rbp), %eax
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
	jne	.L133
	movq	-32(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L133
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L134
.L133:
	call	abort
.L134:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3E
	movl	%eax, -44(%rbp)
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sE+8(%rip), %eax
	movzbl	sE+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L135
	movq	-24(%rbp), %rax
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
	jne	.L135
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
	cmpl	-44(%rbp), %eax
	jne	.L135
	movq	-32(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L135
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L128
.L135:
	call	abort
.L128:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testE, .-testE
	.comm	sF,16,16
	.globl	retmeF
	.type	retmeF, @function
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
	.size	retmeF, .-retmeF
	.globl	fn1F
	.type	fn1F, @function
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
	.size	fn1F, .-fn1F
	.globl	fn2F
	.type	fn2F, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2F, .-fn2F
	.globl	retitF
	.type	retitF, @function
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
	.size	retitF, .-retitF
	.globl	fn3F
	.type	fn3F, @function
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
	.size	fn3F, .-fn3F
	.globl	testF
	.type	testF, @function
testF:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sF, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L148
.L149:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L148:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L149
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
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1F
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sF(%rip), %eax
	movzbl	sF+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L150
	movq	-32(%rbp), %rax
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
	jne	.L150
	movl	-28(%rbp), %eax
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
	jne	.L150
	movq	-24(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L150
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L151
.L150:
	call	abort
.L151:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2F
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sF(%rip), %eax
	movzbl	sF+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L152
	movq	-32(%rbp), %rax
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
	jne	.L152
	movl	-28(%rbp), %eax
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
	jne	.L152
	movq	-24(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L152
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L153
.L152:
	call	abort
.L153:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3F
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sF(%rip), %eax
	movzbl	sF+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L154
	movq	-32(%rbp), %rax
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
	jne	.L154
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
	cmpl	-44(%rbp), %eax
	jne	.L154
	movq	-24(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L154
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L147
.L154:
	call	abort
.L147:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testF, .-testF
	.comm	sG,9,1
	.globl	retmeG
	.type	retmeG, @function
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
	.size	retmeG, .-retmeG
	.globl	fn1G
	.type	fn1G, @function
fn1G:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sG(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -24(%rbp)
	movzbl	-32(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	-32(%rbp), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	leaq	-32(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movzbl	-24(%rbp), %ecx
	movb	%cl, 8(%rax)
	movq	%rdx, %rdi
	call	retmeG
	addq	$16, %rsp
	movzbl	-32(%rbp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L160
	call	__stack_chk_fail
.L160:
	leave
	ret
	.size	fn1G, .-fn1G
	.globl	fn2G
	.type	fn2G, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2G, .-fn2G
	.globl	retitG
	.type	retitG, @function
retitG:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitG, .-retitG
	.globl	fn3G
	.type	fn3G, @function
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
	.size	fn3G, .-fn3G
	.globl	testG
	.type	testG, @function
testG:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sG, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L168
.L169:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L168:
	movl	-60(%rbp), %eax
	cmpl	$8, %eax
	jbe	.L169
	movzbl	sG(%rip), %eax
	orl	$-4, %eax
	movb	%al, sG(%rip)
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	sG(%rip), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, sG(%rip)
	movq	sG(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1G
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L170
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L170
	movzbl	-32(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	cmpb	%al, %dl
	jne	.L170
	movq	-31(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L170
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L171
.L170:
	call	abort
.L171:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	sG(%rip), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, sG(%rip)
	movq	sG(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2G
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L172
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L172
	movzbl	-32(%rbp), %eax
	shrb	$2, %al
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	cmpb	%al, %dl
	jne	.L172
	movq	-31(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L172
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L173
.L172:
	call	abort
.L173:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$63, %eax
	leal	0(,%rax,4), %edx
	movzbl	sG(%rip), %eax
	andl	$3, %eax
	orl	%edx, %eax
	movb	%al, sG(%rip)
	movq	sG(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	sG+8(%rip), %eax
	movb	%al, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3G
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sG(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L174
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sG(%rip), %eax
	shrb	%al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L174
	movzbl	sG(%rip), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L174
	movq	-31(%rbp), %rdx
	movq	sG+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L174
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L167
.L174:
	call	abort
.L167:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testG, .-testG
	.comm	sH,10,1
	.globl	retmeH
	.type	retmeH, @function
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
	.size	retmeH, .-retmeH
	.globl	fn1H
	.type	fn1H, @function
fn1H:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sH(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movzbl	-31(%rbp), %eax
	movl	-36(%rbp), %edx
	addl	%edx, %eax
	movb	%al, -31(%rbp)
	leaq	-32(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-24(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeH
	addq	$16, %rsp
	movzbl	-31(%rbp), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L180
	call	__stack_chk_fail
.L180:
	leave
	ret
	.size	fn1H, .-fn1H
	.globl	fn2H
	.type	fn2H, @function
fn2H:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sH(%rip), %rax
	movq	%rax, -16(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -8(%rbp)
	movzbl	-15(%rbp), %eax
	movl	-20(%rbp), %edx
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
	shrb	$3, %al
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movb	%al, -15(%rbp)
	movzbl	-15(%rbp), %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	fn2H, .-fn2H
	.globl	retitH
	.type	retitH, @function
retitH:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sH+1(%rip), %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitH, .-retitH
	.globl	fn3H
	.type	fn3H, @function
fn3H:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sH+1(%rip), %eax
	movl	-4(%rbp), %edx
	addl	%edx, %eax
	movb	%al, sH+1(%rip)
	call	retitH
	leave
	ret
	.size	fn3H, .-fn3H
	.globl	testH
	.type	testH, @function
testH:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sH, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L188
.L189:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L188:
	movl	-60(%rbp), %eax
	cmpl	$9, %eax
	jbe	.L189
	movb	$-1, sH+1(%rip)
	movzbl	sH+1(%rip), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	movb	%al, sH+1(%rip)
	movq	sH(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1H
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L190
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	.L190
	movzbl	-31(%rbp), %edx
	movzbl	sH+1(%rip), %eax
	cmpb	%al, %dl
	jne	.L190
	movq	-30(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L190
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L191
.L190:
	call	abort
.L191:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	movb	%al, sH+1(%rip)
	movq	sH(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2H
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L192
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	.L192
	movzbl	-31(%rbp), %edx
	movzbl	sH+1(%rip), %eax
	cmpb	%al, %dl
	jne	.L192
	movq	-30(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L192
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L193
.L192:
	call	abort
.L193:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	movb	%al, sH+1(%rip)
	movq	sH(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sH+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3H
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L194
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movzbl	sH(%rip), %eax
	shrb	$6, %al
	cmpb	%al, %dl
	jne	.L194
	movzbl	sH+1(%rip), %eax
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L194
	movq	-30(%rbp), %rdx
	movq	sH+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L194
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L187
.L194:
	call	abort
.L187:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testH, .-testH
	.comm	sI,9,1
	.globl	retmeI
	.type	retmeI, @function
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
	.size	retmeI, .-retmeI
	.globl	fn1I
	.type	fn1I, @function
fn1I:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sI(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -24(%rbp)
	movzbl	-32(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	-32(%rbp), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	leaq	-32(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movzbl	-24(%rbp), %ecx
	movb	%cl, 8(%rax)
	movq	%rdx, %rdi
	call	retmeI
	addq	$16, %rsp
	movzbl	-32(%rbp), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L200
	call	__stack_chk_fail
.L200:
	leave
	ret
	.size	fn1I, .-fn1I
	.globl	fn2I
	.type	fn2I, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2I, .-fn2I
	.globl	retitI
	.type	retitI, @function
retitI:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitI, .-retitI
	.globl	fn3I
	.type	fn3I, @function
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
	.size	fn3I, .-fn3I
	.globl	testI
	.type	testI, @function
testI:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sI, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L208
.L209:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L208:
	movl	-60(%rbp), %eax
	cmpl	$8, %eax
	jbe	.L209
	movzbl	sI(%rip), %eax
	orl	$-128, %eax
	movb	%al, sI(%rip)
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, sI(%rip)
	movq	sI(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1I
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L210
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L210
	movzbl	-32(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	cmpb	%al, %dl
	jne	.L210
	movq	-31(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L210
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L211
.L210:
	call	abort
.L211:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, sI(%rip)
	movq	sI(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2I
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L212
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L212
	movzbl	-32(%rbp), %eax
	shrb	$7, %al
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	cmpb	%al, %dl
	jne	.L212
	movq	-31(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L212
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L213
.L212:
	call	abort
.L213:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, sI(%rip)
	movq	sI(%rip), %rax
	movq	%rax, -32(%rbp)
	movzbl	sI+8(%rip), %eax
	movb	%al, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3I
	movl	%eax, -44(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sI(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L214
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L214
	movzbl	sI(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L214
	movq	-31(%rbp), %rdx
	movq	sI+1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L214
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L207
.L214:
	call	abort
.L207:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testI, .-testI
	.comm	sJ,4,1
	.globl	retmeJ
	.type	retmeJ, @function
retmeJ:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
	.size	retmeJ, .-retmeJ
	.globl	fn1J
	.type	fn1J, @function
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
	.size	fn1J, .-fn1J
	.globl	fn2J
	.type	fn2J, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2J, .-fn2J
	.globl	retitJ
	.type	retitJ, @function
retitJ:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitJ, .-retitJ
	.globl	fn3J
	.type	fn3J, @function
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
	.size	fn3J, .-fn3J
	.globl	testJ
	.type	testJ, @function
testJ:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	$sJ, -24(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L227
.L228:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L227:
	movl	-44(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L228
	movzbl	sJ+1(%rip), %eax
	orl	$-2, %eax
	movb	%al, sJ+1(%rip)
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sJ+1(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sJ+1(%rip)
	movl	sJ(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn1J
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sJ(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L229
	movzwl	-48(%rbp), %eax
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
	jne	.L229
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L229
	movzwl	-46(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L229
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L230
.L229:
	call	abort
.L230:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sJ+1(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sJ+1(%rip)
	movl	sJ(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn2J
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sJ(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L231
	movzwl	-48(%rbp), %eax
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
	jne	.L231
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L231
	movzwl	-46(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L231
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L232
.L231:
	call	abort
.L232:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sJ+1(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sJ+1(%rip)
	movl	sJ(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn3J
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sJ(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L233
	movzwl	-48(%rbp), %eax
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
	jne	.L233
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
	jne	.L233
	movzwl	-46(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L233
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L226
.L233:
	call	abort
.L226:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testJ, .-testJ
	.comm	sK,4,1
	.globl	retmeK
	.type	retmeK, @function
retmeK:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
	.size	retmeK, .-retmeK
	.globl	fn1K
	.type	fn1K, @function
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
	.size	fn1K, .-fn1K
	.globl	fn2K
	.type	fn2K, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2K, .-fn2K
	.globl	retitK
	.type	retitK, @function
retitK:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitK, .-retitK
	.globl	fn3K
	.type	fn3K, @function
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
	.size	fn3K, .-fn3K
	.globl	testK
	.type	testK, @function
testK:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	$sK, -24(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L246
.L247:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L246:
	movl	-44(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L247
	movzbl	sK(%rip), %eax
	orl	$63, %eax
	movb	%al, sK(%rip)
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sK(%rip)
	movl	sK(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn1K
	movl	%eax, -28(%rbp)
	movzwl	-46(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sK+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sK+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L248
	movl	-48(%rbp), %eax
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
	jne	.L248
	movzbl	-48(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L248
	movzbl	-48(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L248
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L249
.L248:
	call	abort
.L249:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sK(%rip)
	movl	sK(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn2K
	movl	%eax, -28(%rbp)
	movzwl	-46(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sK+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sK+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L250
	movl	-48(%rbp), %eax
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
	jne	.L250
	movzbl	-48(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L250
	movzbl	-48(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L250
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L251
.L250:
	call	abort
.L251:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sK(%rip)
	movl	sK(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn3K
	movl	%eax, -28(%rbp)
	movzwl	-46(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sK+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sK+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L252
	movl	-48(%rbp), %eax
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
	jne	.L252
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
	jne	.L252
	movzbl	-48(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L252
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L245
.L252:
	call	abort
.L245:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testK, .-testK
	.comm	sL,8,1
	.globl	retmeL
	.type	retmeL, @function
retmeL:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
	.size	retmeL, .-retmeL
	.globl	fn1L
	.type	fn1L, @function
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
	.size	fn1L, .-fn1L
	.globl	fn2L
	.type	fn2L, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2L, .-fn2L
	.globl	retitL
	.type	retitL, @function
retitL:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitL, .-retitL
	.globl	fn3L
	.type	fn3L, @function
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
	.size	fn3L, .-fn3L
	.globl	testL
	.type	testL, @function
testL:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sL, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L265
.L266:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L265:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L266
	movzbl	sL(%rip), %eax
	orl	$63, %eax
	movb	%al, sL(%rip)
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sL(%rip)
	movq	sL(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1L
	movl	%eax, -36(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sL+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sL+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L267
	movl	-32(%rbp), %eax
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
	jne	.L267
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L267
	movl	-28(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	.L267
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L268
.L267:
	call	abort
.L268:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sL(%rip)
	movq	sL(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2L
	movl	%eax, -36(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sL+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sL+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L269
	movl	-32(%rbp), %eax
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
	jne	.L269
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L269
	movl	-28(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	.L269
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L270
.L269:
	call	abort
.L270:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sL(%rip)
	movq	sL(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3L
	movl	%eax, -36(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sL+2(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sL+3(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L271
	movl	-32(%rbp), %eax
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
	jne	.L271
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-36(%rbp), %eax
	jne	.L271
	movl	-28(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	.L271
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L264
.L271:
	call	abort
.L264:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testL, .-testL
	.comm	sM,8,1
	.globl	retmeM
	.type	retmeM, @function
retmeM:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
	.size	retmeM, .-retmeM
	.globl	fn1M
	.type	fn1M, @function
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
	.size	fn1M, .-fn1M
	.globl	fn2M
	.type	fn2M, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2M, .-fn2M
	.globl	retitM
	.type	retitM, @function
retitM:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitM, .-retitM
	.globl	fn3M
	.type	fn3M, @function
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
	.size	fn3M, .-fn3M
	.globl	testM
	.type	testM, @function
testM:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sM, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L284
.L285:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L284:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L285
	movzbl	sM+4(%rip), %eax
	orl	$63, %eax
	movb	%al, sM+4(%rip)
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sM+4(%rip)
	movq	sM(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1M
	movl	%eax, -36(%rbp)
	movzwl	-26(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sM+6(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sM+7(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L286
	movl	-28(%rbp), %eax
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
	jne	.L286
	movzbl	-28(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L286
	movl	-32(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	.L286
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L287
.L286:
	call	abort
.L287:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sM+4(%rip)
	movq	sM(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2M
	movl	%eax, -36(%rbp)
	movzwl	-26(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sM+6(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sM+7(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L288
	movl	-28(%rbp), %eax
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
	jne	.L288
	movzbl	-28(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L288
	movl	-32(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	.L288
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L289
.L288:
	call	abort
.L289:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$63, %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$-64, %eax
	orl	%edx, %eax
	movb	%al, sM+4(%rip)
	movq	sM(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3M
	movl	%eax, -36(%rbp)
	movzwl	-26(%rbp), %eax
	shrw	%ax
	movl	%eax, %ecx
	movzbl	sM+6(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movzbl	sM+7(%rip), %edx
	salq	$7, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L290
	movl	-28(%rbp), %eax
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
	jne	.L290
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-36(%rbp), %eax
	jne	.L290
	movl	-32(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	.L290
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L283
.L290:
	call	abort
.L283:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testM, .-testM
	.comm	sN,8,1
	.globl	retmeN
	.type	retmeN, @function
retmeN:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
	.size	retmeN, .-retmeN
	.globl	fn1N
	.type	fn1N, @function
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
	.size	fn1N, .-fn1N
	.globl	fn2N
	.type	fn2N, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2N, .-fn2N
	.globl	retitN
	.type	retitN, @function
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
	.size	retitN, .-retitN
	.globl	fn3N
	.type	fn3N, @function
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
	.size	fn3N, .-fn3N
	.globl	testN
	.type	testN, @function
testN:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sN, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L303
.L304:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L303:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L304
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
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1N
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
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
	jne	.L305
	movq	-32(%rbp), %rax
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
	jne	.L305
	movzwl	-32(%rbp), %eax
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
	jne	.L305
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L305
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L306
.L305:
	call	abort
.L306:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2N
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
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
	jne	.L307
	movq	-32(%rbp), %rax
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
	jne	.L307
	movzwl	-32(%rbp), %eax
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
	jne	.L307
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L307
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L308
.L307:
	call	abort
.L308:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3N
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
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
	jne	.L309
	movq	-32(%rbp), %rax
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
	jne	.L309
	movzbl	sN(%rip), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movzbl	sN+1(%rip), %edx
	andl	$15, %edx
	salq	$2, %rdx
	orq	%rdx, %rax
	movzbl	%al, %eax
	cmpl	-36(%rbp), %eax
	jne	.L309
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L309
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L302
.L309:
	call	abort
.L302:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testN, .-testN
	.comm	sO,16,16
	.globl	retmeO
	.type	retmeO, @function
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
	.size	retmeO, .-retmeO
	.globl	fn1O
	.type	fn1O, @function
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
	.size	fn1O, .-fn1O
	.globl	fn2O
	.type	fn2O, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2O, .-fn2O
	.globl	retitO
	.type	retitO, @function
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
	.size	retitO, .-retitO
	.globl	fn3O
	.type	fn3O, @function
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
	.size	fn3O, .-fn3O
	.globl	testO
	.type	testO, @function
testO:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sO, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L322
.L323:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L322:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L323
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
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1O
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
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
	jne	.L324
	movq	-24(%rbp), %rax
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
	jne	.L324
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L324
	movq	-32(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L324
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L325
.L324:
	call	abort
.L325:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2O
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
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
	jne	.L326
	movq	-24(%rbp), %rax
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
	jne	.L326
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L326
	movq	-32(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L326
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L327
.L326:
	call	abort
.L327:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3O
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
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
	jne	.L328
	movq	-24(%rbp), %rax
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
	jne	.L328
	movzbl	sO+8(%rip), %eax
	movzbl	sO+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L328
	movq	-32(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L328
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L321
.L328:
	call	abort
.L321:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testO, .-testO
	.comm	sP,16,16
	.globl	retmeP
	.type	retmeP, @function
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
	.size	retmeP, .-retmeP
	.globl	fn1P
	.type	fn1P, @function
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
	.size	fn1P, .-fn1P
	.globl	fn2P
	.type	fn2P, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2P, .-fn2P
	.globl	retitP
	.type	retitP, @function
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
	.size	retitP, .-retitP
	.globl	fn3P
	.type	fn3P, @function
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
	.size	fn3P, .-fn3P
	.globl	testP
	.type	testP, @function
testP:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sP, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L341
.L342:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L341:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L342
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
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1P
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
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
	jne	.L343
	movq	-32(%rbp), %rax
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
	jne	.L343
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L343
	movq	-24(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L343
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L344
.L343:
	call	abort
.L344:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2P
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
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
	jne	.L345
	movq	-32(%rbp), %rax
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
	jne	.L345
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L345
	movq	-24(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L345
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L346
.L345:
	call	abort
.L346:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3P
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
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
	jne	.L347
	movq	-32(%rbp), %rax
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
	jne	.L347
	movzbl	sP(%rip), %eax
	movzbl	sP+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L347
	movq	-24(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L347
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L340
.L347:
	call	abort
.L340:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testP, .-testP
	.comm	sQ,10,1
	.globl	retmeQ
	.type	retmeQ, @function
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
	.size	retmeQ, .-retmeQ
	.globl	fn1Q
	.type	fn1Q, @function
fn1Q:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sQ(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -24(%rbp)
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
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-24(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeQ
	addq	$16, %rsp
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L353
	call	__stack_chk_fail
.L353:
	leave
	ret
	.size	fn1Q, .-fn1Q
	.globl	fn2Q
	.type	fn2Q, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2Q, .-fn2Q
	.globl	retitQ
	.type	retitQ, @function
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
	.size	retitQ, .-retitQ
	.globl	fn3Q
	.type	fn3Q, @function
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
	.size	fn3Q, .-fn3Q
	.globl	testQ
	.type	testQ, @function
testQ:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sQ, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L361
.L362:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L361:
	movl	-60(%rbp), %eax
	cmpl	$9, %eax
	jbe	.L362
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
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1Q
	movl	%eax, -44(%rbp)
	movzbl	-31(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	.L363
	movzbl	-31(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L363
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L363
	movq	-30(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L363
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L364
.L363:
	call	abort
.L364:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2Q
	movl	%eax, -44(%rbp)
	movzbl	-31(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	.L365
	movzbl	-31(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L365
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L365
	movq	-30(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L365
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L366
.L365:
	call	abort
.L366:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movzwl	sQ+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3Q
	movl	%eax, -44(%rbp)
	movzbl	-31(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	.L367
	movzbl	-31(%rbp), %eax
	shrb	$4, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sQ+1(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L367
	movzbl	sQ(%rip), %eax
	movzbl	sQ+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L367
	movq	-30(%rbp), %rdx
	movq	sQ+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L367
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L360
.L367:
	call	abort
.L360:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testQ, .-testQ
	.comm	sR,10,1
	.globl	retmeR
	.type	retmeR, @function
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
	.size	retmeR, .-retmeR
	.globl	fn1R
	.type	fn1R, @function
fn1R:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sR(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	-32(%rbp), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	leaq	-32(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-24(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeR
	addq	$16, %rsp
	movzbl	-32(%rbp), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L373
	call	__stack_chk_fail
.L373:
	leave
	ret
	.size	fn1R, .-fn1R
	.globl	fn2R
	.type	fn2R, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2R, .-fn2R
	.globl	retitR
	.type	retitR, @function
retitR:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitR, .-retitR
	.globl	fn3R
	.type	fn3R, @function
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
	.size	fn3R, .-fn3R
	.globl	testR
	.type	testR, @function
testR:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sR, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L381
.L382:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L381:
	movl	-60(%rbp), %eax
	cmpl	$9, %eax
	jbe	.L382
	movzbl	sR(%rip), %eax
	orl	$3, %eax
	movb	%al, sR(%rip)
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, sR(%rip)
	movq	sR(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1R
	movl	%eax, -44(%rbp)
	movzbl	-31(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sR+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	.L383
	movzwl	-32(%rbp), %eax
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
	jne	.L383
	movzbl	-32(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	cmpb	%al, %dl
	jne	.L383
	movq	-30(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L383
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L384
.L383:
	call	abort
.L384:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, sR(%rip)
	movq	sR(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2R
	movl	%eax, -44(%rbp)
	movzbl	-31(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sR+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	.L385
	movzwl	-32(%rbp), %eax
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
	jne	.L385
	movzbl	-32(%rbp), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	cmpb	%al, %dl
	jne	.L385
	movq	-30(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L385
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L386
.L385:
	call	abort
.L386:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$3, %eax
	andl	$3, %eax
	movl	%eax, %edx
	movzbl	sR(%rip), %eax
	andl	$-4, %eax
	orl	%edx, %eax
	movb	%al, sR(%rip)
	movq	sR(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sR+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3R
	movl	%eax, -44(%rbp)
	movzbl	-31(%rbp), %eax
	shrb	$5, %al
	movl	%eax, %edx
	movzbl	sR+1(%rip), %eax
	shrb	$5, %al
	cmpb	%al, %dl
	jne	.L387
	movzwl	-32(%rbp), %eax
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
	jne	.L387
	movzbl	sR(%rip), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L387
	movq	-30(%rbp), %rdx
	movq	sR+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L387
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L380
.L387:
	call	abort
.L380:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testR, .-testR
	.comm	sS,10,1
	.globl	retmeS
	.type	retmeS, @function
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
	.size	retmeS, .-retmeS
	.globl	fn1S
	.type	fn1S, @function
fn1S:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sS(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-32(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	leaq	-32(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-24(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeS
	addq	$16, %rsp
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L393
	call	__stack_chk_fail
.L393:
	leave
	ret
	.size	fn1S, .-fn1S
	.globl	fn2S
	.type	fn2S, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2S, .-fn2S
	.globl	retitS
	.type	retitS, @function
retitS:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitS, .-retitS
	.globl	fn3S
	.type	fn3S, @function
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
	.size	fn3S, .-fn3S
	.globl	testS
	.type	testS, @function
testS:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sS, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L401
.L402:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L401:
	movl	-60(%rbp), %eax
	cmpl	$9, %eax
	jbe	.L402
	movzbl	sS(%rip), %eax
	orl	$1, %eax
	movb	%al, sS(%rip)
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1S
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sS(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sS+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L403
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L403
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L403
	movq	-30(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L403
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L404
.L403:
	call	abort
.L404:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2S
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sS(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sS+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L405
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L405
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L405
	movq	-30(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L405
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L406
.L405:
	call	abort
.L406:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sS(%rip)
	movq	sS(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sS+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3S
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sS(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sS+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L407
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L407
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L407
	movq	-30(%rbp), %rdx
	movq	sS+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L407
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L400
.L407:
	call	abort
.L400:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testS, .-testS
	.comm	sT,4,1
	.globl	retmeT
	.type	retmeT, @function
retmeT:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
	.size	retmeT, .-retmeT
	.globl	fn1T
	.type	fn1T, @function
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
	.size	fn1T, .-fn1T
	.globl	fn2T
	.type	fn2T, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2T, .-fn2T
	.globl	retitT
	.type	retitT, @function
retitT:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitT, .-retitT
	.globl	fn3T
	.type	fn3T, @function
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
	.size	fn3T, .-fn3T
	.globl	testT
	.type	testT, @function
testT:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	$sT, -24(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L420
.L421:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L420:
	movl	-44(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L421
	movzbl	sT(%rip), %eax
	orl	$1, %eax
	movb	%al, sT(%rip)
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sT(%rip)
	movl	sT(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn1T
	movl	%eax, -28(%rbp)
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sT+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L422
	movzwl	-48(%rbp), %eax
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
	jne	.L422
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L422
	movzwl	-46(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L422
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L423
.L422:
	call	abort
.L423:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sT(%rip)
	movl	sT(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn2T
	movl	%eax, -28(%rbp)
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sT+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L424
	movzwl	-48(%rbp), %eax
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
	jne	.L424
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L424
	movzwl	-46(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L424
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L425
.L424:
	call	abort
.L425:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sT(%rip)
	movl	sT(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn3T
	movl	%eax, -28(%rbp)
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sT+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L426
	movzwl	-48(%rbp), %eax
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
	jne	.L426
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
	jne	.L426
	movzwl	-46(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L426
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L419
.L426:
	call	abort
.L419:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testT, .-testT
	.comm	sU,10,1
	.globl	retmeU
	.type	retmeU, @function
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
	.size	retmeU, .-retmeU
	.globl	fn1U
	.type	fn1U, @function
fn1U:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sU(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	-32(%rbp), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, -32(%rbp)
	leaq	-32(%rbp), %rdx
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-24(%rbp), %ecx
	movw	%cx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeU
	addq	$16, %rsp
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L432
	call	__stack_chk_fail
.L432:
	leave
	ret
	.size	fn1U, .-fn1U
	.globl	fn2U
	.type	fn2U, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2U, .-fn2U
	.globl	retitU
	.type	retitU, @function
retitU:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitU, .-retitU
	.globl	fn3U
	.type	fn3U, @function
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
	.size	fn3U, .-fn3U
	.globl	testU
	.type	testU, @function
testU:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sU, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L440
.L441:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L440:
	movl	-60(%rbp), %eax
	cmpl	$9, %eax
	jbe	.L441
	movzbl	sU(%rip), %eax
	orl	$64, %eax
	movb	%al, sU(%rip)
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1U
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sU(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sU+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L442
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L442
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L442
	movq	-30(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L442
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L443
.L442:
	call	abort
.L443:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2U
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sU(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sU+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L444
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L444
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L444
	movq	-30(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L444
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L445
.L444:
	call	abort
.L445:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, sU(%rip)
	movq	sU(%rip), %rax
	movq	%rax, -32(%rbp)
	movzwl	sU+8(%rip), %eax
	movw	%ax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3U
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sU(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sU+1(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L446
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L446
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L446
	movq	-30(%rbp), %rdx
	movq	sU+2(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L446
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L439
.L446:
	call	abort
.L439:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testU, .-testU
	.comm	sV,4,1
	.globl	retmeV
	.type	retmeV, @function
retmeV:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
	.size	retmeV, .-retmeV
	.globl	fn1V
	.type	fn1V, @function
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
	.size	fn1V, .-fn1V
	.globl	fn2V
	.type	fn2V, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2V, .-fn2V
	.globl	retitV
	.type	retitV, @function
retitV:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
	.size	retitV, .-retitV
	.globl	fn3V
	.type	fn3V, @function
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
	.size	fn3V, .-fn3V
	.globl	testV
	.type	testV, @function
testV:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	$sV, -24(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L459
.L460:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L459:
	movl	-44(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L460
	movzbl	sV+1(%rip), %eax
	orl	$1, %eax
	movb	%al, sV+1(%rip)
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sV+1(%rip)
	movl	sV(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn1V
	movl	%eax, -28(%rbp)
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L461
	movzbl	-48(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	.L461
	movzbl	-47(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L461
	movzwl	-46(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L461
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L462
.L461:
	call	abort
.L462:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sV+1(%rip)
	movl	sV(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn2V
	movl	%eax, -28(%rbp)
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L463
	movzbl	-48(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	.L463
	movzbl	-47(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L463
	movzwl	-46(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L463
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L464
.L463:
	call	abort
.L464:
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, sV+1(%rip)
	movl	sV(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn3V
	movl	%eax, -28(%rbp)
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L465
	movzbl	-48(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	.L465
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
	jne	.L465
	movzwl	-46(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L465
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L458
.L465:
	call	abort
.L458:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testV, .-testV
	.comm	sW,12,8
	.globl	retmeW
	.type	retmeW, @function
retmeW:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	vmovq	%xmm0, %rax
	movl	%edi, %edx
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %eax
	vmovq	%rdx, %xmm0
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
	.size	retmeW, .-retmeW
	.globl	fn1W
	.type	fn1W, @function
fn1W:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sW(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	sW+8(%rip), %eax
	movl	%eax, -8(%rbp)
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
	movl	-8(%rbp), %eax
	vmovq	%rdx, %xmm0
	movl	%eax, %edi
	call	retmeW
	vmovq	%xmm0, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, -8(%rbp)
	movzwl	-8(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	leave
	ret
	.size	fn1W, .-fn1W
	.globl	fn2W
	.type	fn2W, @function
fn2W:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sW(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	sW+8(%rip), %eax
	movl	%eax, -8(%rbp)
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2W, .-fn2W
	.globl	retitW
	.type	retitW, @function
retitW:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sW+8(%rip), %eax
	movzbl	sW+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
	.size	retitW, .-retitW
	.globl	fn3W
	.type	fn3W, @function
fn3W:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sW+8(%rip), %eax
	movzbl	sW+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sW+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sW+8(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sW+9(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sW+9(%rip)
	call	retitW
	leave
	ret
	.size	fn3W, .-fn3W
	.globl	testW
	.type	testW, @function
testW:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sW, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L478
.L479:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L478:
	movl	-60(%rbp), %eax
	cmpl	$11, %eax
	jbe	.L479
	movabsq	$4617596992938311680, %rax
	movq	%rax, sW(%rip)
	movzbl	sW+8(%rip), %eax
	orl	$-1, %eax
	movb	%al, sW+8(%rip)
	movzbl	sW+9(%rip), %eax
	orl	$15, %eax
	movb	%al, sW+9(%rip)
	movzbl	sW+8(%rip), %eax
	movzbl	sW+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sW+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sW+8(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sW+9(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sW+9(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	sW+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1W
	movl	%eax, -44(%rbp)
	movzbl	-21(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sW+11(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L480
	movl	-24(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sW+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sW+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sW+11(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L480
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sW+8(%rip), %eax
	movzbl	sW+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L480
	movq	-32(%rbp), %rax
	movq	sW(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L480
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L480
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L481
.L480:
	call	abort
.L481:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sW+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sW+8(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sW+9(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sW+9(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	sW+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2W
	movl	%eax, -44(%rbp)
	movzbl	-21(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sW+11(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L482
	movl	-24(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sW+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sW+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sW+11(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L482
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sW+8(%rip), %eax
	movzbl	sW+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L482
	movq	-32(%rbp), %rax
	movq	sW(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	.L482
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jne	.L482
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L483
.L482:
	call	abort
.L483:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	movzbl	%dl, %edx
	movzbl	sW+8(%rip), %ecx
	andl	$0, %ecx
	orl	%ecx, %edx
	movb	%dl, sW+8(%rip)
	shrw	$8, %ax
	movzwl	%ax, %eax
	andl	$15, %eax
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	sW+9(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, sW+9(%rip)
	movq	sW(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	sW+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3W
	movl	%eax, -44(%rbp)
	movzbl	-21(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sW+11(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L484
	movl	-24(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %ecx
	andw	$8191, %cx
	movzbl	sW+9(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sW+10(%rip), %edx
	salq	$4, %rdx
	orq	%rax, %rdx
	movzbl	sW+11(%rip), %eax
	andl	$1, %eax
	salq	$12, %rax
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L484
	movzbl	sW+8(%rip), %eax
	movzbl	sW+9(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L484
	movq	-32(%rbp), %rax
	movq	sW(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L484
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L484
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L477
.L484:
	call	abort
.L477:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testW, .-testW
	.comm	sX,12,1
	.globl	retmeX
	.type	retmeX, @function
retmeX:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	24(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	retmeX, .-retmeX
	.globl	fn1X
	.type	fn1X, @function
fn1X:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sX(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	sX+8(%rip), %eax
	movl	%eax, -24(%rbp)
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
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	-24(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeX
	addq	$16, %rsp
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L490
	call	__stack_chk_fail
.L490:
	leave
	ret
	.size	fn1X, .-fn1X
	.globl	fn2X
	.type	fn2X, @function
fn2X:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sX(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	sX+8(%rip), %eax
	movl	%eax, -8(%rbp)
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2X, .-fn2X
	.globl	retitX
	.type	retitX, @function
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
	.size	retitX, .-retitX
	.globl	fn3X
	.type	fn3X, @function
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
	.size	fn3X, .-fn3X
	.globl	testX
	.type	testX, @function
testX:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sX, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L498
.L499:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L498:
	movl	-60(%rbp), %eax
	cmpl	$11, %eax
	jbe	.L499
	movabsq	$4617596992938311680, %rax
	movq	%rax, sX+4(%rip)
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
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	sX+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1X
	movl	%eax, -44(%rbp)
	movzbl	-29(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sX+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L500
	movl	-32(%rbp), %eax
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
	jne	.L500
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L500
	movq	-28(%rbp), %rax
	movq	sX+4(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L500
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L500
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L501
.L500:
	call	abort
.L501:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	sX+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2X
	movl	%eax, -44(%rbp)
	movzbl	-29(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sX+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L502
	movl	-32(%rbp), %eax
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
	jne	.L502
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L502
	movq	-28(%rbp), %rax
	movq	sX+4(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	.L502
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jne	.L502
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L503
.L502:
	call	abort
.L503:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	sX+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3X
	movl	%eax, -44(%rbp)
	movzbl	-29(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sX+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L504
	movl	-32(%rbp), %eax
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
	jne	.L504
	movzbl	sX(%rip), %eax
	movzbl	sX+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L504
	movq	-28(%rbp), %rax
	movq	sX+4(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L504
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L504
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L497
.L504:
	call	abort
.L497:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testX, .-testX
	.comm	sY,12,1
	.globl	retmeY
	.type	retmeY, @function
retmeY:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	24(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	retmeY, .-retmeY
	.globl	fn1Y
	.type	fn1Y, @function
fn1Y:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	sY(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	sY+8(%rip), %eax
	movl	%eax, -24(%rbp)
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
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	-24(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movq	%rdx, %rdi
	call	retmeY
	addq	$16, %rsp
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L510
	call	__stack_chk_fail
.L510:
	leave
	ret
	.size	fn1Y, .-fn1Y
	.globl	fn2Y
	.type	fn2Y, @function
fn2Y:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sY(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	sY+8(%rip), %eax
	movl	%eax, -8(%rbp)
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2Y, .-fn2Y
	.globl	retitY
	.type	retitY, @function
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
	.size	retitY, .-retitY
	.globl	fn3Y
	.type	fn3Y, @function
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
	.size	fn3Y, .-fn3Y
	.globl	testY
	.type	testY, @function
testY:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sY, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L518
.L519:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L518:
	movl	-60(%rbp), %eax
	cmpl	$11, %eax
	jbe	.L519
	movabsq	$4617596992938311680, %rax
	movq	%rax, sY+4(%rip)
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
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	sY+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1Y
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sY+2(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sY+3(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L520
	movl	-32(%rbp), %eax
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
	jne	.L520
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L520
	movq	-28(%rbp), %rax
	movq	sY+4(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L520
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L520
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L521
.L520:
	call	abort
.L521:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	sY+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2Y
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sY+2(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sY+3(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L522
	movl	-32(%rbp), %eax
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
	jne	.L522
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %ecx
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L522
	movq	-28(%rbp), %rax
	movq	sY+4(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	.L522
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jne	.L522
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L523
.L522:
	call	abort
.L523:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	sY+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3Y
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %ecx
	movzbl	sY+2(%rip), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movzbl	sY+3(%rip), %edx
	addq	%rdx, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L524
	movl	-32(%rbp), %eax
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
	jne	.L524
	movzbl	sY(%rip), %eax
	movzbl	sY+1(%rip), %edx
	andl	$15, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L524
	movq	-28(%rbp), %rax
	movq	sY+4(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L524
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L524
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L517
.L524:
	call	abort
.L517:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testY, .-testY
	.comm	sZ,12,8
	.globl	retmeZ
	.type	retmeZ, @function
retmeZ:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	vmovq	%xmm0, %rax
	movl	%edi, %edx
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %eax
	vmovq	%rdx, %xmm0
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
	.size	retmeZ, .-retmeZ
	.globl	fn1Z
	.type	fn1Z, @function
fn1Z:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sZ(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	sZ+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movzwl	-6(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-6(%rbp), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, -6(%rbp)
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %eax
	vmovq	%rdx, %xmm0
	movl	%eax, %edi
	call	retmeZ
	vmovq	%xmm0, %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, -8(%rbp)
	movzwl	-6(%rbp), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	leave
	ret
	.size	fn1Z, .-fn1Z
	.globl	fn2Z
	.type	fn2Z, @function
fn2Z:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	sZ(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	sZ+8(%rip), %eax
	movl	%eax, -8(%rbp)
	movzwl	-6(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-6(%rbp), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, -6(%rbp)
	movzwl	-6(%rbp), %eax
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-6(%rbp), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, -6(%rbp)
	movzwl	-6(%rbp), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
	.size	fn2Z, .-fn2Z
	.globl	retitZ
	.type	retitZ, @function
retitZ:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sZ+10(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	popq	%rbp
	ret
	.size	retitZ, .-retitZ
	.globl	fn3Z
	.type	fn3Z, @function
fn3Z:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movzbl	sZ+10(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
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
	movzbl	sZ+10(%rip), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, sZ+10(%rip)
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sZ+11(%rip)
	call	retitZ
	leave
	ret
	.size	fn3Z, .-fn3Z
	.globl	testZ
	.type	testZ, @function
testZ:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sZ, -40(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L537
.L538:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L537:
	movl	-60(%rbp), %eax
	cmpl	$11, %eax
	jbe	.L538
	movabsq	$4617596992938311680, %rax
	movq	%rax, sZ(%rip)
	movzbl	sZ+10(%rip), %eax
	orl	$-16, %eax
	movb	%al, sZ+10(%rip)
	movzbl	sZ+11(%rip), %eax
	orl	$-1, %eax
	movb	%al, sZ+11(%rip)
	movzbl	sZ+10(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	andl	$15, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	sZ+10(%rip), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, sZ+10(%rip)
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sZ+11(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	sZ+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1Z
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	movzbl	sZ+9(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sZ+10(%rip), %edx
	andl	$15, %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	.L539
	movzwl	-24(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+8(%rip), %eax
	movzbl	sZ+9(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L539
	movzwl	-22(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %ecx
	movzbl	sZ+10(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L539
	movq	-32(%rbp), %rax
	movq	sZ(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L539
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L539
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L540
.L539:
	call	abort
.L540:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	andl	$15, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	sZ+10(%rip), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, sZ+10(%rip)
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sZ+11(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	sZ+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2Z
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	movzbl	sZ+9(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sZ+10(%rip), %edx
	andl	$15, %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	.L541
	movzwl	-24(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+8(%rip), %eax
	movzbl	sZ+9(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L541
	movzwl	-22(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %ecx
	movzbl	sZ+10(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L541
	movq	-32(%rbp), %rax
	movq	sZ(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	.L541
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jne	.L541
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	movl	%eax, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L542
.L541:
	call	abort
.L542:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %edx
	andl	$15, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	sZ+10(%rip), %edx
	andl	$15, %edx
	orl	%ecx, %edx
	movb	%dl, sZ+10(%rip)
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	andl	$0, %edx
	orl	%edx, %eax
	movb	%al, sZ+11(%rip)
	movq	sZ(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	sZ+8(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3Z
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %ecx
	andl	$127, %ecx
	movzbl	sZ+9(%rip), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	movzbl	sZ+10(%rip), %edx
	andl	$15, %edx
	salq	$3, %rdx
	orq	%rdx, %rax
	cmpb	%al, %cl
	jne	.L543
	movzwl	-24(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %ecx
	movzbl	sZ+8(%rip), %eax
	movzbl	sZ+9(%rip), %edx
	andl	$31, %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	cmpw	%ax, %cx
	jne	.L543
	movzbl	sZ+10(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	sZ+11(%rip), %edx
	salq	$4, %rdx
	orq	%rdx, %rax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L543
	movq	-32(%rbp), %rax
	movq	sZ(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L543
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L543
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L536
.L543:
	call	abort
.L536:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testZ, .-testZ
	.globl	main
	.type	main, @function
main:
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
	.size	main, .-main
	.data
	.align 4
	.type	s.2317, @object
	.size	s.2317, 4
s.2317:
	.long	1388815473
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
