	.file	"fputs.c"
	.text
	.globl	fputs
	.type	fputs, @function
fputs:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L2
	movl	$-1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	leave
	ret
	.size	fputs, .-fputs
	.globl	fputs_unlocked
	.type	fputs_unlocked, @function
fputs_unlocked:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	leave
	ret
	.size	fputs_unlocked, .-fputs_unlocked
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
	.comm	i,4,4
	.section	.rodata
.LC0:
	.string	"hello world"
.LC1:
	.string	"bye"
.LC2:
	.string	"hello\n"
.LC3:
	.string	"f"
.LC4:
	.string	"x"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	stdout(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$.LC0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$5, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fputs
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$10, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fputs
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$11, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fputs
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -48(%rbp)
	jne	.L11
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L12
.L11:
	call	abort
.L12:
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -48(%rbp)
	jne	.L13
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L14
.L13:
	call	abort
.L14:
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movl	$.LC2, %edi
	call	fwrite
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -48(%rbp)
	jne	.L15
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
.L15:
	call	abort
.L16:
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movl	$.LC2, %edi
	call	fwrite
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	(%rax), %rdx
	movl	i(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, i(%rip)
	testl	%eax, %eax
	je	.L17
	movl	$.LC3, %eax
	jmp	.L18
.L17:
	movl	$.LC4, %eax
.L18:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -48(%rbp)
	jne	.L19
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movl	i(%rip), %eax
	cmpl	$1, %eax
	je	.L20
.L19:
	call	abort
.L20:
	subq	$8, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	i(%rip), %edx
	subl	$1, %edx
	movl	%edx, i(%rip)
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	leaq	-32(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L21
	movl	i(%rip), %eax
	testl	%eax, %eax
	je	.L10
.L21:
	call	abort
.L10:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail
.L23:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
