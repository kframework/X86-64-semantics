	.file	"strlen.c"
	.text
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L3:
	addq	$1, -8(%rbp)
.L2:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
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
	.globl	x
	.data
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.long	6
	.section	.rodata
.LC0:
	.string	"hello world"
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$11, %rax
	je	.L9
	call	abort
.L9:
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$7, %rax
	je	.L10
	call	abort
.L10:
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$7, %eax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$5, %rax
	je	.L11
	call	abort
.L11:
	movl	x(%rip), %eax
	cmpl	$7, %eax
	je	.L12
	call	abort
.L12:
	leaq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$110, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$116, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movb	$115, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L13
	call	abort
.L13:
	movq	-24(%rbp), %rax
	movb	$110, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$116, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movb	$115, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L14
	call	abort
.L14:
	movq	-24(%rbp), %rax
	movb	$110, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$116, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movb	$115, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L15
	call	abort
.L15:
	movq	-24(%rbp), %rax
	movb	$110, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$116, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movb	$115, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	call	abort
.L16:
	movq	-24(%rbp), %rax
	movb	$110, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$116, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movb	$115, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L17
	call	abort
.L17:
	movq	-24(%rbp), %rax
	movb	$110, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$116, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movb	$115, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	leaq	-16(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L18
	call	abort
.L18:
	movq	-32(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	cmpq	$11, %rax
	je	.L8
	call	abort
.L8:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail
.L20:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
