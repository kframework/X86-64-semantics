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
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u, -16(%rbp)
	je	L54
	call	abort
L54:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u, -16(%rbp)
	je	L55
	call	abort
L55:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u, -16(%rbp)
	je	L56
	call	abort
L56:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	check
	addl	$1, -4(%rbp)
L53:
	cmpl	$14, -4(%rbp)
	jle	L57
	movl	$0, -4(%rbp)
	jmp	L58
L62:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+1, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+1, -16(%rbp)
	je	L59
	call	abort
L59:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+1, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+1, -16(%rbp)
	je	L60
	call	abort
L60:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+1, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+1, -16(%rbp)
	je	L61
	call	abort
L61:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	check
	addl	$1, -4(%rbp)
L58:
	cmpl	$14, -4(%rbp)
	jle	L62
	movl	$0, -4(%rbp)
	jmp	L63
L67:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+2, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+2, -16(%rbp)
	je	L64
	call	abort
L64:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+2, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+2, -16(%rbp)
	je	L65
	call	abort
L65:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+2, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+2, -16(%rbp)
	je	L66
	call	abort
L66:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	check
	addl	$1, -4(%rbp)
L63:
	cmpl	$14, -4(%rbp)
	jle	L67
	movl	$0, -4(%rbp)
	jmp	L68
L72:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+3, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+3, -16(%rbp)
	je	L69
	call	abort
L69:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+3, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+3, -16(%rbp)
	je	L70
	call	abort
L70:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+3, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+3, -16(%rbp)
	je	L71
	call	abort
L71:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$3, %edi
	call	check
	addl	$1, -4(%rbp)
L68:
	cmpl	$14, -4(%rbp)
	jle	L72
	movl	$0, -4(%rbp)
	jmp	L73
L77:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+4, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+4, -16(%rbp)
	je	L74
	call	abort
L74:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+4, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+4, -16(%rbp)
	je	L75
	call	abort
L75:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+4, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+4, -16(%rbp)
	je	L76
	call	abort
L76:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$4, %edi
	call	check
	addl	$1, -4(%rbp)
L73:
	cmpl	$14, -4(%rbp)
	jle	L77
	movl	$0, -4(%rbp)
	jmp	L78
L82:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+5, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+5, -16(%rbp)
	je	L79
	call	abort
L79:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+5, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+5, -16(%rbp)
	je	L80
	call	abort
L80:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+5, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+5, -16(%rbp)
	je	L81
	call	abort
L81:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$5, %edi
	call	check
	addl	$1, -4(%rbp)
L78:
	cmpl	$14, -4(%rbp)
	jle	L82
	movl	$0, -4(%rbp)
	jmp	L83
L87:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+6, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+6, -16(%rbp)
	je	L84
	call	abort
L84:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+6, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+6, -16(%rbp)
	je	L85
	call	abort
L85:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+6, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+6, -16(%rbp)
	je	L86
	call	abort
L86:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$6, %edi
	call	check
	addl	$1, -4(%rbp)
L83:
	cmpl	$14, -4(%rbp)
	jle	L87
	movl	$0, -4(%rbp)
	jmp	L88
L92:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$u+7, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+7, -16(%rbp)
	je	L89
	call	abort
L89:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$u+7, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+7, -16(%rbp)
	je	L90
	call	abort
L90:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdx
	movl	$66, %esi
	movl	$u+7, %edi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$u+7, -16(%rbp)
	je	L91
	call	abort
L91:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	%eax, %esi
	movl	$7, %edi
	call	check
	addl	$1, -4(%rbp)
L88:
	cmpl	$14, -4(%rbp)
	jle	L92
	movl	$0, %edi
	call	exit
