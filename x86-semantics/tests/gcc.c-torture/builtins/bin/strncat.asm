	.file	"strncat.c"
	.text
	.globl	strncat
	.type	strncat, @function
strncat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movb	$0, -9(%rbp)
	jmp	.L2
.L3:
	addq	$1, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movb	$0, -9(%rbp)
	jmp	.L4
.L7:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	-9(%rbp), %edx
	movb	%dl, (%rax)
	cmpb	$0, -9(%rbp)
	jne	.L5
	movq	-8(%rbp), %rax
	jmp	.L6
.L5:
	subq	$1, -40(%rbp)
.L4:
	cmpq	$0, -40(%rbp)
	jne	.L7
	cmpb	$0, -9(%rbp)
	je	.L8
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.L8:
	movq	-8(%rbp), %rax
.L6:
	popq	%rbp
	ret
	.size	strncat, .-strncat
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
	.long	123
	.section	.rodata
.LC0:
	.string	"hello world"
.LC1:
	.string	""
.LC2:
	.string	"hello world"
	.string	"XXX"
.LC3:
	.string	"hello worldfoo"
	.string	"XXX"
.LC4:
	.string	"hello worldhello world"
	.string	"XXX"
.LC5:
	.string	"hello world world"
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
	movq	$.LC1, -96(%rbp)
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L13
	call	abort
.L13:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-96(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L14
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
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
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L16
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L16
	leaq	-80(%rbp), %rax
	movl	$15, %edx
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
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L18
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L18
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L19
.L18:
	call	abort
.L19:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	leaq	11(%rax), %rcx
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$5, %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L20
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L20
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L21
.L20:
	call	abort
.L21:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L22
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L22
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L23
.L22:
	call	abort
.L23:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L24
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L24
	movl	x(%rip), %eax
	cmpl	$124, %eax
	jne	.L24
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L25
.L24:
	call	abort
.L25:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$7303014, (%rax)
	leaq	-80(%rbp), %rax
	movl	$18, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L26
	call	abort
.L26:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$7303014, (%rax)
	leaq	-80(%rbp), %rax
	movl	$18, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L27
	call	abort
.L27:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-104(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L28
	leaq	-80(%rbp), %rax
	movl	$26, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L29
.L28:
	call	abort
.L29:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L30
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L30
	leaq	-80(%rbp), %rax
	movl	$26, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L31
.L30:
	call	abort
.L31:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L32
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L32
	leaq	-80(%rbp), %rax
	movl	$26, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L33
.L32:
	call	abort
.L33:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	leaq	5(%rax), %rcx
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$5, %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L34
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L34
	leaq	-80(%rbp), %rax
	movl	$21, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L35
.L34:
	call	abort
.L35:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	memset
	movq	-104(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L12
	call	abort
.L12:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L37
	call	__stack_chk_fail
.L37:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
