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
	.comm	x,8,8
	.comm	y,8,8
f1i:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L10
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
	jmp	L11
L10:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L11:
	movq	(%rax), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	movq	%rax, x(%rip)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L12
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
	jmp	L13
L12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L13:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L14
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
	jmp	L15
L14:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L15:
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
	je	L17
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L17:
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
	ja	L18
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
	jmp	L19
L18:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L19:
	movq	(%rax), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L20
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
	jmp	L21
L20:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L21:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L22
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
	jmp	L23
L22:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L23:
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
	jae	L25
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
	jmp	L26
L25:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L26:
	movl	(%rax), %eax
	cltq
	movq	%rax, y(%rip)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$48, %eax
	jae	L27
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
	jmp	L28
L27:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L28:
	movq	(%rax), %rdx
	movq	y(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, y(%rip)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$176, %eax
	jae	L29
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
	jmp	L30
L29:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L30:
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
	ja	L31
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
	jmp	L32
L31:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L32:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vcvttsd2siq	%xmm4, %rax
	movq	%rax, x(%rip)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L33
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
	jmp	L34
L33:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L34:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L35
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
	jmp	L36
L35:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L36:
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
	je	L38
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L38:
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
	ja	L39
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
	jmp	L40
L39:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L40:
	movl	(%rax), %eax
	cltq
	movq	%rax, y(%rip)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L41
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
	jmp	L42
L41:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L42:
	movq	(%rax), %rdx
	movq	y(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, y(%rip)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L43
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
	jmp	L44
L43:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L44:
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
	ja	L45
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
	jmp	L46
L45:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L46:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vcvttsd2siq	%xmm4, %rax
	movq	%rax, x(%rip)
	movq	-192(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L47
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
	jmp	L48
L47:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L48:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-192(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L49
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
	jmp	L50
L49:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L50:
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
	je	L54
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L54:
	movl	%edi, -244(%rbp)
	movl	$8, -240(%rbp)
	movl	$48, -236(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -224(%rbp)
	cmpl	$4, -244(%rbp)
	ja	L55
	movl	-244(%rbp), %eax
	movq	L57(,%rax,8), %rax
	jmp	*%rax
L57:
	.quad	L56
	.quad	L58
	.quad	L59
	.quad	L60
	.quad	L61
L56:
	movl	-244(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	f3h
	movq	%rax, -184(%rbp)
	jmp	L62
L58:
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L63
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L64
L63:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L64:
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
	jmp	L62
L59:
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L65
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L66
L65:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L66:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L67
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L68
L67:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L68:
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
	jmp	L62
L60:
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L69
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L70
L69:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L70:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L71
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L72
L71:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L72:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L73
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L74
L73:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L74:
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
	jmp	L62
L61:
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L75
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L76
L75:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L76:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L77
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L78
L77:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L78:
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L79
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L80
L79:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L80:
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movl	-240(%rbp), %eax
	cmpl	$48, %eax
	jae	L81
	movq	-224(%rbp), %rdx
	movl	-240(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -240(%rbp)
	jmp	L82
L81:
	movq	-232(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -232(%rbp)
L82:
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
	jmp	L62
L55:
	call	abort
L62:
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
	movl	%edi, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-212(%rbp), %eax
	cmpl	$4, %eax
	je	L87
	cmpl	$5, %eax
	je	L88
	jmp	L102
L87:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L89
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L90
L89:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L90:
	movq	(%rax), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	movq	%rax, y(%rip)
	jmp	L91
L88:
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L92
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L93
L92:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L93:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vcvttsd2siq	%xmm2, %rax
	movq	%rax, y(%rip)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L94
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L95
L94:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L95:
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
	jmp	L91
L102:
	call	abort
L91:
	leaq	-208(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L96
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
	jmp	L97
L96:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L97:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vcvttsd2siq	%xmm6, %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	L98
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
	jmp	L99
L98:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L99:
	movq	(%rax), %rdx
	movq	x(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, x(%rip)
	movq	-184(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	L100
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
	jmp	L101
L100:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, 8(%rdx)
L101:
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
.globl _start
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
	je	L104
	call	abort
L104:
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
	jne	L105
	movq	y(%rip), %rax
	cmpq	$30, %rax
	je	L106
L105:
	call	abort
L106:
	movl	$0, %edi
	movl	$0, %eax
	call	f3
	testq	%rax, %rax
	je	L107
	call	abort
L107:
	movl	$18, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	f3
	cmpq	$19, %rax
	je	L108
	call	abort
L108:
	movl	$100, %edx
	movl	$18, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	f3
	cmpq	$120, %rax
	je	L109
	call	abort
L109:
	movl	$300, %ecx
	movl	$100, %edx
	movl	$18, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	f3
	cmpq	$421, %rax
	je	L110
	call	abort
L110:
	movl	$86, %r8d
	movl	$64, %ecx
	movl	$71, %edx
	movl	$18, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	f3
	cmpq	$243, %rax
	je	L111
	call	abort
L111:
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
	jne	L112
	movq	y(%rip), %rax
	cmpq	$6, %rax
	je	L113
L112:
	call	abort
L113:
	movabsq	$4638566878703255552, %rcx
	movabsq	$4626604192193052672, %rdx
	movabsq	$4619567317775286272, %rax
	vmovq	%rcx, %xmm3
	movl	$17, %esi
	vmovsd	LC10(%rip), %xmm2
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$5, %edi
	movl	$4, %eax
	call	f4
	movq	x(%rip), %rax
	cmpq	$144, %rax
	jne	L114
	movq	y(%rip), %rax
	cmpq	$28, %rax
	je	L115
L114:
	call	abort
L115:
	movl	$0, %eax
	popq	%rbp
	ret
LC10:
	.long	0
	.long	1072693248
