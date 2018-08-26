	.file	"memchr.c"
	.text
	.globl	memchr
memchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, -9(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L2
L5:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-9(%rbp), %al
	jne	L3
	movq	-8(%rbp), %rax
	jmp	L4
L3:
	addq	$1, -8(%rbp)
	subq	$1, -40(%rbp)
L2:
	cmpq	$0, -40(%rbp)
	jne	L5
	movl	$0, %eax
L4:
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
	.section	.rodata
LC0:
	.string	"hello world"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$LC0, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$11, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	memchr
	testq	%rax, %rax
	je	L10
	call	abort
L10:
	movq	-8(%rbp), %rax
	movl	$11, %edx
	movl	$111, %esi
	movq	%rax, %rdi
	call	memchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	je	L11
	call	abort
L11:
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	memchr
	testq	%rax, %rax
	je	L12
	call	abort
L12:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movl	$6, %edx
	movl	$111, %esi
	movq	%rax, %rdi
	call	memchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	cmpq	%rax, %rdx
	je	L13
	call	abort
L13:
	movq	-8(%rbp), %rax
	movl	$11, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	memchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	cmpq	%rax, %rdx
	je	L14
	call	abort
L14:
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movl	$100, %esi
	movq	%rax, %rdi
	call	memchr
	testq	%rax, %rax
	je	L15
	call	abort
L15:
	movq	-8(%rbp), %rax
	movl	$11, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr
	testq	%rax, %rax
	je	L16
	call	abort
L16:
	movq	-8(%rbp), %rax
	movl	$12, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	cmpq	%rax, %rdx
	je	L17
	call	abort
L17:
	movq	-8(%rbp), %rax
	movl	$11, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	memchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	L19
	call	abort
L19:
	nop
	leave
	ret
