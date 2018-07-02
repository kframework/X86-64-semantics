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
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	L40
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L41
L40:
	movl	-4(%rbp), %eax
L41:
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L44
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L45
L44:
	movl	-4(%rbp), %eax
L45:
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	L48
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L49
L48:
	movl	-4(%rbp), %eax
L49:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	L52
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L53
L52:
	movl	-4(%rbp), %eax
L53:
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L56
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L57
L56:
	movl	-4(%rbp), %eax
L57:
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	L60
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L61
L60:
	movl	-4(%rbp), %eax
L61:
	popq	%rbp
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	L64
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L65
L64:
	movl	-4(%rbp), %eax
L65:
	popq	%rbp
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	L68
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L69
L68:
	movl	-4(%rbp), %eax
L69:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, %edi
	call	f1
	cmpl	$5, %eax
	jne	L72
	movl	$-5, %edi
	call	f1
	cmpl	$4, %eax
	jne	L72
	movl	$0, %edi
	call	f1
	testl	%eax, %eax
	je	L73
L72:
	call	abort
L73:
	movl	$5, %edi
	call	f2
	cmpl	$-6, %eax
	jne	L74
	movl	$-5, %edi
	call	f2
	cmpl	$-5, %eax
	jne	L74
	movl	$0, %edi
	call	f2
	cmpl	$-1, %eax
	je	L75
L74:
	call	abort
L75:
	movl	$5, %edi
	call	f3
	cmpl	$5, %eax
	jne	L76
	movl	$-5, %edi
	call	f3
	cmpl	$4, %eax
	jne	L76
	movl	$0, %edi
	call	f3
	cmpl	$-1, %eax
	je	L77
L76:
	call	abort
L77:
	movl	$5, %edi
	call	f4
	cmpl	$-6, %eax
	jne	L78
	movl	$-5, %edi
	call	f4
	cmpl	$-5, %eax
	jne	L78
	movl	$0, %edi
	call	f4
	testl	%eax, %eax
	je	L79
L78:
	call	abort
L79:
	movl	$5, %edi
	call	f5
	cmpl	$-6, %eax
	jne	L80
	movl	$-5, %edi
	call	f5
	cmpl	$-5, %eax
	jne	L80
	movl	$0, %edi
	call	f5
	cmpl	$-1, %eax
	je	L81
L80:
	call	abort
L81:
	movl	$5, %edi
	call	f6
	cmpl	$5, %eax
	jne	L82
	movl	$-5, %edi
	call	f6
	cmpl	$4, %eax
	jne	L82
	movl	$0, %edi
	call	f6
	testl	%eax, %eax
	je	L83
L82:
	call	abort
L83:
	movl	$5, %edi
	call	f7
	cmpl	$-6, %eax
	jne	L84
	movl	$-5, %edi
	call	f7
	cmpl	$-5, %eax
	jne	L84
	movl	$0, %edi
	call	f7
	testl	%eax, %eax
	je	L85
L84:
	call	abort
L85:
	movl	$5, %edi
	call	f8
	cmpl	$5, %eax
	jne	L86
	movl	$-5, %edi
	call	f8
	cmpl	$4, %eax
	jne	L86
	movl	$0, %edi
	call	f8
	cmpl	$-1, %eax
	je	L87
L86:
	call	abort
L87:
	movl	$0, %eax
	popq	%rbp
	ret
