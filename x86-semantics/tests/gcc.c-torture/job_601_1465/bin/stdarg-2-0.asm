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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$8, %eax
	je	L41
	cmpl	$11, %eax
	je	L42
	cmpl	$5, %eax
	jne	L57
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L44
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
	jmp	L45
L44:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L45:
	movl	(%rax), %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L46
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L47
L46:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L47:
	movq	(%rax), %rax
	movl	foo_arg(%rip), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vcvttsd2si	%xmm3, %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L48
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
	jmp	L49
L48:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L49:
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	foo_arg(%rip), %eax
	addl	%edx, %eax
	movl	%eax, foo_arg(%rip)
	jmp	L39
L41:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L51
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
	jmp	L52
L51:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L52:
	movq	(%rax), %rax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L53
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L54
L53:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L54:
	movq	(%rax), %rax
	movl	foo_arg(%rip), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vcvttsd2si	%xmm6, %eax
	movl	%eax, foo_arg(%rip)
	jmp	L39
L42:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L55
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
	jmp	L56
L55:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L56:
	movl	(%rax), %eax
	movl	%eax, foo_arg(%rip)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	fldt	(%rax)
	movl	foo_arg(%rip), %eax
	movl	%eax, -20(%rbp)
	fildl	-20(%rbp)
	faddp	%st, %st(1)
	fisttpl	-8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, foo_arg(%rip)
	jmp	L39
L57:
	call	abort
L39:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$16386, -4(%rbp)
	jne	L59
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jae	L60
	movq	gap+16(%rip), %rdx
	movl	gap(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap(%rip), %edx
	addl	$8, %edx
	movl	%edx, gap(%rip)
	jmp	L61
L60:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L61:
	movl	(%rax), %eax
	cmpl	$13, %eax
	jne	L62
	movl	gap+4(%rip), %eax
	cmpl	$176, %eax
	jae	L63
	movq	gap+16(%rip), %rdx
	movl	gap+4(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap+4(%rip), %edx
	addl	$16, %edx
	movl	%edx, gap+4(%rip)
	jmp	L64
L63:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L64:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC1(%rip), %xmm0
	jp	L62
	vmovq	%rax, %xmm1
	vucomisd	LC1(%rip), %xmm1
	je	L59
L62:
	call	abort
L59:
	movl	-4(%rbp), %eax
	movl	%eax, bar_arg(%rip)
	leave
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$72, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L67
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L67:
	movl	%edi, -180(%rbp)
	movl	$8, gap(%rip)
	movl	$48, gap+4(%rip)
	leaq	16(%rbp), %rax
	movq	%rax, gap+8(%rip)
	leaq	-176(%rbp), %rax
	movq	%rax, gap+16(%rip)
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jae	L68
	movq	gap+16(%rip), %rdx
	movl	gap(%rip), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	gap(%rip), %edx
	addl	$8, %edx
	movl	%edx, gap(%rip)
	jmp	L69
L68:
	movq	gap+8(%rip), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
L69:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L71
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L71:
	movl	%edi, -180(%rbp)
	movl	$8, gap(%rip)
	movl	$48, gap+4(%rip)
	leaq	16(%rbp), %rax
	movq	%rax, gap+8(%rip)
	leaq	-176(%rbp), %rax
	movq	%rax, gap+16(%rip)
	movl	-180(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$312, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L73
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L73:
	movl	%edi, -420(%rbp)
	movl	$8, -320(%rbp)
	movl	$48, -316(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	-320(%rbp), %eax
	cmpl	$48, %eax
	jae	L74
	movq	-304(%rbp), %rdx
	movl	-320(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-320(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -320(%rbp)
	jmp	L75
L74:
	movq	-312(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -312(%rbp)
L75:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$432, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L77
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L77:
	movl	%edi, -420(%rbp)
	movl	$8, -320(%rbp)
	movl	$48, -316(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	-420(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$432, %rsp
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
	movl	%edi, -420(%rbp)
	movl	$8, -320(%rbp)
	movl	$48, -316(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-416(%rbp), %rax
	leaq	96(%rax), %rdx
	movl	-420(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	leave
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L81
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L81:
	movl	%edi, -260(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	-248(%rbp), %eax
	cmpl	$48, %eax
	jae	L82
	movq	-232(%rbp), %rdx
	movl	-248(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-248(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -248(%rbp)
	jmp	L83
L82:
	movq	-240(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -240(%rbp)
L83:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L85
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L85:
	movl	%edi, -260(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L87
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L87:
	movl	%edi, -260(%rbp)
	movl	$8, -248(%rbp)
	movl	$48, -244(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-260(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	leave
	ret
f10:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$152, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L89
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L89:
	movl	%edi, -260(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L90
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L91
L90:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L91:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	leave
	ret
f11:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L93
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L93:
	movl	%edi, -260(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, %edi
	call	bar
	leave
	ret
f12:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L95
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L95:
	movl	%edi, -260(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-256(%rbp), %rax
	leaq	56(%rax), %rdx
	movl	-260(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$79, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	f1
	movq	x(%rip), %rax
	cmpq	$79, %rax
	je	L97
	call	abort
L97:
	movabsq	$-4599301119452119040, %rax
	vmovq	%rax, %xmm0
	movl	$13, %esi
	movl	$16386, %edi
	movl	$1, %eax
	call	f2
	movl	bar_arg(%rip), %eax
	cmpl	$16386, %eax
	je	L98
	call	abort
L98:
	movl	$2031, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	f3
	movq	x(%rip), %rax
	cmpq	$2031, %rax
	je	L99
	call	abort
L99:
	movl	$18, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	f4
	movl	bar_arg(%rip), %eax
	cmpl	$4, %eax
	je	L100
	call	abort
L100:
	movabsq	$4626041242239631360, %rax
	movl	$18, %edx
	vmovq	%rax, %xmm0
	movl	$1, %esi
	movl	$5, %edi
	movl	$1, %eax
	call	f5
	movl	foo_arg(%rip), %eax
	cmpl	$38, %eax
	je	L101
	call	abort
L101:
	movl	$18, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	f6
	movq	x(%rip), %rax
	cmpq	$18, %rax
	je	L102
	call	abort
L102:
	movl	$7, %edi
	movl	$0, %eax
	call	f7
	movl	bar_arg(%rip), %eax
	cmpl	$7, %eax
	je	L103
	call	abort
L103:
	movabsq	$4623507967449235456, %rax
	vmovq	%rax, %xmm0
	movl	$2031, %esi
	movl	$8, %edi
	movl	$1, %eax
	call	f8
	movl	foo_arg(%rip), %eax
	cmpl	$2044, %eax
	je	L104
	call	abort
L104:
	movl	$180, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	f10
	movq	x(%rip), %rax
	cmpq	$180, %rax
	je	L105
	call	abort
L105:
	movl	$10, %edi
	movl	$0, %eax
	call	f11
	movl	bar_arg(%rip), %eax
	cmpl	$10, %eax
	je	L106
	call	abort
L106:
	movabsq	$-4611686018427387904, %rax
	movl	$16386, %edx
	pushq	%rdx
	pushq	%rax
	movl	$2030, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	f12
	addq	$16, %rsp
	movl	foo_arg(%rip), %eax
	cmpl	$2042, %eax
	je	L107
	call	abort
L107:
	movl	$0, %eax
	leave
	ret
LC1:
	.long	0
	.long	-1070858240
