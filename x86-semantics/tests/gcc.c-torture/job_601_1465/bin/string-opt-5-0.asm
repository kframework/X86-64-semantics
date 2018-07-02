strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
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
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
x:
	.long	6
y:
	.long	1
LC0:
	.string	"hi world"
bar:
	.quad	LC0
	.comm	buf,64,64
LC1:
	.string	"hello world"
LC2:
	.string	"lo world"
LC3:
	.string	"ello world"
LC4:
	.string	"ello "
LC5:
	.string	"foo"
LC6:
	.string	" oo"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" "
LC7:
	.string	"hello"
LC8:
	.string	"hello"
	.string	""
	.string	""
	.string	" "
LC9:
	.string	"!!!"
LC10:
	.string	"!!!--------"
LC11:
	.string	"---"
	.string	""
	.string	""
	.string	""
LC12:
	.string	"-"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$LC1, -8(%rbp)
	movq	bar(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$8, %rax
	je	L40
	call	abort
L40:
	movq	bar(%rip), %rax
	movl	x(%rip), %edx
	addl	$1, %edx
	movl	%edx, x(%rip)
	movl	x(%rip), %edx
	movslq	%edx, %rdx
	andl	$2, %edx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$6, %rax
	je	L41
	call	abort
L41:
	movl	x(%rip), %eax
	cmpl	$7, %eax
	je	L42
	call	abort
L42:
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$5, %rax
	je	L43
	call	abort
L43:
	movl	x(%rip), %eax
	cmpl	$8, %eax
	je	L44
	call	abort
L44:
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	cltq
	andl	$1, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$10, %rax
	je	L45
	call	abort
L45:
	movl	x(%rip), %eax
	cmpl	$9, %eax
	je	L46
	call	abort
L46:
	movl	x(%rip), %eax
	subl	$6, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L47
	call	abort
L47:
	movl	x(%rip), %eax
	cmpl	$3, %eax
	je	L48
	call	abort
L48:
	movq	bar(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	js	L49
	call	abort
L49:
	movq	bar(%rip), %rcx
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$1, %eax
	leaq	(%rcx,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	js	L50
	call	abort
L50:
	movl	x(%rip), %eax
	cmpl	$4, %eax
	je	L51
	call	abort
L51:
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$7, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	strchr
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	cmpq	%rdx, %rax
	je	L52
	call	abort
L52:
	movl	x(%rip), %eax
	cmpl	$5, %eax
	je	L53
	call	abort
L53:
	movq	bar(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strchr
	movq	bar(%rip), %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rax
	je	L54
	call	abort
L54:
	movq	bar(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	bar(%rip), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	L55
	call	abort
L55:
	movq	bar(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	strrchr
	testq	%rax, %rax
	je	L56
	call	abort
L56:
	movq	bar(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	bar(%rip), %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rax
	je	L57
	call	abort
L57:
	movl	y(%rip), %eax
	subl	$1, %eax
	movl	%eax, y(%rip)
	movl	y(%rip), %eax
	cltq
	andl	$1, %eax
	leaq	LC3(%rax), %rcx
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$1, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L58
	call	abort
L58:
	movl	x(%rip), %eax
	cmpl	$6, %eax
	jne	L59
	movl	y(%rip), %eax
	testl	%eax, %eax
	je	L60
L59:
	call	abort
L60:
	movb	$32, -75(%rbp)
	movb	$0, -74(%rbp)
	movl	$5, x(%rip)
	movl	$1, y(%rip)
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$3, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leaq	-80(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L61
	movl	x(%rip), %eax
	cmpl	$6, %eax
	jne	L61
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L62
L61:
	call	abort
L62:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
	cltq
	andl	$3, %eax
	leaq	LC5(%rax), %rcx
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	cltq
	andl	$1, %eax
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leaq	-80(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L63
	movl	x(%rip), %eax
	cmpl	$7, %eax
	jne	L63
	movl	y(%rip), %eax
	cmpl	$2, %eax
	jne	L63
	leaq	-80(%rbp), %rax
	movl	$12, %edx
	movl	$LC6, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L64
L63:
	call	abort
L64:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-80(%rbp), %rax
	movl	$8, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	strncpy
	leaq	-80(%rbp), %rdx
	cmpq	%rdx, %rax
	jne	L65
	leaq	-80(%rbp), %rax
	movl	$9, %edx
	movl	$LC8, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L66
L65:
	call	abort
L66:
	movl	$33, x(%rip)
	movl	$64, %edx
	movl	$32, %esi
	movl	$buf, %edi
	call	memset
	movl	y(%rip), %eax
	addl	$1, %eax
	movl	%eax, y(%rip)
	movl	y(%rip), %eax
	movslq	%eax, %rdx
	movl	x(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, x(%rip)
	movl	%eax, %esi
	movl	$buf, %edi
	call	memset
	cmpq	$buf, %rax
	jne	L67
	movl	x(%rip), %eax
	cmpl	$34, %eax
	jne	L67
	movl	y(%rip), %eax
	cmpl	$3, %eax
	jne	L67
	movl	$3, %edx
	movl	$LC9, %esi
	movl	$buf, %edi
	call	memcmp
	testl	%eax, %eax
	je	L68
L67:
	call	abort
L68:
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
	cltq
	addq	$buf, %rax
	movl	$8, %edx
	movl	$45, %esi
	movq	%rax, %rdi
	call	memset
	cmpq	$buf+3, %rax
	jne	L69
	movl	y(%rip), %eax
	cmpl	$4, %eax
	jne	L69
	movl	$11, %edx
	movl	$LC10, %esi
	movl	$buf, %edi
	call	memcmp
	testl	%eax, %eax
	je	L70
L69:
	call	abort
L70:
	movl	$10, x(%rip)
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
	cltq
	movl	x(%rip), %edx
	addl	$1, %edx
	movl	%edx, x(%rip)
	movl	x(%rip), %edx
	movslq	%edx, %rdx
	leaq	buf(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset
	cmpq	$buf+11, %rax
	jne	L71
	movl	x(%rip), %eax
	cmpl	$11, %eax
	jne	L71
	movl	y(%rip), %eax
	cmpl	$5, %eax
	jne	L71
	movl	$7, %edx
	movl	$LC11, %esi
	movl	$buf+8, %edi
	call	memcmp
	testl	%eax, %eax
	je	L72
L71:
	call	abort
L72:
	movl	x(%rip), %eax
	addl	$4, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	cltq
	addq	$buf, %rax
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	cmpq	$buf+15, %rax
	jne	L73
	movl	x(%rip), %eax
	cmpl	$15, %eax
	jne	L73
	movl	$11, %edx
	movl	$LC12, %esi
	movl	$buf+10, %edi
	call	memcmp
	testl	%eax, %eax
	je	L74
L73:
	call	abort
L74:
	movl	$0, %eax
	leave
	ret
