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
	.comm	should_optimize,4,4
__vprintf_chk:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, should_optimize(%rip)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf
	leave
	ret
LC0:
	.string	"hello"
LC1:
	.string	"hello\n"
LC2:
	.string	"a"
LC3:
	.string	""
LC4:
	.string	"%s"
LC5:
	.string	"%c"
LC6:
	.string	"%s\n"
LC7:
	.string	"%d\n"
inner:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L42
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L42:
	movl	%edi, -228(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$8, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	cmpl	$10, -228(%rbp)
	ja	L43
	movl	-228(%rbp), %eax
	movq	L45(,%rax,8), %rax
	call %rax
L45:
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
L44:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC0, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L56
	call	abort.3323
L56:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC0, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$5, %eax
	je	L57
	call	abort.3323
L57:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L58
	call	abort.3323
	jmp	L41
L58:
	jmp	L41
L46:
	movl	$1, should_optimize(%rip)
	movl	$LC0, %edi
	call	puts
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L60
	call	abort.3323
L60:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC1, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$6, %eax
	je	L61
	call	abort.3323
L61:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L62
	call	abort.3323
	jmp	L41
L62:
	jmp	L41
L47:
	movl	$1, should_optimize(%rip)
	movl	$97, %edi
	call	putchar
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L63
	call	abort.3323
L63:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC2, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$1, %eax
	je	L64
	call	abort.3323
L64:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L65
	call	abort.3323
	jmp	L41
L65:
	jmp	L41
L48:
	movl	$1, should_optimize(%rip)
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L66
	call	abort.3323
L66:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC3, %esi
	movl	$1, %edi
	call	__vprintf_chk
	testl	%eax, %eax
	je	L67
	call	abort.3323
L67:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L68
	call	abort.3323
	jmp	L41
L68:
	jmp	L41
L49:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L69
	call	abort.3323
L69:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$5, %eax
	je	L70
	call	abort.3323
L70:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L71
	call	abort.3323
	jmp	L41
L71:
	jmp	L41
L50:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L72
	call	abort.3323
L72:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$6, %eax
	je	L73
	call	abort.3323
L73:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L74
	call	abort.3323
	jmp	L41
L74:
	jmp	L41
L51:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L75
	call	abort.3323
L75:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$1, %eax
	je	L76
	call	abort.3323
L76:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L77
	call	abort.3323
	jmp	L41
L77:
	jmp	L41
L52:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L78
	call	abort.3323
L78:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC4, %esi
	movl	$1, %edi
	call	__vprintf_chk
	testl	%eax, %eax
	je	L79
	call	abort.3323
L79:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L80
	call	abort.3323
	jmp	L41
L80:
	jmp	L41
L53:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC5, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L81
	call	abort.3323
L81:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC5, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$1, %eax
	je	L82
	call	abort.3323
L82:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L83
	call	abort.3323
	jmp	L41
L83:
	jmp	L41
L54:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC6, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L84
	call	abort.3323
L84:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC6, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$7, %eax
	je	L85
	call	abort.3323
L85:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L86
	call	abort.3323
	jmp	L41
L86:
	jmp	L41
L55:
	movl	$0, should_optimize(%rip)
	leaq	-200(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC7, %esi
	movl	$1, %edi
	call	__vprintf_chk
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L87
	call	abort.3323
L87:
	movl	$0, should_optimize(%rip)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC7, %esi
	movl	$1, %edi
	call	__vprintf_chk
	cmpl	$2, %eax
	je	L88
	call	abort.3323
L88:
	movl	should_optimize(%rip), %eax
	testl	%eax, %eax
	jne	L89
	call	abort.3323
	jmp	L41
L89:
	jmp	L41
L43:
	call	abort.3323
L41:
	leave
	ret
abort.3323:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	inner
	movl	$1, %edi
	movl	$0, %eax
	call	inner
	movl	$2, %edi
	movl	$0, %eax
	call	inner
	movl	$3, %edi
	movl	$0, %eax
	call	inner
	movl	$LC0, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	inner
	movl	$LC1, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	inner
	movl	$LC2, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	inner
	movl	$LC3, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	inner
	movl	$120, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	inner
	movl	$LC1, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	inner
	movl	$0, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	inner
	movl	$0, %eax
	popq	%rbp
	ret
