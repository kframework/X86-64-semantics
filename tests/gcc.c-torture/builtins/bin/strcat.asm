	.file	"strcat.c"
	.text
	.globl	strcat
strcat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L2
L3:
	addq	$1, -8(%rbp)
L2:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	nop
L4:
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
	jne	L4
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	memset
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L7
L8:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L7:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L8
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	memcpy
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L11
L12:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L11:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L12
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	exit
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	nop
	popq	%rbp
	ret
	.globl	abort
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	nop
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
LC1:
	.string	""
LC2:
	.string	"hello world"
	.string	"XXX"
LC3:
	.string	"hello world 1111"
	.string	"XXX"
LC4:
	.string	"hello world 2222"
	.string	"XXX"
LC5:
	.string	"hello world 3333"
	.string	"XXX"
LC6:
	.string	"hello world: this is a test."
	.string	"X"
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
	movq	$LC1, -96(%rbp)
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
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L20
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
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
	jne	L22
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L23
L22:
	call	abort
L23:
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
	jne	L24
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L24
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L25
L24:
	call	abort
L25:
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
	jne	L26
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L26
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
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
	jne	L28
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L28
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
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
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L30
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L31
L30:
	call	abort
L31:
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
	leaq	-80(%rbp), %rdx
	addq	$5, %rdx
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
	movl	$842150432, (%rax)
	movw	$50, 4(%rax)
	leaq	-80(%rbp), %rax
	addq	$5, %rax
	cmpq	%rax, %rdx
	jne	L32
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L33
L32:
	call	abort
L33:
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
	jne	L34
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L34
	leaq	-80(%rbp), %rax
	movl	$20, %edx
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L35
L34:
	call	abort
L35:
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
	movl	$LC6, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L36
	call	abort
L36:
	movl	$1, $inside_main(%rip)
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
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L37
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L40
L37:
	call	abort
L40:
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L39
	call	__stack_chk_fail
L39:
	leave
	ret
