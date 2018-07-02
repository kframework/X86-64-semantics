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
	.comm	pap,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	jne	L45
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L42
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L43
L42:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L43:
	movl	(%rax), %eax
	movl	%eax, foo_arg(%rip)
	jmp	L46
L45:
	call	abort
L46:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$16390, -4(%rbp)
	jne	L48
	movl	gap+4(%rip), %eax
	cmpl	$176, %eax
	jae	L49
	movq	gap+16(%rip), %rdx
	movl	gap+4(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap+4(%rip), %edx
	addl	$16, %edx
	movl	%edx, gap+4(%rip)
	jmp	L50
L49:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L50:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L51
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	jne	L51
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jae	L52
	movq	gap+16(%rip), %rdx
	movl	gap(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap(%rip), %edx
	addl	$8, %edx
	movl	%edx, gap(%rip)
	jmp	L53
L52:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L53:
	movq	(%rax), %rax
	cmpq	$129, %rax
	je	L54
L51:
	call	abort
L48:
	cmpl	$16392, -4(%rbp)
	jne	L54
	movq	pap(%rip), %rax
	movl	(%rax), %edx
	cmpl	$48, %edx
	jae	L55
	movq	16(%rax), %rcx
	movl	(%rax), %edx
	movl	%edx, %edx
	addq	%rcx, %rdx
	movl	(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, (%rax)
	jmp	L56
L55:
	movq	8(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
L56:
	movq	(%rdx), %rax
	cmpq	$14, %rax
	jne	L57
	movq	pap(%rip), %rax
	movq	8(%rax), %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	leaq	16(%rdx), %rcx
	movq	%rcx, 8(%rax)
	fldt	(%rdx)
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	jp	L60
	fldt	LC1(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	L57
	movq	pap(%rip), %rax
	movl	(%rax), %edx
	cmpl	$48, %edx
	jae	L58
	movq	16(%rax), %rcx
	movl	(%rax), %edx
	movl	%edx, %edx
	addq	%rcx, %rdx
	movl	(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, (%rax)
	jmp	L59
L58:
	movq	8(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
L59:
	movl	(%rdx), %eax
	cmpl	$17, %eax
	je	L54
	jmp	L57
L60:
	fstp	%st(0)
L57:
	call	abort
L54:
	movl	-4(%rbp), %eax
	movl	%eax, bar_arg(%rip)
	leave
	ret
f0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L62
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L62:
	movl	%edi, -180(%rbp)
	leave
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
	je	L64
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L64:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L66
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L66:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	d(%rip), %rax
	vmovq	%rax, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	bar
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L67
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L68
L67:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L68:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	x(%rip), %rax
	movl	%eax, %edi
	call	bar
	leave
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L70
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L70:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L71
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L72
L71:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L72:
	movq	(%rax), %rax
	movq	%rax, d(%rip)
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
	je	L74
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L74:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L75
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L76
L75:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L76:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vcvttsd2siq	%xmm0, %rax
	movq	%rax, x(%rip)
	leaq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	leave
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L78
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L78:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, gap(%rip)
	movq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
	movq	16(%rax), %rax
	movq	%rax, gap+16(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L80
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L80:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	d(%rip), %rax
	vmovq	%rax, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	bar
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L81
	movl	-200(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -200(%rbp)
	jmp	L82
L81:
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -192(%rbp)
L82:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L83
	movl	-200(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -200(%rbp)
	jmp	L84
L83:
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -192(%rbp)
L84:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L85
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L86
L85:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L86:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	x(%rip), %rax
	movl	%eax, %edi
	call	bar
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
	je	L88
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L88:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, pap(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L90
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L90:
	movl	%edi, -212(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, pap(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L91
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L92
L91:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L92:
	movq	(%rax), %rax
	movq	%rax, d(%rip)
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	movl	$0, %eax
	call	f0
	movl	$2, %edi
	movl	$0, %eax
	call	f1
	movabsq	$4629418941960159232, %rax
	movq	%rax, d(%rip)
	movl	$28, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	f2
	movl	bar_arg(%rip), %eax
	cmpl	$28, %eax
	jne	L94
	movq	x(%rip), %rax
	cmpq	$28, %rax
	je	L95
L94:
	call	abort
L95:
	movabsq	$4638813169307877376, %rax
	vmovq	%rax, %xmm0
	movl	$4, %edi
	movl	$1, %eax
	call	f3
	movq	d(%rip), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC4(%rip), %xmm1
	jp	L107
	vmovq	%rax, %xmm2
	vucomisd	LC4(%rip), %xmm2
	je	L108
L107:
	call	abort
L108:
	movabsq	$4625196817309499392, %rax
	movl	$128, %esi
	vmovq	%rax, %xmm0
	movl	$5, %edi
	movl	$1, %eax
	call	f4
	movq	x(%rip), %rax
	cmpq	$16, %rax
	jne	L98
	movl	foo_arg(%rip), %eax
	cmpl	$128, %eax
	je	L99
L98:
	call	abort
L99:
	movabsq	$4625478292286210048, %rax
	movl	$129, %esi
	vmovq	%rax, %xmm0
	movl	$16390, %edi
	movl	$1, %eax
	call	f5
	movl	bar_arg(%rip), %eax
	cmpl	$16390, %eax
	je	L100
	call	abort
L100:
	movq	$-31, %rcx
	movl	$14, %edx
	movl	$12, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	f6
	movl	bar_arg(%rip), %eax
	cmpl	$-31, %eax
	je	L101
	call	abort
L101:
	movabsq	$4628011567076605952, %rcx
	movabsq	$-9007199254740992000, %rax
	movl	$16390, %edx
	pushq	%rdx
	pushq	%rax
	vmovq	%rcx, %xmm0
	movl	$17, %edx
	movl	$14, %esi
	movl	$16392, %edi
	movl	$1, %eax
	call	f7
	addq	$16, %rsp
	movl	bar_arg(%rip), %eax
	cmpl	$16392, %eax
	je	L102
	call	abort
L102:
	movabsq	$4628293042053316608, %rcx
	movabsq	$-9007199254740992000, %rax
	movl	$16390, %edx
	pushq	%rdx
	pushq	%rax
	vmovq	%rcx, %xmm0
	movl	$17, %edx
	movl	$14, %esi
	movl	$16392, %edi
	movl	$1, %eax
	call	f8
	addq	$16, %rsp
	movl	bar_arg(%rip), %eax
	cmpl	$16392, %eax
	jne	L103
	movq	d(%rip), %rax
	vmovq	%rax, %xmm3
	vucomisd	LC7(%rip), %xmm3
	jp	L103
	vmovq	%rax, %xmm4
	vucomisd	LC7(%rip), %xmm4
	je	L109
L103:
	call	abort
L109:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	0
	.long	1076953088
LC1:
	.long	0
	.long	2197815296
	.long	16390
	.long	0
LC4:
	.long	0
	.long	1080057856
LC7:
	.long	0
	.long	1077608448
