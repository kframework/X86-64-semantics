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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	lastn.2264(%rip), %eax
	cmpl	-4(%rbp), %eax
	je	L10
	movl	lastc.2265(%rip), %edx
	movl	lastn.2264(%rip), %eax
	cmpl	%eax, %edx
	je	L11
	call	abort
L11:
	movl	$0, lastc.2265(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, lastn.2264(%rip)
L10:
	movl	lastc.2265(%rip), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	sall	$3, %eax
	xorl	%edx, %eax
	movsbl	%al, %eax
	cmpl	-8(%rbp), %eax
	je	L12
	call	abort
L12:
	movl	lastc.2265(%rip), %eax
	addl	$1, %eax
	movl	%eax, lastc.2265(%rip)
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
	je	L14
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L14:
	movl	%edi, -644(%rbp)
	cmpl	$21, -644(%rbp)
	je	L15
	call	abort
L15:
	movl	$8, -632(%rbp)
	movl	$48, -628(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -624(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -624(%rbp)
	movl	$0, -180(%rbp)
	jmp	L16
L17:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-180(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	bar
	addl	$1, -180(%rbp)
L16:
	cmpl	$0, -180(%rbp)
	js	L17
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L18
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L19
L18:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L19:
	movzbl	(%rax), %eax
	movb	%al, -181(%rbp)
	movl	$0, -180(%rbp)
	jmp	L20
L21:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-181(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	bar
	addl	$1, -180(%rbp)
L20:
	cmpl	$0, -180(%rbp)
	jle	L21
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L22
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L23
L22:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L23:
	movzwl	(%rax), %eax
	movw	%ax, -192(%rbp)
	movl	$0, -180(%rbp)
	jmp	L24
L25:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-192(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$2, %edi
	call	bar
	addl	$1, -180(%rbp)
L24:
	cmpl	$1, -180(%rbp)
	jle	L25
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L26
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L27
L26:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L27:
	movzwl	(%rax), %edx
	movw	%dx, -208(%rbp)
	movzbl	2(%rax), %eax
	movb	%al, -206(%rbp)
	movl	$0, -180(%rbp)
	jmp	L28
L29:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-208(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$3, %edi
	call	bar
	addl	$1, -180(%rbp)
L28:
	cmpl	$2, -180(%rbp)
	jle	L29
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L30
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L31
L30:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L31:
	movl	(%rax), %eax
	movl	%eax, -224(%rbp)
	movl	$0, -180(%rbp)
	jmp	L32
L33:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-224(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$4, %edi
	call	bar
	addl	$1, -180(%rbp)
L32:
	cmpl	$3, -180(%rbp)
	jle	L33
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L34
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L35
L34:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L35:
	movl	(%rax), %edx
	movl	%edx, -240(%rbp)
	movzbl	4(%rax), %eax
	movb	%al, -236(%rbp)
	movl	$0, -180(%rbp)
	jmp	L36
L37:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-240(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$5, %edi
	call	bar
	addl	$1, -180(%rbp)
L36:
	cmpl	$4, -180(%rbp)
	jle	L37
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L38
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L39
L38:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L39:
	movl	(%rax), %edx
	movl	%edx, -256(%rbp)
	movzwl	4(%rax), %eax
	movw	%ax, -252(%rbp)
	movl	$0, -180(%rbp)
	jmp	L40
L41:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-256(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$6, %edi
	call	bar
	addl	$1, -180(%rbp)
L40:
	cmpl	$5, -180(%rbp)
	jle	L41
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L42
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L43
L42:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L43:
	movl	(%rax), %edx
	movl	%edx, -272(%rbp)
	movzwl	4(%rax), %edx
	movw	%dx, -268(%rbp)
	movzbl	6(%rax), %eax
	movb	%al, -266(%rbp)
	movl	$0, -180(%rbp)
	jmp	L44
L45:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-272(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$7, %edi
	call	bar
	addl	$1, -180(%rbp)
L44:
	cmpl	$6, -180(%rbp)
	jle	L45
	movl	-632(%rbp), %eax
	cmpl	$48, %eax
	jae	L46
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -632(%rbp)
	jmp	L47
L46:
	movq	-624(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -624(%rbp)
L47:
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)
	movl	$0, -180(%rbp)
	jmp	L48
L49:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-288(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$8, %edi
	call	bar
	addl	$1, -180(%rbp)
L48:
	cmpl	$7, -180(%rbp)
	jle	L49
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L50
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L51
L50:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L51:
	movq	(%rax), %rdx
	movq	%rdx, -304(%rbp)
	movzbl	8(%rax), %eax
	movb	%al, -296(%rbp)
	movl	$0, -180(%rbp)
	jmp	L52
L53:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-304(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$9, %edi
	call	bar
	addl	$1, -180(%rbp)
L52:
	cmpl	$8, -180(%rbp)
	jle	L53
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L54
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L55
L54:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L55:
	movq	(%rax), %rdx
	movq	%rdx, -320(%rbp)
	movzwl	8(%rax), %eax
	movw	%ax, -312(%rbp)
	movl	$0, -180(%rbp)
	jmp	L56
L57:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-320(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	bar
	addl	$1, -180(%rbp)
L56:
	cmpl	$9, -180(%rbp)
	jle	L57
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L58
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L59
L58:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L59:
	movq	(%rax), %rdx
	movq	%rdx, -336(%rbp)
	movzwl	8(%rax), %edx
	movw	%dx, -328(%rbp)
	movzbl	10(%rax), %eax
	movb	%al, -326(%rbp)
	movl	$0, -180(%rbp)
	jmp	L60
L61:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-336(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$11, %edi
	call	bar
	addl	$1, -180(%rbp)
L60:
	cmpl	$10, -180(%rbp)
	jle	L61
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L62
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L63
L62:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L63:
	movq	(%rax), %rdx
	movq	%rdx, -352(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -344(%rbp)
	movl	$0, -180(%rbp)
	jmp	L64
L65:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-352(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$12, %edi
	call	bar
	addl	$1, -180(%rbp)
L64:
	cmpl	$11, -180(%rbp)
	jle	L65
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L66
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L67
L66:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L67:
	movq	(%rax), %rdx
	movq	%rdx, -368(%rbp)
	movl	8(%rax), %edx
	movl	%edx, -360(%rbp)
	movzbl	12(%rax), %eax
	movb	%al, -356(%rbp)
	movl	$0, -180(%rbp)
	jmp	L68
L69:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-368(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$13, %edi
	call	bar
	addl	$1, -180(%rbp)
L68:
	cmpl	$12, -180(%rbp)
	jle	L69
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L70
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L71
L70:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L71:
	movq	(%rax), %rdx
	movq	%rdx, -384(%rbp)
	movl	8(%rax), %edx
	movl	%edx, -376(%rbp)
	movzwl	12(%rax), %eax
	movw	%ax, -372(%rbp)
	movl	$0, -180(%rbp)
	jmp	L72
L73:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-384(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$14, %edi
	call	bar
	addl	$1, -180(%rbp)
L72:
	cmpl	$13, -180(%rbp)
	jle	L73
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L74
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L75
L74:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L75:
	movq	(%rax), %rdx
	movq	%rdx, -400(%rbp)
	movl	8(%rax), %edx
	movl	%edx, -392(%rbp)
	movzwl	12(%rax), %edx
	movw	%dx, -388(%rbp)
	movzbl	14(%rax), %eax
	movb	%al, -386(%rbp)
	movl	$0, -180(%rbp)
	jmp	L76
L77:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-400(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$15, %edi
	call	bar
	addl	$1, -180(%rbp)
L76:
	cmpl	$14, -180(%rbp)
	jle	L77
	movl	-632(%rbp), %eax
	cmpl	$40, %eax
	jae	L78
	movq	-616(%rbp), %rdx
	movl	-632(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-632(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -632(%rbp)
	jmp	L79
L78:
	movq	-624(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -624(%rbp)
L79:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	%rdx, -408(%rbp)
	movl	$0, -180(%rbp)
	jmp	L80
L81:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-416(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$16, %edi
	call	bar
	addl	$1, -180(%rbp)
L80:
	cmpl	$15, -180(%rbp)
	jle	L81
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
	jmp	L82
L83:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-448(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$31, %edi
	call	bar
	addl	$1, -180(%rbp)
L82:
	cmpl	$30, -180(%rbp)
	jle	L83
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
	jmp	L84
L85:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-480(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$32, %edi
	call	bar
	addl	$1, -180(%rbp)
L84:
	cmpl	$31, -180(%rbp)
	jle	L85
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
	jmp	L86
L87:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-528(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$35, %edi
	call	bar
	addl	$1, -180(%rbp)
L86:
	cmpl	$34, -180(%rbp)
	jle	L87
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
	jmp	L88
L89:
	movl	-180(%rbp), %eax
	cltq
	movzbl	-608(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$72, %edi
	call	bar
	addl	$1, -180(%rbp)
L88:
	cmpl	$71, -180(%rbp)
	jle	L89
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$432, %rsp
	movl	$0, -4(%rbp)
	jmp	L91
L92:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -4(%rbp,%rax)
	addl	$1, -4(%rbp)
L91:
	cmpl	$0, -4(%rbp)
	js	L92
	movl	$0, -4(%rbp)
	jmp	L93
L94:
	movl	-4(%rbp), %eax
	xorl	$8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -5(%rbp,%rax)
	addl	$1, -4(%rbp)
L93:
	cmpl	$0, -4(%rbp)
	jle	L94
	movl	$0, -4(%rbp)
	jmp	L95
L96:
	movl	-4(%rbp), %eax
	xorl	$16, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	addl	$1, -4(%rbp)
L95:
	cmpl	$1, -4(%rbp)
	jle	L96
	movl	$0, -4(%rbp)
	jmp	L97
L98:
	movl	-4(%rbp), %eax
	xorl	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -32(%rbp,%rax)
	addl	$1, -4(%rbp)
L97:
	cmpl	$2, -4(%rbp)
	jle	L98
	movl	$0, -4(%rbp)
	jmp	L99
L100:
	movl	-4(%rbp), %eax
	xorl	$32, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -48(%rbp,%rax)
	addl	$1, -4(%rbp)
L99:
	cmpl	$3, -4(%rbp)
	jle	L100
	movl	$0, -4(%rbp)
	jmp	L101
L102:
	movl	-4(%rbp), %eax
	xorl	$40, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -64(%rbp,%rax)
	addl	$1, -4(%rbp)
L101:
	cmpl	$4, -4(%rbp)
	jle	L102
	movl	$0, -4(%rbp)
	jmp	L103
L104:
	movl	-4(%rbp), %eax
	xorl	$48, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -80(%rbp,%rax)
	addl	$1, -4(%rbp)
L103:
	cmpl	$5, -4(%rbp)
	jle	L104
	movl	$0, -4(%rbp)
	jmp	L105
L106:
	movl	-4(%rbp), %eax
	xorl	$56, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -96(%rbp,%rax)
	addl	$1, -4(%rbp)
L105:
	cmpl	$6, -4(%rbp)
	jle	L106
	movl	$0, -4(%rbp)
	jmp	L107
L108:
	movl	-4(%rbp), %eax
	xorl	$64, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -112(%rbp,%rax)
	addl	$1, -4(%rbp)
L107:
	cmpl	$7, -4(%rbp)
	jle	L108
	movl	$0, -4(%rbp)
	jmp	L109
L110:
	movl	-4(%rbp), %eax
	xorl	$72, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -128(%rbp,%rax)
	addl	$1, -4(%rbp)
L109:
	cmpl	$8, -4(%rbp)
	jle	L110
	movl	$0, -4(%rbp)
	jmp	L111
L112:
	movl	-4(%rbp), %eax
	xorl	$80, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -144(%rbp,%rax)
	addl	$1, -4(%rbp)
L111:
	cmpl	$9, -4(%rbp)
	jle	L112
	movl	$0, -4(%rbp)
	jmp	L113
L114:
	movl	-4(%rbp), %eax
	xorl	$88, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -160(%rbp,%rax)
	addl	$1, -4(%rbp)
L113:
	cmpl	$10, -4(%rbp)
	jle	L114
	movl	$0, -4(%rbp)
	jmp	L115
L116:
	movl	-4(%rbp), %eax
	xorl	$96, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -176(%rbp,%rax)
	addl	$1, -4(%rbp)
L115:
	cmpl	$11, -4(%rbp)
	jle	L116
	movl	$0, -4(%rbp)
	jmp	L117
L118:
	movl	-4(%rbp), %eax
	xorl	$104, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -192(%rbp,%rax)
	addl	$1, -4(%rbp)
L117:
	cmpl	$12, -4(%rbp)
	jle	L118
	movl	$0, -4(%rbp)
	jmp	L119
L120:
	movl	-4(%rbp), %eax
	xorl	$112, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -208(%rbp,%rax)
	addl	$1, -4(%rbp)
L119:
	cmpl	$13, -4(%rbp)
	jle	L120
	movl	$0, -4(%rbp)
	jmp	L121
L122:
	movl	-4(%rbp), %eax
	xorl	$120, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -224(%rbp,%rax)
	addl	$1, -4(%rbp)
L121:
	cmpl	$14, -4(%rbp)
	jle	L122
	movl	$0, -4(%rbp)
	jmp	L123
L124:
	movl	-4(%rbp), %eax
	xorl	$-128, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -240(%rbp,%rax)
	addl	$1, -4(%rbp)
L123:
	cmpl	$15, -4(%rbp)
	jle	L124
	movl	$0, -4(%rbp)
	jmp	L125
L126:
	movl	-4(%rbp), %eax
	xorl	$-8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -272(%rbp,%rax)
	addl	$1, -4(%rbp)
L125:
	cmpl	$30, -4(%rbp)
	jle	L126
	movl	$0, -4(%rbp)
	jmp	L127
L128:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -304(%rbp,%rax)
	addl	$1, -4(%rbp)
L127:
	cmpl	$31, -4(%rbp)
	jle	L128
	movl	$0, -4(%rbp)
	jmp	L129
L130:
	movl	-4(%rbp), %eax
	xorl	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -352(%rbp,%rax)
	addl	$1, -4(%rbp)
L129:
	cmpl	$34, -4(%rbp)
	jle	L130
	movl	$0, -4(%rbp)
	jmp	L131
L132:
	movl	-4(%rbp), %eax
	xorl	$64, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -432(%rbp,%rax)
	addl	$1, -4(%rbp)
L131:
	cmpl	$71, -4(%rbp)
	jle	L132
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
lastn.2264:
	.long	-1
lastc.2265:
	.long	-1
