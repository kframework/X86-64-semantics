	.file	"test.c"
	.section	.rodata
LC0:
	.string	"w"
LC1:
	.string	"file.txt"
LC2:
	.string	"We are in 2012"
LC3:
	.string	"r"
LC4:
	.string	"%s %s %s %d"
LC5:
	.string	"Read String1 |%s|\n"
LC6:
	.string	"Read String2 |%s|\n"
LC7:
	.string	"Read String3 |%s|\n"
LC8:
	.string	"Read Integer |%d|\n"
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	movl	$LC2, %edi
	call	fwrite
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$LC3, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -72(%rbp)
	leaq	-76(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_fscanf
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC5, %edi
	movl	$0, %eax
	call	printf
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC6, %edi
	movl	$0, %eax
	call	printf
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC7, %edi
	movl	$0, %eax
	call	printf
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	movl	$LC8, %edi
	movl	$0, %eax
	call	printf
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	$40, %rdx
	je	L3
L3:
	leave
	ret
