	.file	"20010124-1.c"
	.text
	.globl	f
	.type	f, @function
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1024, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	leave
	ret
	.size	f, .-f
	.globl	g
	.type	g, @function
g:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
	.size	g, .-g
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	inside_main(%rip), %eax
	testl	%eax, %eax
	je	.L5
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L6
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jbe	.L6
	call	abort
.L6:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L7
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jbe	.L7
	call	abort
.L7:
	movq	-24(%rbp), %rax
	jmp	.L8
.L5:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L9
.L10:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L9:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L10
	movq	-24(%rbp), %rax
.L8:
	leave
	ret
	.size	memcpy, .-memcpy
	.comm	inside_main,4,4
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, inside_main(%rip)
	call	main_test
	movl	$0, inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.globl	link_error
	.type	link_error, @function
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.size	link_error, .-link_error
	.globl	main_test
	.type	main_test, @function
main_test:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$2088, %rsp
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-2096(%rbp), %rax
	leaq	-1056(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	f
	leaq	-1056(%rbp), %rax
	leaq	-2096(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-2096(%rbp), %rax
	leaq	-1056(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	f
	leaq	-1052(%rbp), %rax
	leaq	-2096(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	g
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail
.L15:
	addq	$2088, %rsp
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
