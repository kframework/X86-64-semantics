	.file	"strncpy.c"
	.text
	.globl	strncpy
	.type	strncpy, @function
strncpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L4:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	subq	$1, -40(%rbp)
.L2:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L3
	cmpq	$0, -40(%rbp)
	jne	.L4
.L3:
	jmp	.L5
.L6:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
.L5:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L6
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strncpy, .-strncpy
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
	.string	"hellXXX"
.LC2:
	.string	" worXXX"
.LC3:
	.string	"XXX"
.LC4:
	.string	"hello world"
	.string	"XXX"
.LC5:
	.string	"xfoo"
.LC6:
	.string	"bar"
.LC7:
	.string	"bar"
	.string	"XXX"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$.LC0, -104(%rbp)
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
	jne	.L12
	leaq	-80(%rbp), %rax
	movl	$7, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L13
.L12:
	call	abort
.L13:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rax
	leaq	-80(%rbp), %rdx
	leaq	16(%rdx), %rcx
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L14
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movl	$7, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L15
.L14:
	call	abort
.L15:
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
	jne	.L16
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movl	$7, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L17
.L16:
	call	abort
.L17:
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
	jne	.L18
	movq	-96(%rbp), %rax
	movl	$7, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L18
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -96(%rbp)
	je	.L19
.L18:
	call	abort
.L19:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-80(%rbp), %rax
	movl	$3, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L20
	call	abort
.L20:
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
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -96(%rbp)
	jne	.L21
	movq	-96(%rbp), %rax
	movl	$3, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L21
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -96(%rbp)
	jne	.L21
	movq	-104(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	.L22
.L21:
	call	abort
.L22:
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
	jne	.L23
	movq	-96(%rbp), %rax
	addq	$5, %rax
	movl	$3, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L23
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -96(%rbp)
	jne	.L23
	movq	-104(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	.L24
.L23:
	call	abort
.L24:
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
	jne	.L25
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L26
.L25:
	call	abort
.L26:
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
	jne	.L27
	leaq	-80(%rbp), %rax
	movl	$7, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L28
.L27:
	call	abort
.L28:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movl	i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, i(%rip)
	testl	%eax, %eax
	je	.L29
	movl	$.LC5+1, %edx
	jmp	.L30
.L29:
	movl	$.LC6, %edx
.L30:
	leaq	-80(%rbp), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L31
	leaq	-80(%rbp), %rax
	movl	$7, %edx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L31
	movl	i(%rip), %eax
	cmpl	$1, %eax
	je	.L11
.L31:
	call	abort
.L11:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail
.L33:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
