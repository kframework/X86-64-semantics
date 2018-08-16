	.file	"strpbrk.c"
	.text
	.globl	strpbrk
	.type	strpbrk, @function
strpbrk:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L2
.L7:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L3
.L6:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L4
	movq	-24(%rbp), %rax
	jmp	.L5
.L4:
	addq	$1, -8(%rbp)
.L3:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	addq	$1, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	movl	$0, %eax
.L5:
	popq	%rbp
	ret
	.size	strpbrk, .-strpbrk
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
	.globl	fn
	.type	fn, @function
fn:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	strchr
	cmpq	-8(%rbp), %rax
	je	.L12
	call	abort
.L12:
	movq	-8(%rbp), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	strchr
	cmpq	-8(%rbp), %rax
	je	.L13
	call	abort
.L13:
	movq	-8(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	je	.L14
	call	abort
.L14:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	cmpq	%rax, %rdx
	je	.L15
	call	abort
.L15:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	cmpq	%rax, %rdx
	je	.L11
	call	abort
.L11:
	leave
	ret
	.size	fn, .-fn
	.section	.rodata
.LC0:
	.string	"hello world"
.LC1:
	.string	"bye bye world"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$.LC0, -32(%rbp)
	movq	$.LC1, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	-32(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fn
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L18
	call	__stack_chk_fail
.L18:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
