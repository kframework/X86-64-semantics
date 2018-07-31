	.file	"20040709-1.c"
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
	.comm	sA,4,4
	.globl	retmeA
	.type	retmeA, @function
retmeA:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %eax
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
	.size	fn1A, .-fn1A
	.globl	fn2A
	.type	fn2A, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2A, .-fn2A
	.globl	retitA
	.type	retitA, @function
retitA:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sA+2(%rip), %eax
	shrw	%ax
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
	cmpl	$3, %eax
	jbe	.L53
	movzwl	sA+2(%rip), %eax
	orl	$-2, %eax
	movw	%ax, sA+2(%rip)
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	movl	%eax, -40(%rbp)
	call	myrnd
	movl	%eax, -36(%rbp)
	call	myrnd
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sA+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sA+2(%rip)
	movl	sA(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn1A
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L54
	movl	-48(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sA(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	.L54
	movzwl	-46(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L54
	movzbl	-48(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	$6, %al
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
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sA+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sA+2(%rip)
	movl	sA(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn2A
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L56
	movl	-48(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sA(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	.L56
	movzwl	-46(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L56
	movzbl	-48(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	$6, %al
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
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sA+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sA+2(%rip)
	movl	sA(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	fn3A
	movl	%eax, -28(%rbp)
	movzbl	-48(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sA(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L58
	movl	-48(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sA(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	.L58
	movzwl	sA+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	cmpl	-28(%rbp), %eax
	jne	.L58
	movzbl	-48(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sA(%rip), %eax
	shrb	$6, %al
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
	.comm	sB,8,4
	.globl	retmeB
	.type	retmeB, @function
retmeB:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
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
	.size	fn1B, .-fn1B
	.globl	fn2B
	.type	fn2B, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2B, .-fn2B
	.globl	retitB
	.type	retitB, @function
retitB:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sB+2(%rip), %eax
	shrw	%ax
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
	jmp	.L71
.L72:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L71:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L72
	movzwl	sB+2(%rip), %eax
	orl	$-2, %eax
	movw	%ax, sB+2(%rip)
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sB+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sB+2(%rip)
	movq	sB(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1B
	movl	%eax, -36(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L73
	movl	-32(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sB(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L73
	movzwl	-30(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L73
	movl	-28(%rbp), %edx
	movl	sB+4(%rip), %eax
	cmpl	%eax, %edx
	jne	.L73
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L74
.L73:
	call	abort
.L74:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sB+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sB+2(%rip)
	movq	sB(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2B
	movl	%eax, -36(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L75
	movl	-32(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sB(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L75
	movzwl	-30(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L75
	movl	-28(%rbp), %edx
	movl	sB+4(%rip), %eax
	cmpl	%eax, %edx
	jne	.L75
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
	je	.L76
.L75:
	call	abort
.L76:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sB+2(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sB+2(%rip)
	movq	sB(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3B
	movl	%eax, -36(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sB(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L77
	movl	-32(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sB(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L77
	movzwl	sB+2(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	cmpl	-36(%rbp), %eax
	jne	.L77
	movl	-28(%rbp), %edx
	movl	sB+4(%rip), %eax
	cmpl	%eax, %edx
	jne	.L77
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L70
.L77:
	call	abort
.L70:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testB, .-testB
	.comm	sC,8,4
	.globl	retmeC
	.type	retmeC, @function
retmeC:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
	.size	retmeC, .-retmeC
	.globl	fn1C
	.type	fn1C, @function
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
	.size	fn1C, .-fn1C
	.globl	fn2C
	.type	fn2C, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2C, .-fn2C
	.globl	retitC
	.type	retitC, @function
retitC:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sC+6(%rip), %eax
	shrw	%ax
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
	.size	fn3C, .-fn3C
	.globl	testC
	.type	testC, @function
testC:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	$sC, -24(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L90
.L91:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L90:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L91
	movzwl	sC+6(%rip), %eax
	orl	$-2, %eax
	movw	%ax, sC+6(%rip)
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sC+6(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sC+6(%rip)
	movq	sC(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1C
	movl	%eax, -36(%rbp)
	movzbl	-28(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L92
	movl	-28(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sC+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L92
	movzwl	-26(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L92
	movl	-32(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	.L92
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L93
.L92:
	call	abort
.L93:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sC+6(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sC+6(%rip)
	movq	sC(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2C
	movl	%eax, -36(%rbp)
	movzbl	-28(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L94
	movl	-28(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sC+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L94
	movzwl	-26(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L94
	movl	-32(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	.L94
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
	je	.L95
.L94:
	call	abort
.L95:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andw	$32767, %ax
	leal	(%rax,%rax), %edx
	movzwl	sC+6(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movw	%ax, sC+6(%rip)
	movq	sC(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3C
	movl	%eax, -36(%rbp)
	movzbl	-28(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sC+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L96
	movl	-28(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sC+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L96
	movzwl	sC+6(%rip), %eax
	shrw	%ax
	movzwl	%ax, %eax
	cmpl	-36(%rbp), %eax
	jne	.L96
	movl	-32(%rbp), %edx
	movl	sC(%rip), %eax
	cmpl	%eax, %edx
	jne	.L96
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L89
.L96:
	call	abort
.L89:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testC, .-testC
	.comm	sD,8,8
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
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
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
	jmp	.L109
.L110:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L109:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L110
	movl	sD+4(%rip), %eax
	orl	$-8, %eax
	movl	%eax, sD+4(%rip)
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sD+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sD+4(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1D
	movl	%eax, -36(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sD(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L111
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sD(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L111
	movl	-28(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L111
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L111
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L112
.L111:
	call	abort
.L112:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sD+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sD+4(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2D
	movl	%eax, -36(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sD(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L113
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sD(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L113
	movl	-28(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L113
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L113
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
	je	.L114
.L113:
	call	abort
.L114:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sD+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sD+4(%rip)
	movq	sD(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3D
	movl	%eax, -36(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sD(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L115
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sD(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L115
	movl	sD+4(%rip), %eax
	shrl	$3, %eax
	cmpl	-36(%rbp), %eax
	jne	.L115
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sD(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L115
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L108
.L115:
	call	abort
.L108:
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
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
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
	jmp	.L128
.L129:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L128:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L129
	movl	sE+12(%rip), %eax
	orl	$-8, %eax
	movl	%eax, sE+12(%rip)
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sE+12(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sE+12(%rip)
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
	movl	%eax, %edx
	movzwl	sE+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L130
	movq	-24(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sE+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L130
	movl	-20(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L130
	movq	-32(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L130
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L131
.L130:
	call	abort
.L131:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sE+12(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sE+12(%rip)
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
	movl	%eax, %edx
	movzwl	sE+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L132
	movq	-24(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sE+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L132
	movl	-20(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L132
	movq	-32(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L132
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
	je	.L133
.L132:
	call	abort
.L133:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sE+12(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sE+12(%rip)
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
	movl	%eax, %edx
	movzwl	sE+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L134
	movq	-24(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sE+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L134
	movl	sE+12(%rip), %eax
	shrl	$3, %eax
	cmpl	-44(%rbp), %eax
	jne	.L134
	movq	-32(%rbp), %rdx
	movq	sE(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L134
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L127
.L134:
	call	abort
.L127:
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
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
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
	jmp	.L147
.L148:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L147:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L148
	movl	sF+4(%rip), %eax
	orl	$-8, %eax
	movl	%eax, sF+4(%rip)
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sF+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sF+4(%rip)
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
	movl	%eax, %edx
	movzwl	sF(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L149
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sF(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L149
	movl	-28(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L149
	movq	-24(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L149
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L150
.L149:
	call	abort
.L150:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sF+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sF+4(%rip)
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
	movl	%eax, %edx
	movzwl	sF(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L151
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sF(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L151
	movl	-28(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L151
	movq	-24(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L151
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
	je	.L152
.L151:
	call	abort
.L152:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$536870911, %eax
	leal	0(,%rax,8), %edx
	movl	sF+4(%rip), %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, sF+4(%rip)
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
	movl	%eax, %edx
	movzwl	sF(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L153
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sF(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L153
	movl	sF+4(%rip), %eax
	shrl	$3, %eax
	cmpl	-44(%rbp), %eax
	jne	.L153
	movq	-24(%rbp), %rdx
	movq	sF+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L153
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L146
.L153:
	call	abort
.L146:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testF, .-testF
	.comm	sG,16,16
	.globl	retmeG
	.type	retmeG, @function
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
	.size	retmeG, .-retmeG
	.globl	fn1G
	.type	fn1G, @function
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
	.size	fn1G, .-fn1G
	.globl	fn2G
	.type	fn2G, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2G, .-fn2G
	.globl	retitG
	.type	retitG, @function
retitG:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	sG+3(%rip), %eax
	shrb	%al
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
	jmp	.L166
.L167:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L166:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L167
	movzbl	sG+3(%rip), %eax
	orl	$-2, %eax
	movb	%al, sG+3(%rip)
	movzbl	sG+3(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sG+3(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sG+3(%rip)
	movq	sG(%rip), %rax
	movq	sG+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1G
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sG(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L168
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sG(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L168
	movzbl	-29(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sG+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L168
	movq	-24(%rbp), %rdx
	movq	sG+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L168
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L169
.L168:
	call	abort
.L169:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sG+3(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sG+3(%rip)
	movq	sG(%rip), %rax
	movq	sG+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2G
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sG(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L170
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sG(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L170
	movzbl	-29(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sG+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L170
	movq	-24(%rbp), %rdx
	movq	sG+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L170
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
	je	.L171
.L170:
	call	abort
.L171:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andl	$127, %eax
	leal	(%rax,%rax), %edx
	movzbl	sG+3(%rip), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, sG+3(%rip)
	movq	sG(%rip), %rax
	movq	sG+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3G
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sG(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L172
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sG(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L172
	movzbl	sG+3(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L172
	movq	-24(%rbp), %rdx
	movq	sG+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L172
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L165
.L172:
	call	abort
.L165:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testG, .-testG
	.comm	sH,16,16
	.globl	retmeH
	.type	retmeH, @function
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
	.size	retmeH, .-retmeH
	.globl	fn1H
	.type	fn1H, @function
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
	.size	fn1H, .-fn1H
	.globl	fn2H
	.type	fn2H, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2H, .-fn2H
	.globl	retitH
	.type	retitH, @function
retitH:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
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
	jmp	.L185
.L186:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L185:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L186
	movzwl	sH+2(%rip), %eax
	orl	$-128, %eax
	movw	%ax, sH+2(%rip)
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sH+2(%rip)
	movq	sH(%rip), %rax
	movq	sH+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1H
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sH(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L187
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sH(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L187
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L187
	movq	-24(%rbp), %rdx
	movq	sH+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L187
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L188
.L187:
	call	abort
.L188:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sH+2(%rip)
	movq	sH(%rip), %rax
	movq	sH+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2H
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sH(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L189
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sH(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L189
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L189
	movq	-24(%rbp), %rdx
	movq	sH+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L189
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
	je	.L190
.L189:
	call	abort
.L190:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sH+2(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sH+2(%rip)
	movq	sH(%rip), %rax
	movq	sH+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3H
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sH(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L191
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sH(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L191
	movzwl	sH+2(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L191
	movq	-24(%rbp), %rdx
	movq	sH+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L191
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L184
.L191:
	call	abort
.L184:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testH, .-testH
	.comm	sI,16,16
	.globl	retmeI
	.type	retmeI, @function
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
	.size	retmeI, .-retmeI
	.globl	fn1I
	.type	fn1I, @function
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
	.size	fn1I, .-fn1I
	.globl	fn2I
	.type	fn2I, @function
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
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
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
	.size	fn2I, .-fn2I
	.globl	retitI
	.type	retitI, @function
retitI:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
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
	jmp	.L204
.L205:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L204:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L205
	movzwl	sI(%rip), %eax
	orl	$-128, %eax
	movw	%ax, sI(%rip)
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sI(%rip)
	movq	sI(%rip), %rax
	movq	sI+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	jne	.L206
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L206
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L206
	movq	-24(%rbp), %rdx
	movq	sI+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L206
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L207
.L206:
	call	abort
.L207:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sI(%rip)
	movq	sI(%rip), %rax
	movq	sI+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	jne	.L208
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sI(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L208
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L208
	movq	-24(%rbp), %rdx
	movq	sI+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L208
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
	je	.L209
.L208:
	call	abort
.L209:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$511, %ax
	sall	$7, %eax
	movl	%eax, %edx
	movzwl	sI(%rip), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movw	%ax, sI(%rip)
	movq	sI(%rip), %rax
	movq	sI+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	movzwl	sI(%rip), %eax
	shrw	$7, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L210
	movq	-24(%rbp), %rdx
	movq	sI+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L210
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L203
.L210:
	call	abort
.L203:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testI, .-testI
	.comm	sJ,4,2
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
	jmp	.L223
.L224:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L223:
	movl	-44(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L224
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
	jne	.L225
	movzwl	-48(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sJ(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	.L225
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L225
	movzwl	-46(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L225
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L226
.L225:
	call	abort
.L226:
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
	jne	.L227
	movzwl	-48(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sJ(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	.L227
	movzbl	-47(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L227
	movzwl	-46(%rbp), %edx
	movzwl	sJ+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L227
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
	je	.L228
.L227:
	call	abort
.L228:
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
	jne	.L229
	movzwl	-48(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sJ(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	.L229
	movzbl	sJ+1(%rip), %eax
	shrb	%al
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
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
	je	.L222
.L229:
	call	abort
.L222:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testJ, .-testJ
	.comm	sK,4,4
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
	jmp	.L242
.L243:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L242:
	movl	-44(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L243
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
	movl	%eax, %edx
	movzwl	sK+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L244
	movl	-48(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sK(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	.L244
	movzbl	-48(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L244
	movzbl	-48(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L244
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L245
.L244:
	call	abort
.L245:
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
	movl	%eax, %edx
	movzwl	sK+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L246
	movl	-48(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sK(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	.L246
	movzbl	-48(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L246
	movzbl	-48(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sK(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L246
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
	je	.L247
.L246:
	call	abort
.L247:
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
	movl	%eax, %edx
	movzwl	sK+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L248
	movl	-48(%rbp), %eax
	shrl	$7, %eax
	movl	%eax, %edx
	andw	$1023, %dx
	movl	sK(%rip), %eax
	shrl	$7, %eax
	andw	$1023, %ax
	cmpw	%ax, %dx
	jne	.L248
	movzbl	sK(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
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
	je	.L241
.L248:
	call	abort
.L241:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testK, .-testK
	.comm	sL,8,4
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
	jmp	.L261
.L262:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L261:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L262
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
	movl	%eax, %edx
	movzwl	sL+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L263
	movl	-32(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sL(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L263
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L263
	movl	-28(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	.L263
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L264
.L263:
	call	abort
.L264:
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
	movl	%eax, %edx
	movzwl	sL+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L265
	movl	-32(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sL(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L265
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L265
	movl	-28(%rbp), %edx
	movl	sL+4(%rip), %eax
	cmpl	%eax, %edx
	jne	.L265
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
	je	.L266
.L265:
	call	abort
.L266:
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
	movl	%eax, %edx
	movzwl	sL+2(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L267
	movl	-32(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sL(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L267
	movzbl	sL(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-36(%rbp), %eax
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
	je	.L260
.L267:
	call	abort
.L260:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testL, .-testL
	.comm	sM,8,4
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
	jmp	.L280
.L281:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L280:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L281
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
	movl	%eax, %edx
	movzwl	sM+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L282
	movl	-28(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sM+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L282
	movzbl	-28(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L282
	movl	-32(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	.L282
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L283
.L282:
	call	abort
.L283:
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
	movl	%eax, %edx
	movzwl	sM+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L284
	movl	-28(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sM+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L284
	movzbl	-28(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L284
	movl	-32(%rbp), %edx
	movl	sM(%rip), %eax
	cmpl	%eax, %edx
	jne	.L284
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
	je	.L285
.L284:
	call	abort
.L285:
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
	movl	%eax, %edx
	movzwl	sM+6(%rip), %eax
	shrw	%ax
	cmpw	%ax, %dx
	jne	.L286
	movl	-28(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sM+4(%rip), %eax
	shrl	$6, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L286
	movzbl	sM+4(%rip), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-36(%rbp), %eax
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
	je	.L279
.L286:
	call	abort
.L279:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testM, .-testM
	.comm	sN,8,8
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
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
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
	jmp	.L299
.L300:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -52(%rbp)
.L299:
	movl	-52(%rbp), %eax
	cmpl	$7, %eax
	jbe	.L300
	movzwl	sN(%rip), %eax
	orw	$4032, %ax
	movw	%ax, sN(%rip)
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn1N
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sN+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L301
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sN(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L301
	movzwl	-32(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L301
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L301
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	andl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L302
.L301:
	call	abort
.L302:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn2N
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sN+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L303
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sN(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L303
	movzwl	-32(%rbp), %eax
	shrw	$6, %ax
	movl	%eax, %edx
	andl	$63, %edx
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L303
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sN(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L303
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
	je	.L304
.L303:
	call	abort
.L304:
	call	myrnd
	movl	%eax, -44(%rbp)
	call	myrnd
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
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
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	fn3N
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	sN+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L305
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sN(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L305
	movzwl	sN(%rip), %eax
	shrw	$6, %ax
	andl	$63, %eax
	movzbl	%al, %eax
	cmpl	-36(%rbp), %eax
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
	je	.L298
.L305:
	call	abort
.L298:
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
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
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
	jmp	.L318
.L319:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L318:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L319
	movzwl	sO+8(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sO+8(%rip)
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sO+8(%rip)
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
	movl	%eax, %edx
	movl	sO+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L320
	movq	-24(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sO+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L320
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L320
	movq	-32(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L320
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L321
.L320:
	call	abort
.L321:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sO+8(%rip)
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
	movl	%eax, %edx
	movl	sO+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L322
	movq	-24(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sO+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L322
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L322
	movq	-32(%rbp), %rdx
	movq	sO(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L322
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
	je	.L323
.L322:
	call	abort
.L323:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sO+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sO+8(%rip)
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
	movl	%eax, %edx
	movl	sO+12(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L324
	movq	-24(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sO+8(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L324
	movzwl	sO+8(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
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
	je	.L317
.L324:
	call	abort
.L317:
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
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
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
	jmp	.L337
.L338:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L337:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L338
	movzwl	sP(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sP(%rip)
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sP(%rip)
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
	movl	%eax, %edx
	movl	sP+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L339
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sP(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L339
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L339
	movq	-24(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L339
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L340
.L339:
	call	abort
.L340:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sP(%rip)
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
	movl	%eax, %edx
	movl	sP+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L341
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sP(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L341
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L341
	movq	-24(%rbp), %rdx
	movq	sP+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L341
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
	je	.L342
.L341:
	call	abort
.L342:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sP(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sP(%rip)
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
	movl	%eax, %edx
	movl	sP+4(%rip), %eax
	shrl	$3, %eax
	cmpl	%eax, %edx
	jne	.L343
	movq	-32(%rbp), %rax
	shrq	$12, %rax
	movl	%eax, %edx
	andl	$8388607, %edx
	movq	sP(%rip), %rax
	shrq	$12, %rax
	andl	$8388607, %eax
	cmpl	%eax, %edx
	jne	.L343
	movzwl	sP(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
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
	je	.L336
.L343:
	call	abort
.L336:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testP, .-testP
	.comm	sQ,16,16
	.globl	retmeQ
	.type	retmeQ, @function
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
	.size	retmeQ, .-retmeQ
	.globl	fn1Q
	.type	fn1Q, @function
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
	.size	fn1Q, .-fn1Q
	.globl	fn2Q
	.type	fn2Q, @function
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
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
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
	jmp	.L356
.L357:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L356:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L357
	movzwl	sQ(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sQ(%rip)
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sQ(%rip)
	movq	sQ(%rip), %rax
	movq	sQ+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1Q
	movl	%eax, -44(%rbp)
	movzbl	-29(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sQ+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L358
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sQ(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L358
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L358
	movq	-24(%rbp), %rdx
	movq	sQ+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L358
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L359
.L358:
	call	abort
.L359:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sQ(%rip)
	movq	sQ(%rip), %rax
	movq	sQ+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2Q
	movl	%eax, -44(%rbp)
	movzbl	-29(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sQ+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L360
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sQ(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L360
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L360
	movq	-24(%rbp), %rdx
	movq	sQ+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L360
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
	je	.L361
.L360:
	call	abort
.L361:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sQ(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sQ(%rip)
	movq	sQ(%rip), %rax
	movq	sQ+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3Q
	movl	%eax, -44(%rbp)
	movzbl	-29(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	movzbl	sQ+3(%rip), %eax
	shrb	%al
	cmpb	%al, %dl
	jne	.L362
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sQ(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L362
	movzwl	sQ(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L362
	movq	-24(%rbp), %rdx
	movq	sQ+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L362
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L355
.L362:
	call	abort
.L355:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testQ, .-testQ
	.comm	sR,16,16
	.globl	retmeR
	.type	retmeR, @function
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
	.size	retmeR, .-retmeR
	.globl	fn1R
	.type	fn1R, @function
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
	.size	fn1R, .-fn1R
	.globl	fn2R
	.type	fn2R, @function
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
	.size	fn2R, .-fn2R
	.globl	retitR
	.type	retitR, @function
retitR:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
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
	jmp	.L375
.L376:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L375:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L376
	movzwl	sR(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sR(%rip)
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sR(%rip)
	movq	sR(%rip), %rax
	movq	sR+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1R
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sR+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L377
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sR(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L377
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L377
	movq	-24(%rbp), %rdx
	movq	sR+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L377
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L378
.L377:
	call	abort
.L378:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sR(%rip)
	movq	sR(%rip), %rax
	movq	sR+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2R
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sR+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L379
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sR(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L379
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L379
	movq	-24(%rbp), %rdx
	movq	sR+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L379
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
	je	.L380
.L379:
	call	abort
.L380:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sR(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sR(%rip)
	movq	sR(%rip), %rax
	movq	sR+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3R
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sR+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L381
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sR(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L381
	movzwl	sR(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L381
	movq	-24(%rbp), %rdx
	movq	sR+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L381
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L374
.L381:
	call	abort
.L374:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testR, .-testR
	.comm	sS,16,16
	.globl	retmeS
	.type	retmeS, @function
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
	.size	retmeS, .-retmeS
	.globl	fn1S
	.type	fn1S, @function
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
	.size	fn1S, .-fn1S
	.globl	fn2S
	.type	fn2S, @function
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
	jmp	.L394
.L395:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L394:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L395
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
	movq	sS+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1S
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sS(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L396
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L396
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L396
	movq	-24(%rbp), %rdx
	movq	sS+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L396
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L397
.L396:
	call	abort
.L397:
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
	movq	sS+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2S
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sS(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L398
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L398
	movzbl	-32(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L398
	movq	-24(%rbp), %rdx
	movq	sS+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L398
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
	je	.L399
.L398:
	call	abort
.L399:
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
	movq	sS+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3S
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sS(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L400
	movzbl	-32(%rbp), %eax
	shrb	%al
	movl	%eax, %edx
	andl	$63, %edx
	movzbl	sS(%rip), %eax
	shrb	%al
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L400
	movzbl	sS(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L400
	movq	-24(%rbp), %rdx
	movq	sS+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L400
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L393
.L400:
	call	abort
.L393:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testS, .-testS
	.comm	sT,4,2
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
	jmp	.L413
.L414:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L413:
	movl	-44(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L414
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
	jne	.L415
	movzwl	-48(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sT(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	.L415
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L415
	movzwl	-46(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L415
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L416
.L415:
	call	abort
.L416:
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
	jne	.L417
	movzwl	-48(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sT(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	.L417
	movzbl	-48(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L417
	movzwl	-46(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L417
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
	je	.L418
.L417:
	call	abort
.L418:
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
	jne	.L419
	movzwl	-48(%rbp), %eax
	shrw	%ax
	movl	%eax, %edx
	andb	$255, %dh
	movzwl	sT(%rip), %eax
	shrw	%ax
	andb	$255, %ah
	cmpb	%al, %dl
	jne	.L419
	movzbl	sT(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
	jne	.L419
	movzwl	-46(%rbp), %edx
	movzwl	sT+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L419
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L412
.L419:
	call	abort
.L412:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testT, .-testT
	.comm	sU,16,16
	.globl	retmeU
	.type	retmeU, @function
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
	.size	retmeU, .-retmeU
	.globl	fn1U
	.type	fn1U, @function
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
	.size	fn1U, .-fn1U
	.globl	fn2U
	.type	fn2U, @function
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
	jmp	.L432
.L433:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L432:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L433
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
	movq	sU+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1U
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sU(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L434
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L434
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L434
	movq	-24(%rbp), %rdx
	movq	sU+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L434
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L435
.L434:
	call	abort
.L435:
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
	movq	sU+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2U
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sU(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L436
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L436
	movzbl	-32(%rbp), %eax
	shrb	$6, %al
	movl	%eax, %edx
	andl	$1, %edx
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L436
	movq	-24(%rbp), %rdx
	movq	sU+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L436
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
	je	.L437
.L436:
	call	abort
.L437:
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
	movq	sU+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3U
	movl	%eax, -44(%rbp)
	movzwl	-32(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sU(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L438
	movzbl	-32(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %edx
	movzbl	sU(%rip), %eax
	andl	$63, %eax
	cmpb	%al, %dl
	jne	.L438
	movzbl	sU(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-44(%rbp), %eax
	jne	.L438
	movq	-24(%rbp), %rdx
	movq	sU+8(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L438
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L431
.L438:
	call	abort
.L431:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testU, .-testU
	.comm	sV,4,2
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
	jmp	.L451
.L452:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -44(%rbp)
.L451:
	movl	-44(%rbp), %eax
	cmpl	$3, %eax
	jbe	.L452
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
	jne	.L453
	movzbl	-48(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	.L453
	movzbl	-47(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L453
	movzwl	-46(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L453
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L454
.L453:
	call	abort
.L454:
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
	jne	.L455
	movzbl	-48(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	.L455
	movzbl	-47(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	cmpb	%al, %dl
	jne	.L455
	movzwl	-46(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L455
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
	je	.L456
.L455:
	call	abort
.L456:
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
	jne	.L457
	movzbl	-48(%rbp), %edx
	movzbl	sV(%rip), %eax
	cmpb	%al, %dl
	jne	.L457
	movzbl	sV+1(%rip), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	-28(%rbp), %eax
	jne	.L457
	movzwl	-46(%rbp), %edx
	movzwl	sV+2(%rip), %eax
	cmpw	%ax, %dx
	jne	.L457
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	andl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L450
.L457:
	call	abort
.L450:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testV, .-testV
	.comm	sW,16,16
	.globl	retmeW
	.type	retmeW, @function
retmeW:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	vmovq	%xmm0, %rsi
	movq	%rdi, %rcx
	movl	$0, %eax
	movl	$0, %edx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	vmovq	%rcx, %xmm0
	popq	%rbx
	popq	%rbp
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
	movq	sW+8(%rip), %rdx
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
	vmovq	%rdx, %xmm0
	movq	%rax, %rdi
	call	retmeW
	vmovq	%xmm0, %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
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
	movq	sW+8(%rip), %rdx
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
	.size	fn2W, .-fn2W
	.globl	retitW
	.type	retitW, @function
retitW:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sW+8(%rip), %eax
	andw	$4095, %ax
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
	movzwl	sW+8(%rip), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sW+8(%rip)
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
	jmp	.L470
.L471:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L470:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L471
	movabsq	$4617596992938311680, %rax
	movq	%rax, sW(%rip)
	movzwl	sW+8(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sW+8(%rip)
	movzwl	sW+8(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sW+8(%rip)
	movq	sW(%rip), %rax
	movq	sW+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	jne	.L472
	movl	-24(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sW+8(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L472
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L472
	movq	-32(%rbp), %rax
	movq	sW(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L472
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L472
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L473
.L472:
	call	abort
.L473:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sW+8(%rip)
	movq	sW(%rip), %rax
	movq	sW+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	jne	.L474
	movl	-24(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sW+8(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L474
	movzwl	-24(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+8(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L474
	movq	-32(%rbp), %rax
	movq	sW(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	.L474
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jne	.L474
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
	je	.L475
.L474:
	call	abort
.L475:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sW+8(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sW+8(%rip)
	movq	sW(%rip), %rax
	movq	sW+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	jne	.L476
	movl	-24(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sW+8(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L476
	movzwl	sW+8(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L476
	movq	-32(%rbp), %rax
	movq	sW(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L476
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L476
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L469
.L476:
	call	abort
.L469:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testW, .-testW
	.comm	sX,16,16
	.globl	retmeX
	.type	retmeX, @function
retmeX:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %rax
	vmovq	%xmm0, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rax
	movq	%rdi, %rdx
	vmovq	%rdx, %xmm0
	popq	%rbx
	popq	%rbp
	ret
	.size	retmeX, .-retmeX
	.globl	fn1X
	.type	fn1X, @function
fn1X:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sX(%rip), %rax
	movq	sX+8(%rip), %rdx
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
	vmovq	%rax, %xmm0
	call	retmeX
	movq	%rax, %rdx
	vmovq	%xmm0, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
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
	movq	sX+8(%rip), %rdx
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
	.size	fn2X, .-fn2X
	.globl	retitX
	.type	retitX, @function
retitX:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
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
	jmp	.L489
.L490:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L489:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L490
	movabsq	$4617596992938311680, %rax
	movq	%rax, sX+8(%rip)
	movzwl	sX(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sX(%rip)
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sX(%rip)
	movq	sX(%rip), %rax
	movq	sX+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	jne	.L491
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sX(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L491
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L491
	movq	-24(%rbp), %rax
	movq	sX+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L491
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L491
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L492
.L491:
	call	abort
.L492:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sX(%rip)
	movq	sX(%rip), %rax
	movq	sX+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	jne	.L493
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sX(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L493
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L493
	movq	-24(%rbp), %rax
	movq	sX+8(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	.L493
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jne	.L493
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
	je	.L494
.L493:
	call	abort
.L494:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sX(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sX(%rip)
	movq	sX(%rip), %rax
	movq	sX+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
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
	jne	.L495
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$8191, %dx
	movl	sX(%rip), %eax
	shrl	$12, %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L495
	movzwl	sX(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L495
	movq	-24(%rbp), %rax
	movq	sX+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L495
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L495
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L488
.L495:
	call	abort
.L488:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testX, .-testX
	.comm	sY,16,16
	.globl	retmeY
	.type	retmeY, @function
retmeY:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, %rax
	vmovq	%xmm0, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rcx, %rax
	movq	%rdi, %rdx
	vmovq	%rdx, %xmm0
	popq	%rbx
	popq	%rbp
	ret
	.size	retmeY, .-retmeY
	.globl	fn1Y
	.type	fn1Y, @function
fn1Y:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	sY(%rip), %rax
	movq	sY+8(%rip), %rdx
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
	vmovq	%rax, %xmm0
	call	retmeY
	movq	%rax, %rdx
	vmovq	%xmm0, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movzwl	-16(%rbp), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
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
	movq	sY+8(%rip), %rdx
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
	.size	fn2Y, .-fn2Y
	.globl	retitY
	.type	retitY, @function
retitY:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
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
	jmp	.L508
.L509:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L508:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L509
	movabsq	$4617596992938311680, %rax
	movq	%rax, sY+8(%rip)
	movzwl	sY(%rip), %eax
	orw	$4095, %ax
	movw	%ax, sY(%rip)
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sY(%rip)
	movq	sY(%rip), %rax
	movq	sY+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1Y
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sY+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L510
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sY(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L510
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L510
	movq	-24(%rbp), %rax
	movq	sY+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L510
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L510
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L511
.L510:
	call	abort
.L511:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sY(%rip)
	movq	sY(%rip), %rax
	movq	sY+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2Y
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sY+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L512
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sY(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L512
	movzwl	-32(%rbp), %eax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	cmpw	%ax, %dx
	jne	.L512
	movq	-24(%rbp), %rax
	movq	sY+8(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	.L512
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jne	.L512
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
	je	.L513
.L512:
	call	abort
.L513:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	andw	$4095, %ax
	movl	%eax, %edx
	movzwl	sY(%rip), %eax
	andw	$-4096, %ax
	orl	%edx, %eax
	movw	%ax, sY(%rip)
	movq	sY(%rip), %rax
	movq	sY+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3Y
	movl	%eax, -44(%rbp)
	movzwl	-30(%rbp), %eax
	shrw	$7, %ax
	movl	%eax, %edx
	movzwl	sY+2(%rip), %eax
	shrw	$7, %ax
	cmpw	%ax, %dx
	jne	.L514
	movl	-32(%rbp), %eax
	shrl	$12, %eax
	movl	%eax, %edx
	andw	$2047, %dx
	movl	sY(%rip), %eax
	shrl	$12, %eax
	andw	$2047, %ax
	cmpw	%ax, %dx
	jne	.L514
	movzwl	sY(%rip), %eax
	andw	$4095, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L514
	movq	-24(%rbp), %rax
	movq	sY+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L514
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L514
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L507
.L514:
	call	abort
.L507:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	testY, .-testY
	.comm	sZ,16,16
	.globl	retmeZ
	.type	retmeZ, @function
retmeZ:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	vmovq	%xmm0, %rsi
	movq	%rdi, %rcx
	movl	$0, %eax
	movl	$0, %edx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	vmovq	%rcx, %xmm0
	popq	%rbx
	popq	%rbp
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
	movq	sZ+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
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
	movq	-8(%rbp), %rax
	vmovq	%rdx, %xmm0
	movq	%rax, %rdi
	call	retmeZ
	vmovq	%xmm0, %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
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
	movq	sZ+8(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
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
	movzwl	sZ+10(%rip), %eax
	shrw	$4, %ax
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
	movzwl	sZ+10(%rip), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	sZ+10(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, sZ+10(%rip)
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
	jmp	.L527
.L528:
	movq	-40(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -40(%rbp)
	call	myrnd
	movb	%al, (%rbx)
	addl	$1, -60(%rbp)
.L527:
	movl	-60(%rbp), %eax
	cmpl	$15, %eax
	jbe	.L528
	movabsq	$4617596992938311680, %rax
	movq	%rax, sZ(%rip)
	movzwl	sZ+10(%rip), %eax
	orl	$-16, %eax
	movw	%ax, sZ+10(%rip)
	movzwl	sZ+10(%rip), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	movl	%eax, -56(%rbp)
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	sZ+10(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, sZ+10(%rip)
	movq	sZ(%rip), %rax
	movq	sZ+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn1Z
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %edx
	andl	$127, %edx
	movl	sZ+8(%rip), %eax
	shrl	$13, %eax
	andl	$127, %eax
	cmpb	%al, %dl
	jne	.L529
	movzwl	-24(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %edx
	movzwl	sZ+8(%rip), %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L529
	movzwl	-22(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movzwl	sZ+10(%rip), %eax
	shrw	$4, %ax
	cmpw	%ax, %dx
	jne	.L529
	movq	-32(%rbp), %rax
	movq	sZ(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L529
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L529
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L530
.L529:
	call	abort
.L530:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	sZ+10(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, sZ+10(%rip)
	movq	sZ(%rip), %rax
	movq	sZ+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn2Z
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %edx
	andl	$127, %edx
	movl	sZ+8(%rip), %eax
	shrl	$13, %eax
	andl	$127, %eax
	cmpb	%al, %dl
	jne	.L531
	movzwl	-24(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %edx
	movzwl	sZ+8(%rip), %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L531
	movzwl	-22(%rbp), %eax
	shrw	$4, %ax
	movl	%eax, %edx
	movzwl	sZ+10(%rip), %eax
	shrw	$4, %ax
	cmpw	%ax, %dx
	jne	.L531
	movq	-32(%rbp), %rax
	movq	sZ(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	.L531
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jne	.L531
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
	je	.L532
.L531:
	call	abort
.L532:
	call	myrnd
	movl	%eax, -52(%rbp)
	call	myrnd
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	andw	$4095, %ax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	sZ+10(%rip), %eax
	andl	$15, %eax
	orl	%edx, %eax
	movw	%ax, sZ+10(%rip)
	movq	sZ(%rip), %rax
	movq	sZ+8(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	fn3Z
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	shrl	$13, %eax
	movl	%eax, %edx
	andl	$127, %edx
	movl	sZ+8(%rip), %eax
	shrl	$13, %eax
	andl	$127, %eax
	cmpb	%al, %dl
	jne	.L533
	movzwl	-24(%rbp), %eax
	andw	$8191, %ax
	movl	%eax, %edx
	movzwl	sZ+8(%rip), %eax
	andw	$8191, %ax
	cmpw	%ax, %dx
	jne	.L533
	movzwl	sZ+10(%rip), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	cmpl	-44(%rbp), %eax
	jne	.L533
	movq	-32(%rbp), %rax
	movq	sZ(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L533
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	.L533
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	andl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L526
.L533:
	call	abort
.L526:
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
