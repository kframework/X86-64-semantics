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
	.comm	x,8,8
	.comm	y,8,8
f1i:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L40
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L41
L40:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L41:
	movq	(%rax), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	movq	%rax, x(%rip)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L42
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L43
L42:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L43:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L44
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L45
L44:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L45:
	movq	(%rax), %rax
	movq	x(%rip), %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vcvttsd2siq	%xmm4, %rax
	movq	%rax, x(%rip)
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
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L48
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L49
L48:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L49:
	movq	(%rax), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L50
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L51
L50:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L51:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L52
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L53
L52:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L53:
	movq	(%rax), %rax
	movq	x(%rip), %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%rax, %xmm3
	vaddsd	%xmm0, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vcvttsd2siq	%xmm4, %rax
	movq	%rax, x(%rip)
	leave
	ret
f2i:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L55
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L56
L55:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L56:
	movl	(%rax), %eax
	cltq
	movq	%rax, y(%rip)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L57
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L58
L57:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L58:
	movq	(%rax), %rdx
	movq	y(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, y(%rip)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L59
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L60
L59:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L60:
	movq	(%rax), %rax
	movq	y(%rip), %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vcvttsd2siq	%xmm3, %rax
	movq	%rax, y(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L61
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L62
L61:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L62:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vcvttsd2siq	%xmm4, %rax
	movq	%rax, x(%rip)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L63
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L64
L63:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L64:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L65
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L66
L65:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L66:
	movq	(%rax), %rax
	movq	x(%rip), %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%rax, %xmm6
	vaddsd	%xmm0, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vcvttsd2siq	%xmm7, %rax
	movq	%rax, x(%rip)
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
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
	movl	%edi, -228(%rbp)
	movl	$8, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-216(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L69
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L70
L69:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L70:
	movl	(%rax), %eax
	cltq
	movq	%rax, y(%rip)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L71
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L72
L71:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L72:
	movq	(%rax), %rdx
	movq	y(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, y(%rip)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L73
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L74
L73:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L74:
	movq	(%rax), %rax
	movq	y(%rip), %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%rax, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vcvttsd2siq	%xmm3, %rax
	movq	%rax, y(%rip)
	movq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L75
	movq	-192(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-192(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-192(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-192(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L76
L75:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L76:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vcvttsd2siq	%xmm4, %rax
	movq	%rax, x(%rip)
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L77
	movq	-192(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-192(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-192(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L78
L77:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L78:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-192(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L79
	movq	-192(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-192(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-192(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-192(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L80
L79:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L80:
	movq	(%rax), %rax
	movq	x(%rip), %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%rax, %xmm6
	vaddsd	%xmm0, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vcvttsd2siq	%xmm7, %rax
	movq	%rax, x(%rip)
	leave
	ret
f3h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L84
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L84:
	movl	%edi, -244(%rbp)
	movl	$8, -240(%rbp)
	movl	$48, -236(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -224(%rbp)
	cmpl	$4, -244(%rbp)
	ja	L85
	movl	-244(%rbp), %eax
	movq	L87(,%rax,8), %rax
	call %rax
L87:
	.quad	L86
	.quad	L88
	.quad	L89
	.quad	L90
	.quad	L91
L86:
	movl	-244(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	f3h
	movq	%rax, -184(%rbp)
	jmp	L92
L88:
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L93
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L94
L93:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L94:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rsi
	movl	-244(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	f3h
	movq	%rax, -184(%rbp)
	jmp	L92
L89:
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L95
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L96
L95:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L96:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L97
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L98
L97:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L98:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movl	-244(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%eax, %edi
	call	f3h
	movq	%rax, -184(%rbp)
	jmp	L92
L90:
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L99
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L100
L99:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L100:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L101
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L102
L101:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L102:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L103
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L104
L103:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L104:
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movl	-244(%rbp), %eax
	movl	$0, %r8d
	movl	%eax, %edi
	call	f3h
	movq	%rax, -184(%rbp)
	jmp	L92
L91:
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L105
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L106
L105:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L106:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L107
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L108
L107:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L108:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L109
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L110
L109:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L110:
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L111
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L112
L111:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L112:
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movl	-244(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	f3h
	movq	%rax, -184(%rbp)
	jmp	L92
L85:
	call	abort
L92:
	movq	-184(%rbp), %rax
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
	je	L115
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L115:
	movl	%edi, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-212(%rbp), %eax
	cmpl	$4, %eax
	je	L117
	cmpl	$5, %eax
	je	L118
	jmp	L132
L117:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L119
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L120
L119:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L120:
	movq	(%rax), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	movq	%rax, y(%rip)
	jmp	L121
L118:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L122
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L123
L122:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L123:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vcvttsd2siq	%xmm2, %rax
	movq	%rax, y(%rip)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L124
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L125
L124:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L125:
	movq	(%rax), %rax
	movq	y(%rip), %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vcvttsd2siq	%xmm5, %rax
	movq	%rax, y(%rip)
	jmp	L121
L132:
	call	abort
L121:
	leaq	-208(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L126
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L127
L126:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L127:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vcvttsd2siq	%xmm6, %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L128
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	L129
L128:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L129:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L130
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-184(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	L131
L130:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L131:
	movq	(%rax), %rax
	movq	x(%rip), %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vcvttsd2siq	%xmm2, %rax
	movq	%rax, x(%rip)
	leave
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4629700416936869888, %rdx
	movabsq	$4625196817309499392, %rax
	vmovq	%rdx, %xmm1
	movl	$128, %esi
	vmovq	%rax, %xmm0
	movl	$3, %edi
	movl	$2, %eax
	call	f1
	movq	x(%rip), %rax
	cmpq	$176, %rax
	je	L134
	call	abort
L134:
	movabsq	$4634204016564240384, %rcx
	movabsq	$4626041242239631360, %rdx
	movabsq	$4625759767262920704, %rax
	vmovq	%rcx, %xmm2
	movl	$17, %ecx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$7, %edx
	movl	$5, %esi
	movl	$6, %edi
	movl	$3, %eax
	call	f2
	movq	x(%rip), %rax
	cmpq	$100, %rax
	jne	L135
	movq	y(%rip), %rax
	cmpq	$30, %rax
	je	L136
L135:
	call	abort
L136:
	movl	$0, %edi
	movl	$0, %eax
	call	f3
	testq	%rax, %rax
	je	L137
	call	abort
L137:
	movl	$18, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	f3
	cmpq	$19, %rax
	je	L138
	call	abort
L138:
	movl	$100, %edx
	movl	$18, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	f3
	cmpq	$120, %rax
	je	L139
	call	abort
L139:
	movl	$300, %ecx
	movl	$100, %edx
	movl	$18, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	f3
	cmpq	$421, %rax
	je	L140
	call	abort
L140:
	movl	$86, %r8d
	movl	$64, %ecx
	movl	$71, %edx
	movl	$18, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	f3
	cmpq	$243, %rax
	je	L141
	call	abort
L141:
	movabsq	$4625759767262920704, %rcx
	movabsq	$4621256167635550208, %rdx
	movabsq	$4618441417868443648, %rax
	vmovq	%rcx, %xmm2
	movl	$16, %esi
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$4, %edi
	movl	$3, %eax
	call	f4
	movq	x(%rip), %rax
	cmpq	$43, %rax
	jne	L142
	movq	y(%rip), %rax
	cmpq	$6, %rax
	je	L143
L142:
	call	abort
L143:
	movabsq	$4638566878703255552, %rcx
	movabsq	$4626604192193052672, %rdx
	movabsq	$4619567317775286272, %rax
	vmovq	%rcx, %xmm3
	movl	$17, %esi
  psuhq $1072693248
  psuhq $0
	vmovsd	(%rsp), %xmm2
  popq %r15
  popq %r15
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$5, %edi
	movl	$4, %eax
	call	f4
	movq	x(%rip), %rax
	cmpq	$144, %rax
	jne	L144
	movq	y(%rip), %rax
	cmpq	$28, %rax
	je	L145
L144:
	call	abort
L145:
	movl	$0, %eax
	popq	%rbp
	ret
