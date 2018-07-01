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
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	L30
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L31
L30:
	movl	-4(%rbp), %eax
L31:
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L34
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L35
L34:
	movl	-4(%rbp), %eax
L35:
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	L38
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L39
L38:
	movl	-4(%rbp), %eax
L39:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	L42
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L43
L42:
	movl	-4(%rbp), %eax
L43:
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	L46
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L47
L46:
	movl	-4(%rbp), %eax
L47:
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	L50
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L51
L50:
	movl	-4(%rbp), %eax
L51:
	popq	%rbp
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	L54
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L55
L54:
	movl	-4(%rbp), %eax
L55:
	popq	%rbp
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	L58
	movl	-4(%rbp), %eax
	notl	%eax
	jmp	L59
L58:
	movl	-4(%rbp), %eax
L59:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, %edi
	call	f1
	cmpl	$5, %eax
	jne	L62
	movl	$-5, %edi
	call	f1
	cmpl	$4, %eax
	jne	L62
	movl	$0, %edi
	call	f1
	testl	%eax, %eax
	je	L63
L62:
	call	abort
L63:
	movl	$5, %edi
	call	f2
	cmpl	$-6, %eax
	jne	L64
	movl	$-5, %edi
	call	f2
	cmpl	$-5, %eax
	jne	L64
	movl	$0, %edi
	call	f2
	cmpl	$-1, %eax
	je	L65
L64:
	call	abort
L65:
	movl	$5, %edi
	call	f3
	cmpl	$5, %eax
	jne	L66
	movl	$-5, %edi
	call	f3
	cmpl	$4, %eax
	jne	L66
	movl	$0, %edi
	call	f3
	cmpl	$-1, %eax
	je	L67
L66:
	call	abort
L67:
	movl	$5, %edi
	call	f4
	cmpl	$-6, %eax
	jne	L68
	movl	$-5, %edi
	call	f4
	cmpl	$-5, %eax
	jne	L68
	movl	$0, %edi
	call	f4
	testl	%eax, %eax
	je	L69
L68:
	call	abort
L69:
	movl	$5, %edi
	call	f5
	cmpl	$-6, %eax
	jne	L70
	movl	$-5, %edi
	call	f5
	cmpl	$-5, %eax
	jne	L70
	movl	$0, %edi
	call	f5
	cmpl	$-1, %eax
	je	L71
L70:
	call	abort
L71:
	movl	$5, %edi
	call	f6
	cmpl	$5, %eax
	jne	L72
	movl	$-5, %edi
	call	f6
	cmpl	$4, %eax
	jne	L72
	movl	$0, %edi
	call	f6
	testl	%eax, %eax
	je	L73
L72:
	call	abort
L73:
	movl	$5, %edi
	call	f7
	cmpl	$-6, %eax
	jne	L74
	movl	$-5, %edi
	call	f7
	cmpl	$-5, %eax
	jne	L74
	movl	$0, %edi
	call	f7
	testl	%eax, %eax
	je	L75
L74:
	call	abort
L75:
	movl	$5, %edi
	call	f8
	cmpl	$5, %eax
	jne	L76
	movl	$-5, %edi
	call	f8
	cmpl	$4, %eax
	jne	L76
	movl	$0, %edi
	call	f8
	cmpl	$-1, %eax
	je	L77
L76:
	call	abort
L77:
	movl	$0, %eax
	popq	%rbp
	ret
