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
	.comm	foo_arg,4,4
	.comm	bar_arg,4,4
	.comm	x,8,8
	.comm	d,8,8
	.comm	gap,24,16
	.comm	s1,32,32
	.comm	s2,16,16
	.comm	y,4,4
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, bar_arg(%rip)
	popq	%rbp
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L41
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L41:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	L42
L45:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L43
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L44
L43:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L44:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
L42:
	movl	-212(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -212(%rbp)
	testl	%eax, %eax
	jg	L45
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L47
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L47:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	L48
L51:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L49
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L50
L49:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L50:
	movq	(%rax), %rax
	movq	%rax, d(%rip)
L48:
	movl	-212(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -212(%rbp)
	testl	%eax, %eax
	jg	L51
	leave
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L53
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L53:
	movl	%edi, -212(%rbp)
	movl	-212(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	L54
L57:
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jae	L55
	movq	-192(%rbp), %rdx
	movl	-208(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L56
L55:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L56:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	x(%rip), %rax
	movl	%eax, %edi
	call	bar
L54:
	movl	-180(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -180(%rbp)
	testl	%eax, %eax
	jg	L57
	leave
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L59
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L59:
	movl	%edi, -212(%rbp)
	movl	-212(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	L60
L63:
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L61
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L62
L61:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L62:
	movq	(%rax), %rax
	movq	%rax, d(%rip)
	movq	d(%rip), %rdx
	movabsq	$4616189618054758400, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm3
	vcvttsd2si	%xmm3, %eax
	movl	%eax, %edi
	call	bar
L60:
	movl	-180(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -180(%rbp)
	testl	%eax, %eax
	jg	L63
	leave
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L65
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L65:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	jmp	L66
L67:
	movq	-192(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	%rdx, -192(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, s1(%rip)
	movq	8(%rax), %rdx
	movq	%rdx, s1+8(%rip)
	movq	16(%rax), %rdx
	movq	%rdx, s1+16(%rip)
	movq	24(%rax), %rax
	movq	%rax, s1+24(%rip)
L66:
	movl	-212(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -212(%rbp)
	testl	%eax, %eax
	jg	L67
	leave
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L69
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L69:
	movl	%edi, -228(%rbp)
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	L70
L73:
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jae	L71
	movl	-212(%rbp), %eax
	cmpl	$176, %eax
	jae	L71
	movq	-200(%rbp), %rdx
	movl	-216(%rbp), %eax
	movl	%eax, %eax
	leaq	(%rdx,%rax), %rcx
	movq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	leaq	8(%rax), %rdx
	movq	(%rcx), %rcx
	movq	%rcx, (%rdx)
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	movl	-212(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -212(%rbp)
	jmp	L72
L71:
	movq	-208(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -208(%rbp)
L72:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, s2(%rip)
	movq	%rdx, s2+8(%rip)
L70:
	movl	-228(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -228(%rbp)
	testl	%eax, %eax
	jg	L73
	leave
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L75
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L75:
	movl	%edi, -212(%rbp)
	movl	-212(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	L76
L77:
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-200(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	%rdx, -200(%rbp)
	movq	(%rax), %rdx
	movq	%rdx, s1(%rip)
	movq	8(%rax), %rdx
	movq	%rdx, s1+8(%rip)
	movq	16(%rax), %rdx
	movq	%rdx, s1+16(%rip)
	movq	24(%rax), %rax
	movq	%rax, s1+24(%rip)
	movl	s1(%rip), %eax
	movl	%eax, %edi
	call	bar
L76:
	movl	-180(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -180(%rbp)
	testl	%eax, %eax
	jg	L77
	leave
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L79
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L79:
	movl	%edi, -244(%rbp)
	movl	-244(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	L80
L85:
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-232(%rbp), %eax
	cmpl	$48, %eax
	jae	L81
	movl	-228(%rbp), %eax
	cmpl	$176, %eax
	jae	L81
	movq	-216(%rbp), %rdx
	movl	-232(%rbp), %eax
	movl	%eax, %eax
	leaq	(%rdx,%rax), %rcx
	movq	-216(%rbp), %rdx
	movl	-228(%rbp), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	leaq	-208(%rbp), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	leaq	8(%rax), %rdx
	movq	(%rcx), %rcx
	movq	%rcx, (%rdx)
	movl	-232(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -232(%rbp)
	movl	-228(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -228(%rbp)
	jmp	L82
L81:
	movq	-224(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	%rdx, -224(%rbp)
L82:
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, s2(%rip)
	movq	%rdx, s2+8(%rip)
	movl	-232(%rbp), %eax
	cmpl	$48, %eax
	jae	L83
	movq	-216(%rbp), %rdx
	movl	-232(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-232(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -232(%rbp)
	jmp	L84
L83:
	movq	-224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -224(%rbp)
L84:
	movl	(%rax), %eax
	movl	%eax, y(%rip)
	movq	s2+8(%rip), %rax
	movl	%eax, %edi
	call	bar
L80:
	movl	-180(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -180(%rbp)
	testl	%eax, %eax
	jg	L85
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	subq	$8, %rsp
	pushq	$13
	pushq	$11
	pushq	$9
	movl	$7, %r9d
	movl	$5, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	f1
	addq	$32, %rsp
	movq	x(%rip), %rax
	cmpq	$11, %rax
	je	L87
	call	abort
L87:
	movabsq	$4634204016564240384, %r8
	movabsq	$4629700416936869888, %rdi
	movabsq	$4625196817309499392, %rsi
	movabsq	$4620693217682128896, %rcx
	movabsq	$4616189618054758400, %rdx
	movabsq	$4611686018427387904, %rax
	vmovq	%r8, %xmm6
	vmovq	%rdi, %xmm5
	vmovq	%rsi, %xmm4
	vmovq	%rcx, %xmm3
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm1
	vmovsd	LC6(%rip), %xmm0
	movl	$6, %edi
	movl	$7, %eax
	call	f2
	movq	d(%rip), %rax
	vmovq	%rax, %xmm7
	vucomisd	LC2(%rip), %xmm7
	jp	L115
	vmovq	%rax, %xmm3
	vucomisd	LC2(%rip), %xmm3
	je	L116
L115:
	call	abort
L116:
	movl	$3, %edx
	movl	$1, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	f3
	movl	bar_arg(%rip), %eax
	cmpl	$1, %eax
	jne	L90
	movq	x(%rip), %rax
	cmpq	$1, %rax
	je	L91
L90:
	call	abort
L91:
	movabsq	$4626041242239631360, %rdx
	movabsq	$4625478292286210048, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$2, %edi
	movl	$2, %eax
	call	f4
	movl	bar_arg(%rip), %eax
	cmpl	$21, %eax
	jne	L92
	movq	d(%rip), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC8(%rip), %xmm4
	jp	L92
	vmovq	%rax, %xmm5
	vucomisd	LC8(%rip), %xmm5
	je	L117
L92:
	call	abort
L117:
	movl	$131, -32(%rbp)
	movl	$251, -16(%rbp)
	movabsq	$4624633867356078080, %rax
	movq	%rax, -24(%rbp)
	movabsq	$4640924231633207296, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$254, -48(%rbp)
	movabsq	$4640466834796052480, %rax
	movq	%rax, -40(%rbp)
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	$2, %edi
	movl	$0, %eax
	call	f5
	addq	$96, %rsp
	movl	s1(%rip), %eax
	cmpl	$131, %eax
	jne	L95
	movl	s1+16(%rip), %eax
	cmpl	$254, %eax
	jne	L95
	movq	s1+8(%rip), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC9(%rip), %xmm6
	jp	L95
	vmovq	%rax, %xmm7
	vucomisd	LC9(%rip), %xmm7
	jne	L95
	movq	s1+24(%rip), %rax
	vmovq	%rax, %xmm3
	vucomisd	LC11(%rip), %xmm3
	jp	L95
	vmovq	%rax, %xmm4
	vucomisd	LC11(%rip), %xmm4
	je	L118
L95:
	call	abort
L118:
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	$3, %edi
	movl	$0, %eax
	call	f5
	addq	$96, %rsp
	movl	s1(%rip), %eax
	cmpl	$131, %eax
	jne	L98
	movl	s1+16(%rip), %eax
	cmpl	$251, %eax
	jne	L98
	movq	s1+8(%rip), %rax
	vmovq	%rax, %xmm5
	vucomisd	LC9(%rip), %xmm5
	jp	L98
	vmovq	%rax, %xmm6
	vucomisd	LC9(%rip), %xmm6
	jne	L98
	movq	s1+24(%rip), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC10(%rip), %xmm2
	jp	L98
	vmovq	%rax, %xmm7
	vucomisd	LC10(%rip), %xmm7
	je	L119
L98:
	call	abort
L119:
	movq	$138, -72(%rbp)
	movabsq	$4625196817309499392, %rax
	movq	%rax, -80(%rbp)
	movq	$257, -88(%rbp)
	movabsq	$4640396466051874816, %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rsi
	vmovq	%rcx, %xmm2
	movq	%r8, %rcx
	vmovq	%rdx, %xmm1
	movq	%rdi, %rdx
	vmovq	%rax, %xmm0
	movl	$2, %edi
	movl	$3, %eax
	call	f6
	movq	s2+8(%rip), %rax
	cmpq	$257, %rax
	jne	L101
	movq	s2(%rip), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC12(%rip), %xmm0
	jp	L101
	vmovq	%rax, %xmm1
	vucomisd	LC12(%rip), %xmm1
	je	L120
L101:
	call	abort
L120:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rsi
	vmovq	%rcx, %xmm2
	movq	%r8, %rcx
	vmovq	%rdx, %xmm1
	movq	%rdi, %rdx
	vmovq	%rax, %xmm0
	movl	$3, %edi
	movl	$3, %eax
	call	f6
	movq	s2+8(%rip), %rax
	cmpq	$138, %rax
	jne	L104
	movq	s2(%rip), %rax
	vmovq	%rax, %xmm3
	vucomisd	LC3(%rip), %xmm3
	jp	L104
	vmovq	%rax, %xmm4
	vucomisd	LC3(%rip), %xmm4
	je	L121
L104:
	call	abort
L121:
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-8(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	movl	$2, %edi
	movl	$0, %eax
	call	f7
	addq	$96, %rsp
	movl	s1(%rip), %eax
	cmpl	$131, %eax
	jne	L107
	movl	s1+16(%rip), %eax
	cmpl	$254, %eax
	jne	L107
	movq	s1+8(%rip), %rax
	vmovq	%rax, %xmm5
	vucomisd	LC9(%rip), %xmm5
	jp	L107
	vmovq	%rax, %xmm6
	vucomisd	LC9(%rip), %xmm6
	jne	L107
	movq	s1+24(%rip), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC11(%rip), %xmm2
	jp	L107
	vmovq	%rax, %xmm7
	vucomisd	LC11(%rip), %xmm7
	je	L122
L107:
	call	abort
L122:
	movl	bar_arg(%rip), %eax
	cmpl	$131, %eax
	je	L110
	call	abort
L110:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rsi
	vmovq	%rcx, %xmm2
	movq	%r8, %rcx
	vmovq	%rdx, %xmm1
	movq	%rdi, %rdx
	vmovq	%rax, %xmm0
	movl	$3, %edi
	movl	$3, %eax
	call	f8
	movq	s2+8(%rip), %rax
	cmpq	$257, %rax
	jne	L111
	movq	s2(%rip), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC12(%rip), %xmm0
	jp	L111
	vmovq	%rax, %xmm1
	vucomisd	LC12(%rip), %xmm1
	je	L123
L111:
	call	abort
L123:
	movl	$0, %eax
	leave
	ret
LC2:
	.long	0
	.long	1077936128
LC3:
	.long	0
	.long	1076887552
LC6:
	.long	0
	.long	1072693248
LC8:
	.long	0
	.long	1076953088
LC9:
	.long	0
	.long	1076756480
LC10:
	.long	0
	.long	1080549376
LC11:
	.long	0
	.long	1080442880
LC12:
	.long	0
	.long	1080426496
