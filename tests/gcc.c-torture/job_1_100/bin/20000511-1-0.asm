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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	L39
	call	abort
L39:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$7, -4(%rbp)
	movl	$6, -8(%rbp)
	movl	$4, -12(%rbp)
	movl	$7, -16(%rbp)
	movl	$2, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L42
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	L43
L42:
	movl	$1, %eax
	jmp	L44
L43:
	movl	$0, %eax
L44:
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -4(%rbp)
	je	L45
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	jmp	L46
L45:
	movl	$0, %eax
L46:
	movl	$2, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	movl	-4(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -16(%rbp)
	jne	L47
	cmpl	$0, -12(%rbp)
	je	L48
	cmpl	$0, -20(%rbp)
	je	L48
L47:
	movl	$1, %eax
	jmp	L49
L48:
	movl	$0, %eax
L49:
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -16(%rbp)
	je	L50
	cmpl	$0, -12(%rbp)
	je	L50
	cmpl	$0, -20(%rbp)
	je	L50
	movl	$1, %eax
	jmp	L51
L50:
	movl	$0, %eax
L51:
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L52
	cmpl	$0, -20(%rbp)
	je	L52
	movl	$1, %eax
	jmp	L53
L52:
	movl	$0, %eax
L53:
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L54
	cmpl	$0, -20(%rbp)
	je	L54
	movl	$1, %eax
	jmp	L55
L54:
	movl	$0, %eax
L55:
	movl	-16(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L56
	cmpl	$0, -20(%rbp)
	je	L56
	movl	$1, %ecx
	jmp	L57
L56:
	movl	$0, %ecx
L57:
	movl	-16(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L58
	cmpl	$0, -20(%rbp)
	je	L58
	movl	$1, %eax
	jmp	L59
L58:
	movl	$0, %eax
L59:
	addl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	je	L60
	cmpl	$0, -20(%rbp)
	je	L60
	movl	$1, %eax
	jmp	L61
L60:
	movl	$0, %eax
L61:
	subl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -16(%rbp)
	jne	L62
	cmpl	$0, -12(%rbp)
	jne	L62
	cmpl	$0, -20(%rbp)
	je	L63
L62:
	movl	$1, %eax
	jmp	L64
L63:
	movl	$0, %eax
L64:
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -16(%rbp)
	je	L65
	cmpl	$0, -12(%rbp)
	jne	L66
	cmpl	$0, -20(%rbp)
	je	L65
L66:
	movl	$1, %eax
	jmp	L67
L65:
	movl	$0, %eax
L67:
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L68
	cmpl	$0, -20(%rbp)
	je	L69
L68:
	movl	$1, %eax
	jmp	L70
L69:
	movl	$0, %eax
L70:
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L71
	cmpl	$0, -20(%rbp)
	je	L72
L71:
	movl	$1, %eax
	jmp	L73
L72:
	movl	$0, %eax
L73:
	movl	-16(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L74
	cmpl	$0, -20(%rbp)
	je	L75
L74:
	movl	$1, %ecx
	jmp	L76
L75:
	movl	$0, %ecx
L76:
	movl	-16(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L77
	cmpl	$0, -20(%rbp)
	je	L78
L77:
	movl	$1, %eax
	jmp	L79
L78:
	movl	$0, %eax
L79:
	addl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	f
	cmpl	$0, -12(%rbp)
	jne	L80
	cmpl	$0, -20(%rbp)
	je	L81
L80:
	movl	$1, %eax
	jmp	L82
L81:
	movl	$0, %eax
L82:
	subl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	f
	movl	$0, %edi
	call	exit
