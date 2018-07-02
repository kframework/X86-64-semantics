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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	lastn.2324(%rip), %eax
	cmpl	-4(%rbp), %eax
	je	L40
	movl	lastc.2325(%rip), %edx
	movl	lastn.2324(%rip), %eax
	cmpl	%eax, %edx
	je	L41
	call	abort
L41:
	movl	$0, lastc.2325(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, lastn.2324(%rip)
L40:
	movl	lastc.2325(%rip), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	sall	$3, %eax
	xorl	%edx, %eax
	movsbl	%al, %eax
	cmpl	-8(%rbp), %eax
	je	L42
	call	abort
L42:
	movl	lastc.2325(%rip), %eax
	addl	$1, %eax
	movl	%eax, lastc.2325(%rip)
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$656, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L44
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L44:
	movl	%edi, -644(%rbp)
	cmpl	$21, -644(%rbp)
	je	L45
	call	abort
L45:
	movl	$8, -632(%rbp)
	movl	$48, -628(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -624(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -624(%rbp)
	movl	$0, -180(%rbp)
	jmp	L46
L47:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-180(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	bar
	addl	$1, -180(%rbp)
L46:
	cmpl	$0, -180(%rbp)
	js	L47
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L48
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L49
L48:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L49:
	movzbl	(%rax), %eax
	movb	%al, -181(%rbp)
	movl	$0, -180(%rbp)
	jmp	L50
L51:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-181(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	bar
	addl	$1, -180(%rbp)
L50:
	cmpl	$0, -180(%rbp)
	jle	L51
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L52
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L53
L52:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L53:
	movzwl	(%rax), %eax
	movw	%ax, -192(%rbp)
	movl	$0, -180(%rbp)
	jmp	L54
L55:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-192(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$2, %edi
	call	bar
	addl	$1, -180(%rbp)
L54:
	cmpl	$1, -180(%rbp)
	jle	L55
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L56
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L57
L56:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L57:
	movzwl	(%rax), %edx
	movw	%dx, -208(%rbp)
	movzbl	2(%rax), %eax
	movb	%al, -206(%rbp)
	movl	$0, -180(%rbp)
	jmp	L58
L59:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$3, %edi
	call	bar
	addl	$1, -180(%rbp)
L58:
	cmpl	$2, -180(%rbp)
	jle	L59
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L60
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L61
L60:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L61:
	movl	(%rax), %eax
	movl	%eax, -224(%rbp)
	movl	$0, -180(%rbp)
	jmp	L62
L63:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-224(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$4, %edi
	call	bar
	addl	$1, -180(%rbp)
L62:
	cmpl	$3, -180(%rbp)
	jle	L63
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L64
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L65
L64:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L65:
	movl	(%rax), %edx
	movl	%edx, -240(%rbp)
	movzbl	4(%rax), %eax
	movb	%al, -236(%rbp)
	movl	$0, -180(%rbp)
	jmp	L66
L67:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-240(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$5, %edi
	call	bar
	addl	$1, -180(%rbp)
L66:
	cmpl	$4, -180(%rbp)
	jle	L67
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L68
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L69
L68:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L69:
	movl	(%rax), %edx
	movl	%edx, -256(%rbp)
	movzwl	4(%rax), %eax
	movw	%ax, -252(%rbp)
	movl	$0, -180(%rbp)
	jmp	L70
L71:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$6, %edi
	call	bar
	addl	$1, -180(%rbp)
L70:
	cmpl	$5, -180(%rbp)
	jle	L71
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L72
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L73
L72:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L73:
	movl	(%rax), %edx
	movl	%edx, -272(%rbp)
	movzwl	4(%rax), %edx
	movw	%dx, -268(%rbp)
	movzbl	6(%rax), %eax
	movb	%al, -266(%rbp)
	movl	$0, -180(%rbp)
	jmp	L74
L75:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$7, %edi
	call	bar
	addl	$1, -180(%rbp)
L74:
	cmpl	$6, -180(%rbp)
	jle	L75
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L76
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L77
L76:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L77:
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movl	$0, -180(%rbp)
	jmp	L78
L79:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-288(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$8, %edi
	call	bar
	addl	$1, -180(%rbp)
L78:
	cmpl	$7, -180(%rbp)
	jle	L79
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L80
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L81
L80:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L81:
	movq	(%rax), %rdx
	movq	%rdx, -304(%rbp)
	movzbl	8(%rax), %eax
	movb	%al, -296(%rbp)
	movl	$0, -180(%rbp)
	jmp	L82
L83:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-304(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$9, %edi
	call	bar
	addl	$1, -180(%rbp)
L82:
	cmpl	$8, -180(%rbp)
	jle	L83
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L84
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L85
L84:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L85:
	movq	(%rax), %rdx
	movq	%rdx, -320(%rbp)
	movzwl	8(%rax), %eax
	movw	%ax, -312(%rbp)
	movl	$0, -180(%rbp)
	jmp	L86
L87:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-320(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	bar
	addl	$1, -180(%rbp)
L86:
	cmpl	$9, -180(%rbp)
	jle	L87
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L88
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L89
L88:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L89:
	movq	(%rax), %rdx
	movq	%rdx, -336(%rbp)
	movzwl	8(%rax), %edx
	movw	%dx, -328(%rbp)
	movzbl	10(%rax), %eax
	movb	%al, -326(%rbp)
	movl	$0, -180(%rbp)
	jmp	L90
L91:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-336(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$11, %edi
	call	bar
	addl	$1, -180(%rbp)
L90:
	cmpl	$10, -180(%rbp)
	jle	L91
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L92
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L93
L92:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L93:
	movq	(%rax), %rdx
	movq	%rdx, -352(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -344(%rbp)
	movl	$0, -180(%rbp)
	jmp	L94
L95:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-352(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$12, %edi
	call	bar
	addl	$1, -180(%rbp)
L94:
	cmpl	$11, -180(%rbp)
	jle	L95
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L96
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L97
L96:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L97:
	movq	(%rax), %rdx
	movq	%rdx, -368(%rbp)
	movl	8(%rax), %edx
	movl	%edx, -360(%rbp)
	movzbl	12(%rax), %eax
	movb	%al, -356(%rbp)
	movl	$0, -180(%rbp)
	jmp	L98
L99:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-368(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$13, %edi
	call	bar
	addl	$1, -180(%rbp)
L98:
	cmpl	$12, -180(%rbp)
	jle	L99
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L100
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L101
L100:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L101:
	movq	(%rax), %rdx
	movq	%rdx, -384(%rbp)
	movl	8(%rax), %edx
	movl	%edx, -376(%rbp)
	movzwl	12(%rax), %eax
	movw	%ax, -372(%rbp)
	movl	$0, -180(%rbp)
	jmp	L102
L103:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-384(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$14, %edi
	call	bar
	addl	$1, -180(%rbp)
L102:
	cmpl	$13, -180(%rbp)
	jle	L103
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L104
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L105
L104:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L105:
	movq	(%rax), %rdx
	movq	%rdx, -400(%rbp)
	movl	8(%rax), %edx
	movl	%edx, -392(%rbp)
	movzwl	12(%rax), %edx
	movw	%dx, -388(%rbp)
	movzbl	14(%rax), %eax
	movb	%al, -386(%rbp)
	movl	$0, -180(%rbp)
	jmp	L106
L107:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-400(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$15, %edi
	call	bar
	addl	$1, -180(%rbp)
L106:
	cmpl	$14, -180(%rbp)
	jle	L107
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L108
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L109
L108:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L109:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	%rdx, -408(%rbp)
	movl	$0, -180(%rbp)
	jmp	L110
L111:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-416(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$16, %edi
	call	bar
	addl	$1, -180(%rbp)
L110:
	cmpl	$15, -180(%rbp)
	jle	L111
	movq	-624(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, -448(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -440(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -432(%rbp)
	movl	24(%rax), %edx
	movl	%edx, -424(%rbp)
	movzwl	28(%rax), %edx
	movw	%dx, -420(%rbp)
	movzbl	30(%rax), %eax
	movb	%al, -418(%rbp)
	movl	$0, -180(%rbp)
	jmp	L112
L113:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-448(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$31, %edi
	call	bar
	addl	$1, -180(%rbp)
L112:
	cmpl	$30, -180(%rbp)
	jle	L113
	movq	-624(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, -480(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -472(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -464(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -456(%rbp)
	movl	$0, -180(%rbp)
	jmp	L114
L115:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-480(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$32, %edi
	call	bar
	addl	$1, -180(%rbp)
L114:
	cmpl	$31, -180(%rbp)
	jle	L115
	movq	-624(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, -528(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -520(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -512(%rbp)
	movq	24(%rax), %rdx
	movq	%rdx, -504(%rbp)
	movzwl	32(%rax), %edx
	movw	%dx, -496(%rbp)
	movzbl	34(%rax), %eax
	movb	%al, -494(%rbp)
	movl	$0, -180(%rbp)
	jmp	L116
L117:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-528(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$35, %edi
	call	bar
	addl	$1, -180(%rbp)
L116:
	cmpl	$34, -180(%rbp)
	jle	L117
	movq	-624(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, -608(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -592(%rbp)
	movq	24(%rax), %rdx
	movq	%rdx, -584(%rbp)
	movq	32(%rax), %rdx
	movq	%rdx, -576(%rbp)
	movq	40(%rax), %rdx
	movq	%rdx, -568(%rbp)
	movq	48(%rax), %rdx
	movq	%rdx, -560(%rbp)
	movq	56(%rax), %rdx
	movq	%rdx, -552(%rbp)
	movq	64(%rax), %rax
	movq	%rax, -544(%rbp)
	movl	$0, -180(%rbp)
	jmp	L118
L119:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-608(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$72, %edi
	call	bar
	addl	$1, -180(%rbp)
L118:
	cmpl	$71, -180(%rbp)
	jle	L119
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$432, %rsp
	movl	$0, -4(%rbp)
	jmp	L121
L122:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -4(%rbp,%rax)
	addl	$1, -4(%rbp)
L121:
	cmpl	$0, -4(%rbp)
	js	L122
	movl	$0, -4(%rbp)
	jmp	L123
L124:
	movl	-4(%rbp), %eax
	xorl	$8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -5(%rbp,%rax)
	addl	$1, -4(%rbp)
L123:
	cmpl	$0, -4(%rbp)
	jle	L124
	movl	$0, -4(%rbp)
	jmp	L125
L126:
	movl	-4(%rbp), %eax
	xorl	$16, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	addl	$1, -4(%rbp)
L125:
	cmpl	$1, -4(%rbp)
	jle	L126
	movl	$0, -4(%rbp)
	jmp	L127
L128:
	movl	-4(%rbp), %eax
	xorl	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -32(%rbp,%rax)
	addl	$1, -4(%rbp)
L127:
	cmpl	$2, -4(%rbp)
	jle	L128
	movl	$0, -4(%rbp)
	jmp	L129
L130:
	movl	-4(%rbp), %eax
	xorl	$32, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -48(%rbp,%rax)
	addl	$1, -4(%rbp)
L129:
	cmpl	$3, -4(%rbp)
	jle	L130
	movl	$0, -4(%rbp)
	jmp	L131
L132:
	movl	-4(%rbp), %eax
	xorl	$40, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -64(%rbp,%rax)
	addl	$1, -4(%rbp)
L131:
	cmpl	$4, -4(%rbp)
	jle	L132
	movl	$0, -4(%rbp)
	jmp	L133
L134:
	movl	-4(%rbp), %eax
	xorl	$48, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
L133:
	cmpl	$5, -4(%rbp)
	jle	L134
	movl	$0, -4(%rbp)
	jmp	L135
L136:
	movl	-4(%rbp), %eax
	xorl	$56, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -96(%rbp,%rax)
	addl	$1, -4(%rbp)
L135:
	cmpl	$6, -4(%rbp)
	jle	L136
	movl	$0, -4(%rbp)
	jmp	L137
L138:
	movl	-4(%rbp), %eax
	xorl	$64, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -4(%rbp)
L137:
	cmpl	$7, -4(%rbp)
	jle	L138
	movl	$0, -4(%rbp)
	jmp	L139
L140:
	movl	-4(%rbp), %eax
	xorl	$72, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -128(%rbp,%rax)
	addl	$1, -4(%rbp)
L139:
	cmpl	$8, -4(%rbp)
	jle	L140
	movl	$0, -4(%rbp)
	jmp	L141
L142:
	movl	-4(%rbp), %eax
	xorl	$80, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -144(%rbp,%rax)
	addl	$1, -4(%rbp)
L141:
	cmpl	$9, -4(%rbp)
	jle	L142
	movl	$0, -4(%rbp)
	jmp	L143
L144:
	movl	-4(%rbp), %eax
	xorl	$88, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -160(%rbp,%rax)
	addl	$1, -4(%rbp)
L143:
	cmpl	$10, -4(%rbp)
	jle	L144
	movl	$0, -4(%rbp)
	jmp	L145
L146:
	movl	-4(%rbp), %eax
	xorl	$96, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -176(%rbp,%rax)
	addl	$1, -4(%rbp)
L145:
	cmpl	$11, -4(%rbp)
	jle	L146
	movl	$0, -4(%rbp)
	jmp	L147
L148:
	movl	-4(%rbp), %eax
	xorl	$104, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -192(%rbp,%rax)
	addl	$1, -4(%rbp)
L147:
	cmpl	$12, -4(%rbp)
	jle	L148
	movl	$0, -4(%rbp)
	jmp	L149
L150:
	movl	-4(%rbp), %eax
	xorl	$112, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -208(%rbp,%rax)
	addl	$1, -4(%rbp)
L149:
	cmpl	$13, -4(%rbp)
	jle	L150
	movl	$0, -4(%rbp)
	jmp	L151
L152:
	movl	-4(%rbp), %eax
	xorl	$120, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -224(%rbp,%rax)
	addl	$1, -4(%rbp)
L151:
	cmpl	$14, -4(%rbp)
	jle	L152
	movl	$0, -4(%rbp)
	jmp	L153
L154:
	movl	-4(%rbp), %eax
	xorl	$-128, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -240(%rbp,%rax)
	addl	$1, -4(%rbp)
L153:
	cmpl	$15, -4(%rbp)
	jle	L154
	movl	$0, -4(%rbp)
	jmp	L155
L156:
	movl	-4(%rbp), %eax
	xorl	$-8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -272(%rbp,%rax)
	addl	$1, -4(%rbp)
L155:
	cmpl	$30, -4(%rbp)
	jle	L156
	movl	$0, -4(%rbp)
	jmp	L157
L158:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -304(%rbp,%rax)
	addl	$1, -4(%rbp)
L157:
	cmpl	$31, -4(%rbp)
	jle	L158
	movl	$0, -4(%rbp)
	jmp	L159
L160:
	movl	-4(%rbp), %eax
	xorl	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -352(%rbp,%rax)
	addl	$1, -4(%rbp)
L159:
	cmpl	$34, -4(%rbp)
	jle	L160
	movl	$0, -4(%rbp)
	jmp	L161
L162:
	movl	-4(%rbp), %eax
	xorl	$64, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -432(%rbp,%rax)
	addl	$1, -4(%rbp)
L161:
	cmpl	$71, -4(%rbp)
	jle	L162
	subq	$8, %rsp
	movl	-48(%rbp), %edi
	movzwl	-16(%rbp), %edx
	movzbl	-5(%rbp), %esi
	pushq	-368(%rbp)
	pushq	-376(%rbp)
	pushq	-384(%rbp)
	pushq	-392(%rbp)
	pushq	-400(%rbp)
	pushq	-408(%rbp)
	pushq	-416(%rbp)
	pushq	-424(%rbp)
	pushq	-432(%rbp)
	subq	$40, %rsp
	movq	%rsp, %rax
	movq	-352(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-344(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-336(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-328(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movzwl	-320(%rbp), %ecx
	movw	%cx, 32(%rax)
	movzbl	-318(%rbp), %ecx
	movb	%cl, 34(%rax)
	pushq	-280(%rbp)
	pushq	-288(%rbp)
	pushq	-296(%rbp)
	pushq	-304(%rbp)
	subq	$32, %rsp
	movq	%rsp, %rax
	movq	-272(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-264(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-256(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movl	-248(%rbp), %ecx
	movl	%ecx, 24(%rax)
	movzwl	-244(%rbp), %ecx
	movw	%cx, 28(%rax)
	movzbl	-242(%rbp), %ecx
	movb	%cl, 30(%rax)
	pushq	-232(%rbp)
	pushq	-240(%rbp)
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-224(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	-216(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movzwl	-212(%rbp), %ecx
	movw	%cx, 12(%rax)
	movzbl	-210(%rbp), %ecx
	movb	%cl, 14(%rax)
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-208(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	-200(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movzwl	-196(%rbp), %ecx
	movw	%cx, 12(%rax)
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-192(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	-184(%rbp), %ecx
	movl	%ecx, 8(%rax)
	movzbl	-180(%rbp), %ecx
	movb	%cl, 12(%rax)
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-176(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	-168(%rbp), %ecx
	movl	%ecx, 8(%rax)
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-160(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-152(%rbp), %ecx
	movw	%cx, 8(%rax)
	movzbl	-150(%rbp), %ecx
	movb	%cl, 10(%rax)
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-144(%rbp), %rcx
	movq	%rcx, (%rax)
	movzwl	-136(%rbp), %ecx
	movw	%cx, 8(%rax)
	subq	$16, %rsp
	movq	%rsp, %rax
	movq	-128(%rbp), %rcx
	movq	%rcx, (%rax)
	movzbl	-120(%rbp), %ecx
	movb	%cl, 8(%rax)
	pushq	-112(%rbp)
	subq	$8, %rsp
	movq	%rsp, %rax
	movl	-96(%rbp), %ecx
	movl	%ecx, (%rax)
	movzwl	-92(%rbp), %ecx
	movw	%cx, 4(%rax)
	movzbl	-90(%rbp), %ecx
	movb	%cl, 6(%rax)
	subq	$8, %rsp
	movq	%rsp, %rax
	movl	-80(%rbp), %ecx
	movl	%ecx, (%rax)
	movzwl	-76(%rbp), %ecx
	movw	%cx, 4(%rax)
	movq	-64(%rbp), %r9
	movl	%edi, %r8d
	movq	-32(%rbp), %rcx
	movl	$21, %edi
	movl	$0, %eax
	call	foo
	addq	$336, %rsp
	movl	$0, %edi
	call	exit
lastn.2324:
	.long	-1
lastc.2325:
	.long	-1
