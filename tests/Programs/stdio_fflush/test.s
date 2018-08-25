	.file	"test.c"
	.section	.rodata
LC0:
	.string	"w"
LC1:
	.string	"example.txt"
LC2:
	.string	"test"
LC3:
	.string	"r"
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	movl	$LC2, %edi
	call	fwrite
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	fflush
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$LC3, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	fgets
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	$40, %rcx
	je	L3
L3:
	leave
	ret
