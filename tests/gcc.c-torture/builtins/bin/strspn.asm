	.file	"strspn.c"
	.text
	.globl	strcspn
	.type	strcspn, @function
strcspn:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L2
.L8:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L3
.L6:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L4
	jmp	.L10
.L4:
	addq	$1, -8(%rbp)
.L3:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	jmp	.L7
.L10:
.L5:
	addq	$1, -16(%rbp)
.L2:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8
.L7:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	ret
	.size	strcspn, .-strcspn
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
	.section	.rodata
.LC0:
	.string	"hello world"
.LC1:
	.string	"hello"
.LC2:
	.string	"z"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$.LC0, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strspn
	cmpq	$5, %rax
	je	.L15
	call	abort
.L15:
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strspn
	cmpq	$1, %rax
	je	.L16
	call	abort
.L16:
	movq	-96(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strspn
	testq	%rax, %rax
	je	.L17
	call	abort
.L17:
	movq	-96(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	strspn
	cmpq	$11, %rax
	je	.L18
	call	abort
.L18:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	je	.L19
	call	abort
.L19:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	je	.L20
	call	abort
.L20:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	je	.L21
	call	abort
.L21:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	je	.L22
	call	abort
.L22:
	movq	-96(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strspn
	cmpq	$5, %rax
	je	.L14
	call	abort
.L14:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L24
	call	__stack_chk_fail
.L24:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
