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
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L40
L43:
	subq	$1, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	L41
	movl	-4(%rbp), %eax
	jmp	L42
L41:
	addl	$1, -4(%rbp)
L40:
	cmpl	$9, -4(%rbp)
	jle	L43
	movl	$-1, %eax
L42:
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L45
L48:
	subq	$1, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	je	L46
	movl	-4(%rbp), %eax
	jmp	L47
L46:
	addl	$1, -4(%rbp)
L45:
	cmpl	$9, -4(%rbp)
	jle	L48
	movl	$-1, %eax
L47:
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L50
L53:
	subq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L51
	movl	-4(%rbp), %eax
	jmp	L52
L51:
	addl	$1, -4(%rbp)
L50:
	cmpl	$9, -4(%rbp)
	jle	L53
	movl	$-1, %eax
L52:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L55
L58:
	subq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	L56
	movl	-4(%rbp), %eax
	jmp	L57
L56:
	addl	$1, -4(%rbp)
L55:
	cmpl	$9, -4(%rbp)
	jle	L58
	movl	$-1, %eax
L57:
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L60
L63:
	addq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L61
	movl	-4(%rbp), %eax
	jmp	L62
L61:
	addl	$1, -4(%rbp)
L60:
	cmpl	$9, -4(%rbp)
	jle	L63
	movl	$-1, %eax
L62:
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L65
L68:
	addq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	L66
	movl	-4(%rbp), %eax
	jmp	L67
L66:
	addl	$1, -4(%rbp)
L65:
	cmpl	$9, -4(%rbp)
	jle	L68
	movl	$-1, %eax
L67:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, %edi
	movl	$0, %eax
	call	f1
	cmpl	$5, %eax
	je	L70
	call	abort
L70:
	movl	$1, %edi
	movl	$0, %eax
	call	f2
	testl	%eax, %eax
	je	L71
	call	abort
L71:
	movl	$0, %edi
	movl	$0, %eax
	call	f2
	cmpl	$1, %eax
	je	L72
	call	abort
L72:
	movl	$5, %edi
	movl	$0, %eax
	call	f3
	cmpl	$4, %eax
	je	L73
	call	abort
L73:
	movl	$1, %edi
	movl	$0, %eax
	call	f4
	cmpl	$1, %eax
	je	L74
	call	abort
L74:
	movl	$0, %edi
	movl	$0, %eax
	call	f4
	testl	%eax, %eax
	je	L75
	call	abort
L75:
	movq	$-5, %rdi
	movl	$0, %eax
	call	f5
	cmpl	$4, %eax
	je	L76
	call	abort
L76:
	movq	$-1, %rdi
	movl	$0, %eax
	call	f6
	cmpl	$1, %eax
	je	L77
	call	abort
L77:
	movl	$0, %edi
	movl	$0, %eax
	call	f6
	testl	%eax, %eax
	je	L78
	call	abort
L78:
	movl	$0, %edi
	call	exit
