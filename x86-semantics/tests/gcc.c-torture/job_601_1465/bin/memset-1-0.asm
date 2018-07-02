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
	.comm	u,96,64
A:
	.byte	65
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	jmp	L40
L75:
	movl	$1, -8(%rbp)
	jmp	L41
L74:
	movl	$0, -12(%rbp)
	jmp	L42
L43:
	movl	-12(%rbp), %eax
	cltq
	movb	$97, u(%rax)
	addl	$1, -12(%rbp)
L42:
	movl	-12(%rbp), %eax
	cmpl	$95, %eax
	jbe	L43
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-32(%rbp), %rax
	je	L44
	call	abort
L44:
	movq	$u, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L45
L47:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L46
	call	abort
L46:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L45:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L47
	movl	$0, -12(%rbp)
	jmp	L48
L50:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L49
	call	abort
L49:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L48:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L50
	movl	$0, -12(%rbp)
	jmp	L51
L53:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L52
	call	abort
L52:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L51:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L53
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$u, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-32(%rbp), %rax
	je	L54
	call	abort
L54:
	movq	$u, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L55
L57:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L56
	call	abort
L56:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L55:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L57
	movl	$0, -12(%rbp)
	jmp	L58
L60:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	L59
	call	abort
L59:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L58:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L60
	movl	$0, -12(%rbp)
	jmp	L61
L63:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L62
	call	abort
L62:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L61:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L63
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-32(%rbp), %rax
	je	L64
	call	abort
L64:
	movq	$u, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L65
L67:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L66
	call	abort
L66:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L65:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L67
	movl	$0, -12(%rbp)
	jmp	L68
L70:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	L69
	call	abort
L69:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L68:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L70
	movl	$0, -12(%rbp)
	jmp	L71
L73:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L72
	call	abort
L72:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L71:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L73
	addl	$1, -8(%rbp)
L41:
	movl	-8(%rbp), %eax
	cmpl	$79, %eax
	jbe	L74
	addl	$1, -4(%rbp)
L40:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L75
	movl	$0, %edi
	call	exit
