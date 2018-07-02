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
LC0:
	.string	"int"
LC1:
	.string	"char"
LC2:
	.string	"short"
LC3:
	.string	"long"
LC4:
	.string	"unsigned char"
LC5:
	.string	"signed char"
LC6:
	.string	"unsigned short"
LC7:
	.string	"unsigned int"
LC8:
	.string	"unsigned"
LC9:
	.string	"unsigned long"
LC10:
	.string	"void"
LC11:
	.string	"float"
LC12:
	.string	"double"
LC13:
	.string	"long double"
LC14:
	.string	"integer"
LC15:
	.string	"boolean"
LC16:
	.string	"short real"
LC17:
	.string	"real"
LC18:
	.string	"stringptr"
LC19:
	.string	"character"
LC20:
	.string	"logical*1"
LC21:
	.string	"logical*2"
LC22:
	.string	"logical*4"
LC23:
	.string	"logical"
LC24:
	.string	"complex"
LC25:
	.string	"double complex"
LC26:
	.string	"integer*1"
LC27:
	.string	"integer*2"
LC28:
	.string	"integer*4"
LC29:
	.string	"wchar"
LC30:
	.string	"long long"
LC31:
	.string	"unsigned long long"
LC32:
	.string	"logical*8"
LC33:
	.string	"integer*8"
stab_xcoff_builtin_type:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	L40
	cmpl	$-34, -20(%rbp)
	jge	L41
L40:
	movl	$0, %eax
	jmp	L42
L41:
	movl	-20(%rbp), %eax
	negl	%eax
	cmpl	$34, %eax
	ja	L43
	movl	%eax, %eax
	movq	L45(,%rax,8), %rax
	call %rax
L45:
	.quad	L43
	.quad	L44
	.quad	L46
	.quad	L47
	.quad	L48
	.quad	L49
	.quad	L50
	.quad	L51
	.quad	L52
	.quad	L53
	.quad	L54
	.quad	L55
	.quad	L56
	.quad	L57
	.quad	L58
	.quad	L59
	.quad	L60
	.quad	L61
	.quad	L62
	.quad	L63
	.quad	L64
	.quad	L65
	.quad	L66
	.quad	L67
	.quad	L68
	.quad	L69
	.quad	L70
	.quad	L71
	.quad	L72
	.quad	L73
	.quad	L74
	.quad	L75
	.quad	L76
	.quad	L77
	.quad	L78
L44:
	movq	$LC0, -8(%rbp)
	jmp	L43
L46:
	movq	$LC1, -8(%rbp)
L47:
	movq	$LC2, -8(%rbp)
	jmp	L43
L48:
	movq	$LC3, -8(%rbp)
L49:
	movq	$LC4, -8(%rbp)
L50:
	movq	$LC5, -8(%rbp)
L51:
	movq	$LC6, -8(%rbp)
L52:
	movq	$LC7, -8(%rbp)
L53:
	movq	$LC8, -8(%rbp)
L54:
	movq	$LC9, -8(%rbp)
L55:
	movq	$LC10, -8(%rbp)
L56:
	movq	$LC11, -8(%rbp)
L57:
	movq	$LC12, -8(%rbp)
L58:
	movq	$LC13, -8(%rbp)
L59:
	movq	$LC14, -8(%rbp)
L60:
	movq	$LC15, -8(%rbp)
L61:
	movq	$LC16, -8(%rbp)
L62:
	movq	$LC17, -8(%rbp)
L63:
	movq	$LC18, -8(%rbp)
L64:
	movq	$LC19, -8(%rbp)
L65:
	movq	$LC20, -8(%rbp)
L66:
	movq	$LC21, -8(%rbp)
L67:
	movq	$LC22, -8(%rbp)
L68:
	movq	$LC23, -8(%rbp)
L69:
	movq	$LC24, -8(%rbp)
L70:
	movq	$LC25, -8(%rbp)
L71:
	movq	$LC26, -8(%rbp)
L72:
	movq	$LC27, -8(%rbp)
L73:
	movq	$LC28, -8(%rbp)
L74:
	movq	$LC29, -8(%rbp)
L75:
	movq	$LC30, -8(%rbp)
L76:
	movq	$LC31, -8(%rbp)
L77:
	movq	$LC32, -8(%rbp)
L78:
	movq	$LC33, -8(%rbp)
L43:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
L42:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %edi
	call	stab_xcoff_builtin_type
	testl	%eax, %eax
	je	L80
	call	abort
L80:
	movl	$-1, %edi
	call	stab_xcoff_builtin_type
	cmpl	$105, %eax
	je	L81
	call	abort
L81:
	movl	$-2, %edi
	call	stab_xcoff_builtin_type
	cmpl	$115, %eax
	je	L82
	call	abort
L82:
	movl	$-3, %edi
	call	stab_xcoff_builtin_type
	cmpl	$115, %eax
	je	L83
	call	abort
L83:
	movl	$-4, -4(%rbp)
	jmp	L84
L86:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	stab_xcoff_builtin_type
	cmpl	$105, %eax
	je	L85
	call	abort
L85:
	subl	$1, -4(%rbp)
L84:
	cmpl	$-34, -4(%rbp)
	jge	L86
	movl	$-35, %edi
	call	stab_xcoff_builtin_type
	testl	%eax, %eax
	je	L87
	call	abort
L87:
	movl	$0, %eax
	leave
	ret
