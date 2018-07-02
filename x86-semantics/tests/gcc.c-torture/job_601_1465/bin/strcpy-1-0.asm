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
	.local	u1
	.comm	u1,112,64
	.local	u2
	.comm	u2,112,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	jmp	L40
L60:
	movl	$0, -8(%rbp)
	jmp	L41
L59:
	movl	$1, -12(%rbp)
	jmp	L42
L58:
	movl	$0, -16(%rbp)
	movb	$65, -25(%rbp)
	jmp	L43
L45:
	movl	-16(%rbp), %eax
	cltq
	movb	$97, u1(%rax)
	cmpb	$95, -25(%rbp)
	jle	L44
	movb	$65, -25(%rbp)
L44:
	movl	-16(%rbp), %eax
	cltq
	movzbl	-25(%rbp), %edx
	movb	%dl, u2(%rax)
	addl	$1, -16(%rbp)
	movzbl	-25(%rbp), %eax
	addl	$1, %eax
	movb	%al, -25(%rbp)
L43:
	movl	-16(%rbp), %eax
	cmpl	$96, %eax
	jbe	L45
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	movb	$0, u2(%rax)
	movl	-8(%rbp), %eax
	cltq
	leaq	u2(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	$u1, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u1, %rax
	cmpq	-40(%rbp), %rax
	je	L46
	call	abort
L46:
	movq	$u1, -24(%rbp)
	movl	$0, -16(%rbp)
	jmp	L47
L49:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L48
	call	abort
L48:
	addl	$1, -16(%rbp)
	addq	$1, -24(%rbp)
L47:
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L49
	movl	$0, -16(%rbp)
	movl	-8(%rbp), %eax
	addl	$65, %eax
	movb	%al, -25(%rbp)
	jmp	L50
L53:
	cmpb	$95, -25(%rbp)
	jle	L51
	movb	$65, -25(%rbp)
L51:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-25(%rbp), %al
	je	L52
	call	abort
L52:
	addl	$1, -16(%rbp)
	addq	$1, -24(%rbp)
	movzbl	-25(%rbp), %eax
	addl	$1, %eax
	movb	%al, -25(%rbp)
L50:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	L53
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L54
	call	abort
L54:
	movl	$0, -16(%rbp)
	jmp	L55
L57:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L56
	call	abort
L56:
	addl	$1, -16(%rbp)
	addq	$1, -24(%rbp)
L55:
	movl	-16(%rbp), %eax
	cmpl	$7, %eax
	jbe	L57
	addl	$1, -12(%rbp)
L42:
	movl	-12(%rbp), %eax
	cmpl	$79, %eax
	jbe	L58
	addl	$1, -8(%rbp)
L41:
	movl	-8(%rbp), %eax
	cmpl	$7, %eax
	jbe	L59
	addl	$1, -4(%rbp)
L40:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L60
	movl	$0, %edi
	call	exit
