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
	.comm	gd,256,64
	.comm	gf,128,64
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp
	movl	%edi, -420(%rbp)
	movq	$gd, -272(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movl	$0, -260(%rbp)
	jmp	L40
L41:
	movq	$gf, -280(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -284(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -288(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -292(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -296(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -300(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -304(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -308(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -312(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -316(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -320(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -324(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -328(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -332(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -336(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -340(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -344(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -348(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -352(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -356(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -360(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -364(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -368(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -372(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -376(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -380(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -384(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -388(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -392(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -396(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -400(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -404(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	(%rax), %eax
	movl	%eax, -408(%rbp)
	movq	$gd, -272(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -16(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -24(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -32(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -40(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -48(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -56(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -64(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -80(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -88(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -96(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -104(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -112(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -120(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -128(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -136(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -144(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -152(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-160(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -160(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -168(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -176(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-184(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -184(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -192(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-200(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -200(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -208(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-216(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-224(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -224(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-232(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -248(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-256(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -256(%rbp)
	movq	$gd, -272(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -16(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -24(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -32(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -40(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -48(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -56(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -64(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -80(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -88(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -96(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -104(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -112(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -120(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -128(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -136(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -144(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -152(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-160(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -160(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -168(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -176(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-184(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -184(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -192(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-200(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -200(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -208(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-216(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-224(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -224(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-232(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -248(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-256(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -256(%rbp)
	movq	$gd, -272(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -16(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -24(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -32(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -40(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -48(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -56(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -64(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -80(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -88(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -96(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -104(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -112(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -120(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -128(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -136(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -144(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -152(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-160(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -160(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -168(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -176(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-184(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -184(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -192(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-200(%rbp), %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movq	%rax, -200(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -208(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-216(%rbp), %rdx
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm0
	vaddsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -216(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-224(%rbp), %rdx
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -224(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-232(%rbp), %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-240(%rbp), %rdx
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -240(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-248(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -248(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	(%rax), %rax
	movq	-256(%rbp), %rdx
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -256(%rbp)
	movq	$gf, -280(%rbp)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-284(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-288(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-292(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-296(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-300(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-304(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-308(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-312(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-316(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-320(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-324(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-328(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-332(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-336(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-340(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-344(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-348(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-352(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-356(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-360(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-364(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-368(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-372(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-376(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-380(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-384(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-388(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-392(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-396(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-400(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-404(%rbp), %edx
	movl	%edx, (%rax)
	movq	-280(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -280(%rbp)
	movl	-408(%rbp), %edx
	movl	%edx, (%rax)
	addl	$1, -260(%rbp)
L40:
	movl	-260(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jl	L41
	movq	$gd, -272(%rbp)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-120(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-136(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-144(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-160(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-168(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-184(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-200(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-208(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-216(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-224(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-232(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-240(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-248(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-272(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -272(%rbp)
	movq	-256(%rbp), %rdx
	movq	%rdx, (%rax)
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L43
L44:
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, gd(,%rdx,8)
	vxorps	%xmm2, %xmm2, %xmm2
	vcvtsi2ss	-4(%rbp), %xmm2, %xmm2
	vmovd	%xmm2, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, gf(,%rdx,4)
	addl	$1, -4(%rbp)
L43:
	cmpl	$31, -4(%rbp)
	jle	L44
	movl	$1, %edi
	call	foo
	movl	$0, -4(%rbp)
	jmp	L45
L49:
	movl	-4(%rbp), %eax
	cltq
	movq	gd(,%rax,8), %rax
	movl	-4(%rbp), %edx
	sall	$2, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%edx, %xmm0, %xmm0
	vmovq	%rax, %xmm3
	vucomisd	%xmm0, %xmm3
	jp	L46
	vmovq	%rax, %xmm4
	vucomisd	%xmm0, %xmm4
	jne	L46
	movl	-4(%rbp), %eax
	cltq
	movl	gf(,%rax,4), %eax
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
	vmovd	%eax, %xmm5
	vucomiss	%xmm0, %xmm5
	jp	L46
	vmovd	%eax, %xmm6
	vucomiss	%xmm0, %xmm6
	je	L50
L46:
	call	abort
L50:
	addl	$1, -4(%rbp)
L45:
	cmpl	$31, -4(%rbp)
	jle	L49
	movl	$0, %edi
	call	exit
