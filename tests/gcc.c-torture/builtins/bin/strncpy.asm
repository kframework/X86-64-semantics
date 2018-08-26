	.file	"strncpy.c"
	.text
	.globl	strncpy
strncpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L2
L4:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
L2:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L5
	cmpq	$0, -40(%rbp)
	jne	L4
	jmp	L5
L6:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
L5:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L6
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
	.comm	i,4,4
	.section	.rodata
LC0:
	.string	"hello world"
LC1:
	.string	"hellXXX"
LC2:
	.string	" worXXX"
LC3:
	.string	"XXX"
LC4:
	.string	"hello world"
	.string	"XXX"
LC5:
	.string	"xfoo"
LC6:
	.string	"bar"
LC7:
	.string	"bar"
	.string	"XXX"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$LC0, -104(%rbp)
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L12
	leaq	-80(%rbp), %rax
	movl	$7, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L13
L12:
	call	abort
L13:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movq	-104(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	L14
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movl	$7, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L15
L14:
	call	abort
L15:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	L16
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movl	$7, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L17
L16:
	call	abort
L17:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	L18
	movq	-96(%rbp), %rax
	movl	$7, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	L18
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	je	L19
L18:
	call	abort
L19:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L20
	leaq	-80(%rbp), %rax
	movl	$3, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L21
L20:
	call	abort
L21:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	L22
	movq	-96(%rbp), %rax
	movl	$3, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	L22
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jne	L22
	movq	-104(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	L23
L22:
	call	abort
L23:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	leaq	5(%rax), %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	L24
	movq	-96(%rbp), %rax
	addq	$5, %rax
	movl	$3, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	L24
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-96(%rbp), %rax
	jne	L24
	movq	-104(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	L25
L24:
	call	abort
L25:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L26
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L27
L26:
	call	abort
L27:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L28
	leaq	-80(%rbp), %rax
	movl	$7, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L29
L28:
	call	abort
L29:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movl $i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, $i(%rip)
	testl	%eax, %eax
	je	L30
	movl $LC5 + 1, %ecx
	jmp	L31
L30:
	movl	$LC6, %ecx
L31:
	leaq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L32
	leaq	-80(%rbp), %rax
	movl	$7, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	L32
	movl $i(%rip), %eax
	cmpl	$1, %eax
	je	L35
L32:
	call	abort
L35:
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L34
	call	__stack_chk_fail
L34:
	leave
	ret
