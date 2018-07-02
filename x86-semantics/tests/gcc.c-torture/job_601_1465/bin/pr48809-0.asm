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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$0, -4(%rbp)
	movsbl	-20(%rbp), %eax
	addl	$62, %eax
	cmpl	$160, %eax
	ja	L40
	movl	%eax, %eax
	movq	L42(,%rax,8), %rax
	call %rax
L42:
	.quad	L41
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L43
	.quad	L44
	.quad	L45
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
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L76
L43:
	movl	$1, -4(%rbp)
	jmp	L40
L44:
	movl	$7, -4(%rbp)
	jmp	L40
L45:
	movl	$2, -4(%rbp)
	jmp	L40
L46:
	movl	$19, -4(%rbp)
	jmp	L40
L47:
	movl	$5, -4(%rbp)
	jmp	L40
L48:
	movl	$17, -4(%rbp)
	jmp	L40
L49:
	movl	$31, -4(%rbp)
	jmp	L40
L50:
	movl	$8, -4(%rbp)
	jmp	L40
L51:
	movl	$28, -4(%rbp)
	jmp	L40
L52:
	movl	$16, -4(%rbp)
	jmp	L40
L53:
	movl	$31, -4(%rbp)
	jmp	L40
L54:
	movl	$12, -4(%rbp)
	jmp	L40
L55:
	movl	$15, -4(%rbp)
	jmp	L40
L56:
	movl	$111, -4(%rbp)
	jmp	L40
L57:
	movl	$17, -4(%rbp)
	jmp	L40
L58:
	movl	$10, -4(%rbp)
	jmp	L40
L59:
	movl	$31, -4(%rbp)
	jmp	L40
L60:
	movl	$7, -4(%rbp)
	jmp	L40
L61:
	movl	$2, -4(%rbp)
	jmp	L40
L62:
	movl	$19, -4(%rbp)
	jmp	L40
L63:
	movl	$5, -4(%rbp)
	jmp	L40
L64:
	movl	$107, -4(%rbp)
	jmp	L40
L65:
	movl	$31, -4(%rbp)
	jmp	L40
L66:
	movl	$8, -4(%rbp)
	jmp	L40
L67:
	movl	$28, -4(%rbp)
	jmp	L40
L68:
	movl	$106, -4(%rbp)
	jmp	L40
L69:
	movl	$31, -4(%rbp)
	jmp	L40
L70:
	movl	$102, -4(%rbp)
	jmp	L40
L71:
	movl	$105, -4(%rbp)
	jmp	L40
L72:
	movl	$111, -4(%rbp)
	jmp	L40
L73:
	movl	$17, -4(%rbp)
	jmp	L40
L74:
	movl	$10, -4(%rbp)
	jmp	L40
L75:
	movl	$31, -4(%rbp)
	jmp	L40
L76:
	movl	$18, -4(%rbp)
	jmp	L40
L41:
	movl	$19, -4(%rbp)
	nop
L40:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$98, %edi
	call	foo
	cmpl	$18, %eax
	jne	L79
	movl	$97, %edi
	call	foo
	testl	%eax, %eax
	jne	L79
	movl	$99, %edi
	call	foo
	testl	%eax, %eax
	je	L80
L79:
	call	abort
L80:
	movl	$-62, %edi
	call	foo
	cmpl	$19, %eax
	jne	L81
	movl	$-63, %edi
	call	foo
	testl	%eax, %eax
	jne	L81
	movl	$-61, %edi
	call	foo
	testl	%eax, %eax
	je	L82
L81:
	call	abort
L82:
	movl	$28, %edi
	call	foo
	cmpl	$105, %eax
	jne	L83
	movl	$27, %edi
	call	foo
	cmpl	$102, %eax
	jne	L83
	movl	$29, %edi
	call	foo
	cmpl	$111, %eax
	je	L84
L83:
	call	abort
L84:
	movl	$0, %eax
	popq	%rbp
	ret
