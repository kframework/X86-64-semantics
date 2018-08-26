	.file	"strncat.c"
	.text
	.globl	strncat
strncat:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movb	$0, -9(%rbp)
	jmp	L2
L3:
	addq	$1, -24(%rbp)
L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movb	$0, -9(%rbp)
	jmp	L4
L7:
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
	jne	L5
	movq	-8(%rbp), %rax
	jmp	L6
L5:
	subq	$1, -40(%rbp)
L4:
	cmpq	$0, -40(%rbp)
	jne	L7
	cmpb	$0, -9(%rbp)
	je	L8
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
L8:
	movq	-8(%rbp), %rax
L6:
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
	jmp	L10
L11:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L10:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L11
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
	jmp	L14
L15:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L14:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L15
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	memcmp
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L18
L21:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L19
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L20
L19:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
L18:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L21
	movl	$0, %eax
L20:
	popq	%rbp
	ret
	.globl	strchr
strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	cmpb	%dl, %al
	je	L27
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L24
	movl	$0, %eax
	jmp	L22
L24:
	movq	-8(%rbp), %rax
	jmp	L22
L27:
L22:
	popq	%rbp
	ret
	.globl	strlen
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L29
L30:
	addq	$1, -8(%rbp)
L29:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L30
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	strcpy
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L33:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L33
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.globl	strcmp
strcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	L36
L38:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L36:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L37
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L38
L37:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
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
	.long	123
	.section	.rodata
LC0:
	.string	"hello world"
LC1:
	.string	""
LC2:
	.string	"hello world"
	.string	"XXX"
LC3:
	.string	"hello worldfoo"
	.string	"XXX"
LC4:
	.string	"hello worldhello world"
	.string	"XXX"
LC5:
	.string	"hello world world"
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
	jne	L44
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L45
L44:
	call	abort
L45:
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
	jne	L46
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L47
L46:
	call	abort
L47:
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
	jne	L48
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L48
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L49
L48:
	call	abort
L49:
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
	jne	L50
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L50
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L51
L50:
	call	abort
L51:
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
	jne	L52
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L52
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L53
L52:
	call	abort
L53:
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
	jne	L54
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L54
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L55
L54:
	call	abort
L55:
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
	movl $x(%rip), %eax
	addl	$1, %eax
	movl	%eax, $x(%rip)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	5(%rax), %rdx
	leaq	-80(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	jne	L56
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L56
	movl $x(%rip), %eax
	cmpl	$124, %eax
	jne	L56
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L57
L56:
	call	abort
L57:
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
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L58
	leaq	-80(%rbp), %rax
	movl	$18, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L59
L58:
	call	abort
L59:
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
	leaq	-80(%rbp), %rdx
	leaq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L60
	leaq	-80(%rbp), %rax
	movl	$18, %edx
	movl	$LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L61
L60:
	call	abort
L61:
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
	jne	L62
	leaq	-80(%rbp), %rax
	movl	$26, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L63
L62:
	call	abort
L63:
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
	jne	L64
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L64
	leaq	-80(%rbp), %rax
	movl	$26, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L65
L64:
	call	abort
L65:
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
	jne	L66
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L66
	leaq	-80(%rbp), %rax
	movl	$26, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L67
L66:
	call	abort
L67:
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
	jne	L68
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jne	L68
	leaq	-80(%rbp), %rax
	movl	$21, %edx
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L69
L68:
	call	abort
L69:
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
	jne	L70
	leaq	-80(%rbp), %rax
	movl	$15, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L73
L70:
	call	abort
L73:
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L72
	call	__stack_chk_fail
L72:
	leave
	ret
