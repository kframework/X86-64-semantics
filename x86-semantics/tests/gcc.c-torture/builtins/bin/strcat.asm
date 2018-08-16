	.file	"strcat.c"
	.text
	.globl	strcat
	.type	strcat, @function
strcat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L3:
	addq	$1, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	nop
.L4:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	strcat, .-strcat
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
	.string	""
.LC2:
	.string	"hello world"
	.string	"XXX"
.LC3:
	.string	"hello world 1111"
	.string	"XXX"
.LC4:
	.string	"hello world 2222"
	.string	"XXX"
.LC5:
	.string	"hello world 3333"
	.string	"XXX"
	.align 8
.LC6:
	.string	"hello world: this is a test."
	.string	"X"
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
	je	.L10
	call	abort
.L10:
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
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L11
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L12
.L11:
	call	abort
.L12:
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
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L13
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L13
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L14
.L13:
	call	abort
.L14:
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
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L15
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L15
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L16
.L15:
	call	abort
.L16:
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
	leaq	11(%rax), %rdx
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$5, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L17
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L17
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L18
.L17:
	call	abort
.L18:
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
	movl	$825307424, (%rax)
	movw	$49, 4(%rax)
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L19
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
	addq	$5, %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	leaq	5(%rax), %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$842150432, (%rax)
	movw	$50, 4(%rax)
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$.LC4, %esi
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
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$858993440, (%rax)
	movw	$51, 4(%rax)
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	.L21
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jne	.L21
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L22
.L21:
	call	abort
.L22:
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
	movabsq	$9134095815942202, %rcx
	movq	%rcx, (%rax)
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$2126697, (%rax)
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$8289, (%rax)
	movb	$0, 2(%rax)
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$1953719668, (%rax)
	movb	$0, 4(%rax)
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$46, (%rax)
	leaq	-80(%rbp), %rax
	movl	$30, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L23
	call	abort
.L23:
	movl	$1, inside_main(%rip)
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
	je	.L9
	call	abort
.L9:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L25
	call	__stack_chk_fail
.L25:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
