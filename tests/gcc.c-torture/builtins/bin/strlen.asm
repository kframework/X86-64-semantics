	.file	"strlen.c"
	.text
	.globl	strlen
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L2
L3:
	addq	$1, -8(%rbp)
L2:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.comm	inside_main,4,4
	.globl	main
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $inside_main(%rip)
	call	main_test
	movl	$0, $inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.globl	link_error
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.globl	x
	.data
x:
	.long	6
	.section	.rodata
LC0:
	.string	"hello world"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$LC0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$11, %rax
	je	L9
	call	abort
L9:
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$7, %rax
	je	L10
	call	abort
L10:
	movl $x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, $x(%rip)
	cltq
	andl	$7, %eax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$5, %rax
	je	L11
	call	abort
L11:
	movl $x(%rip), %eax
	cmpl	$7, %eax
	je	L12
	call	abort
L12:
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
	jne	L13
	call	abort
L13:
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
	jne	L14
	call	abort
L14:
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
	jne	L15
	call	abort
L15:
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
	je	L16
	call	abort
L16:
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
	je	L17
	call	abort
L17:
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
	je	L18
	call	abort
L18:
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
	je	L21
	call	abort
L21:
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L20
	call	__stack_chk_fail
L20:
	leave
	ret
