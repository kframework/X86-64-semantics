strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	cmpb	%dl, %al
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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L15
L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L26
L27:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
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
	jnb	L42
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
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$16390, -4(%rbp)
	jne	L48
	movl	gap+4(%rip), %eax
	cmpl	$176, %eax
	jnb	L49
	movq	gap+16(%rip), %rax
	movl	gap+4(%rip), %edx
	movl	%edx, %edx
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
  pushq $1076953088
  pushq $0
	vucomisd	(%rsp), %xmm0
  popq %r15
  popq %r15
	jp	L51
	vmovq	%rax, %xmm1
  pushq $1076953088
  pushq $0
	vucomisd	(%rsp), %xmm1
  popq %r15
  popq %r15
	jne	L51
	movl	gap(%rip), %eax
	cmpl	$48, %eax
	jnb	L52
	movq	gap+16(%rip), %rax
	movl	gap(%rip), %edx
	movl	%edx, %edx
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
	jnb	L55
	movq	16(%rax), %rdx
	movl	(%rax), %ecx
	movl	%ecx, %ecx
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
	movl	4(%rax), %edx
	cmpl	$176, %edx
	jnb	L58
	movq	16(%rax), %rdx
	movl	4(%rax), %ecx
	movl	%ecx, %ecx
	addq	%rcx, %rdx
	movl	4(%rax), %ecx
	addl	$16, %ecx
	movl	%ecx, 4(%rax)
	jmp	L59
L58:
	movq	8(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
L59:
	movq	(%rdx), %rax
	vmovq	%rax, %xmm2
  pushq $1080057856
  pushq $0
	vucomisd	(%rsp), %xmm2
  popq %r15
  popq %r15
	jp	L57
	vmovq	%rax, %xmm3
  pushq $1080057856
  pushq $0
	vucomisd	(%rsp), %xmm3
  popq %r15
  popq %r15
	jne	L57
	movq	pap(%rip), %rax
	movl	(%rax), %edx
	cmpl	$48, %edx
	jnb	L60
	movq	16(%rax), %rdx
	movl	(%rax), %ecx
	movl	%ecx, %ecx
	addq	%rcx, %rdx
	movl	(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, (%rax)
	jmp	L61
L60:
	movq	8(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
L61:
	movl	(%rdx), %eax
	cmpl	$17, %eax
	je	L54
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
	je	L63
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L63:
	movl	%edi, -180(%rbp)
	leave
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
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
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L66
	call	__stack_chk_fail
L66:
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
	je	L68
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L68:
	movl	%edi, -212(%rbp)
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	d(%rip), %rax
	vmovq	%rax, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	bar
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	L69
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L70
L69:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L70:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	x(%rip), %rax
	movl	%eax, %edi
	call	bar
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L71
	call	__stack_chk_fail
L71:
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
	movl	%edi, -212(%rbp)
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	L74
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L75
L74:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L75:
	movq	(%rax), %rax
	movq	%rax, d(%rip)
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L76
	call	__stack_chk_fail
L76:
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
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	L79
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L80
L79:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L80:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vcvttsd2siq	%xmm0, %rax
	movq	%rax, x(%rip)
	leaq	-208(%rbp), %rdx
	movl	-212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L81
	call	__stack_chk_fail
L81:
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
	je	L83
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L83:
	movl	%edi, -212(%rbp)
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, gap(%rip)
	movq	8(%rax), %rdx
	movq	%rdx, gap+8(%rip)
	movq	16(%rax), %rax
	movq	%rax, gap+16(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L84
	call	__stack_chk_fail
L84:
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
	je	L86
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L86:
	movl	%edi, -212(%rbp)
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	d(%rip), %rax
	vmovq	%rax, %xmm0
	vcvttsd2si	%xmm0, %eax
	movl	%eax, %edi
	call	bar
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	L87
	movl	-208(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -208(%rbp)
	jmp	L88
L87:
	movq	-200(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -200(%rbp)
L88:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	L89
	movl	-208(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -208(%rbp)
	jmp	L90
L89:
	movq	-200(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -200(%rbp)
L90:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	L91
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	L92
L91:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L92:
	movq	(%rax), %rax
	movq	%rax, x(%rip)
	movq	x(%rip), %rax
	movl	%eax, %edi
	call	bar
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L93
	call	__stack_chk_fail
L93:
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
	movl	%edi, -212(%rbp)
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, pap(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L96
	call	__stack_chk_fail
L96:
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
	je	L98
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L98:
	movl	%edi, -212(%rbp)
	movq	$40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, pap(%rip)
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	bar
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jnb	L99
	movq	-192(%rbp), %rax
	movl	-204(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L100
L99:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L100:
	movq	(%rax), %rax
	movq	%rax, d(%rip)
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	L101
	call	__stack_chk_fail
L101:
	leave
	ret
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
	jne	L103
	movq	x(%rip), %rax
	cmpq	$28, %rax
	je	L104
L103:
	call	abort
L104:
	movabsq	$4638813169307877376, %rax
	vmovq	%rax, %xmm0
	movl	$4, %edi
	movl	$1, %eax
	call	f3
	movq	d(%rip), %rax
	vmovq	%rax, %xmm2
  pushq $1080057856
  pushq $0
	vucomisd	(%rsp), %xmm2
  popq %r15
  popq %r15
	jp	L116
	vmovq	%rax, %xmm3
  pushq $1080057856
  pushq $0
	vucomisd	(%rsp), %xmm3
  popq %r15
  popq %r15
	je	L117
L116:
	call	abort
L117:
	movabsq	$4625196817309499392, %rax
	movl	$128, %esi
	vmovq	%rax, %xmm0
	movl	$5, %edi
	movl	$1, %eax
	call	f4
	movq	x(%rip), %rax
	cmpq	$16, %rax
	jne	L107
	movl	foo_arg(%rip), %eax
	cmpl	$128, %eax
	je	L108
L107:
	call	abort
L108:
	movabsq	$4625478292286210048, %rax
	movl	$129, %esi
	vmovq	%rax, %xmm0
	movl	$16390, %edi
	movl	$1, %eax
	call	f5
	movl	bar_arg(%rip), %eax
	cmpl	$16390, %eax
	je	L109
	call	abort
L109:
	movq	$-31, %rcx
	movl	$14, %edx
	movl	$12, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	f6
	movl	bar_arg(%rip), %eax
	cmpl	$-31, %eax
	je	L110
	call	abort
L110:
	movabsq	$4628011567076605952, %rdx
	movabsq	$4638813169307877376, %rax
	vmovq	%rdx, %xmm1
	movl	$17, %edx
	vmovq	%rax, %xmm0
	movl	$14, %esi
	movl	$16392, %edi
	movl	$2, %eax
	call	f7
	movl	bar_arg(%rip), %eax
	cmpl	$16392, %eax
	je	L111
	call	abort
L111:
	movabsq	$4628293042053316608, %rdx
	movabsq	$4638813169307877376, %rax
	vmovq	%rdx, %xmm1
	movl	$17, %edx
	vmovq	%rax, %xmm0
	movl	$14, %esi
	movl	$16392, %edi
	movl	$2, %eax
	call	f8
	movl	bar_arg(%rip), %eax
	cmpl	$16392, %eax
	jne	L112
	movq	d(%rip), %rax
	vmovq	%rax, %xmm4
  pushq $1077608448
  pushq $0
	vucomisd	(%rsp), %xmm4
  popq %r15
  popq %r15
	jp	L112
	vmovq	%rax, %xmm5
  pushq $1077608448
  pushq $0
	vucomisd	(%rsp), %xmm5
  popq %r15
  popq %r15
	je	L118
L112:
	call	abort
L118:
	movl	$0, %eax
	popq	%rbp
	ret
