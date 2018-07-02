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
	.local	u
	.comm	u,32,32
A:
	.byte	65
reset:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L40
L41:
	movl	-4(%rbp), %eax
	cltq
	movb	$97, u(%rax)
	addl	$1, -4(%rbp)
L40:
	movl	-4(%rbp), %eax
	cmpl	$30, %eax
	jbe	L41
	popq	%rbp
	ret
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$u, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	L43
L45:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L44
	call	abort
L44:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L43:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	L45
	movl	$0, -12(%rbp)
	jmp	L46
L48:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-28(%rbp), %eax
	je	L47
	call	abort
L47:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L46:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L48
	movl	$0, -12(%rbp)
	jmp	L49
L51:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L50
	call	abort
L50:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L49:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L51
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L53
L57:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movb	$0, u(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L54
	call	abort
L54:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L55
	call	abort
L55:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movb	$66, u(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L56
	call	abort
L56:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L53:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L57
	movl	$0, -4(%rbp)
	jmp	L58
L62:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L59
	call	abort
L59:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$2, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L60
	call	abort
L60:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$2, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L61
	call	abort
L61:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L58:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L62
	movl	$0, -4(%rbp)
	jmp	L63
L67:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L64
	call	abort
L64:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$3, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L65
	call	abort
L65:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$3, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L66
	call	abort
L66:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L63:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L67
	movl	$0, -4(%rbp)
	jmp	L68
L72:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L69
	call	abort
L69:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$4, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L70
	call	abort
L70:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$4, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L71
	call	abort
L71:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L68:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L72
	movl	$0, -4(%rbp)
	jmp	L73
L77:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$5, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L74
	call	abort
L74:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$5, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L75
	call	abort
L75:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$5, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L76
	call	abort
L76:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L73:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L77
	movl	$0, -4(%rbp)
	jmp	L78
L82:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L79
	call	abort
L79:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$6, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L80
	call	abort
L80:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$6, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L81
	call	abort
L81:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L78:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L82
	movl	$0, -4(%rbp)
	jmp	L83
L87:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L84
	call	abort
L84:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$7, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L85
	call	abort
L85:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$7, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L86
	call	abort
L86:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L83:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L87
	movl	$0, -4(%rbp)
	jmp	L88
L92:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L89
	call	abort
L89:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$8, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L90
	call	abort
L90:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$8, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L91
	call	abort
L91:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L88:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L92
	movl	$0, -4(%rbp)
	jmp	L93
L97:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$9, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L94
	call	abort
L94:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$9, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L95
	call	abort
L95:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$9, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L96
	call	abort
L96:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L93:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L97
	movl	$0, -4(%rbp)
	jmp	L98
L102:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L99
	call	abort
L99:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$10, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L100
	call	abort
L100:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$10, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L101
	call	abort
L101:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L98:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L102
	movl	$0, -4(%rbp)
	jmp	L103
L107:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$11, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L104
	call	abort
L104:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$11, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L105
	call	abort
L105:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$11, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L106
	call	abort
L106:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L103:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L107
	movl	$0, -4(%rbp)
	jmp	L108
L112:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$12, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L109
	call	abort
L109:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$12, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L110
	call	abort
L110:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$12, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L111
	call	abort
L111:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L108:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L112
	movl	$0, -4(%rbp)
	jmp	L113
L117:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$13, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L114
	call	abort
L114:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$13, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L115
	call	abort
L115:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$13, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L116
	call	abort
L116:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L113:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L117
	movl	$0, -4(%rbp)
	jmp	L118
L122:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$14, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L119
	call	abort
L119:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$14, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L120
	call	abort
L120:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$14, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L121
	call	abort
L121:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L118:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L122
	movl	$0, -4(%rbp)
	jmp	L123
L127:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$15, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L124
	call	abort
L124:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$15, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L125
	call	abort
L125:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$15, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L126
	call	abort
L126:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L123:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L127
	movl	$0, %edi
	call	exit
