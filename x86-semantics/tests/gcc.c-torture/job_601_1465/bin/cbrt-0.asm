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
B1:
	.quad	715094163
B2:
	.quad	696219795
C:
	.long	4049540593
	.long	1071734549
D:
	.long	624085044
	.long	-1075408418
E:
	.long	245426703
	.long	1073127658
F:
	.long	1840700270
	.long	1073329883
G:
	.long	3067833783
	.long	1071045485
cbrtl:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -88(%rbp)
	movabsq	$4607182418800017408, %rax
	movq	%rax, -64(%rbp)
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andl	$-2147483648, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	xorq	%rax, -16(%rbp)
	cmpq	$2146435071, -16(%rbp)
	jle	L40
	movq	-88(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	jmp	L45
L40:
	movl	$1, %eax
	subl	-4(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %eax
	orq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	L42
	movq	-80(%rbp), %rax
	jmp	L45
L42:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -80(%rbp,%rax,4)
	cmpq	$1048575, -16(%rbp)
	jg	L43
	movl	-4(%rbp), %eax
	cltq
	movl	$1129316352, -64(%rbp,%rax,4)
	movq	-64(%rbp), %rax
	vmovq	%rax, %xmm5
	vmulsd	-88(%rbp), %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -64(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	movl	$-1431655765, %edx
	mull	%edx
	shrl	%edx
	movl	$696219795, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	jmp	L44
L43:
	movq	-16(%rbp), %rcx
	movabsq	$6148914691236517206, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	$715094163, %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
L44:
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	-80(%rbp), %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vdivsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	vmovq	%rax, %xmm5
	vmulsd	-32(%rbp), %xmm5, %xmm0
	movabsq	$4603064841997850097, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rcx
	movabsq	$4609916747145206638, %rax
	movabsq	$4609048195788499471, %rdx
	vmovq	%rdx, %xmm1
	vaddsd	-40(%rbp), %xmm1, %xmm1
	movabsq	$-4618843984529012684, %rdx
	vmovq	%rdx, %xmm2
	vdivsd	-40(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovq	%rax, %xmm3
	vdivsd	%xmm0, %xmm3, %xmm0
	movabsq	$4600105333671292343, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm0
	vmovq	%rcx, %xmm6
	vmulsd	%xmm0, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -64(%rbp)
	movl	$1, %eax
	subl	-4(%rbp), %eax
	cltq
	movl	$0, -64(%rbp,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	vmovq	%rax, %xmm4
	vdivsd	-40(%rbp), %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	-48(%rbp), %rdx
	vmovq	%rdx, %xmm3
	vaddsd	-32(%rbp), %xmm3, %xmm0
	vmovq	%rax, %xmm5
	vdivsd	%xmm0, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	vmovq	%rax, %xmm6
	vmulsd	-32(%rbp), %xmm6, %xmm0
	vmovq	%rdx, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -64(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	orl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm2
	vmulsd	-56(%rbp), %xmm2, %xmm0
	movq	-88(%rbp), %rax
	vmovq	%rax, %xmm3
	vdivsd	%xmm0, %xmm3, %xmm0
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm4
	vsubsd	%xmm0, %xmm4, %xmm0
	movabsq	$4599676419421066581, %rax
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm0, %xmm0
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm7
	vsubsd	%xmm0, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
L45:
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4628293042053316608, %rax
	vmovq	%rax, %xmm0
	call	cbrtl
	vmovq	%xmm0, %rdx
	movabsq	$4602678819172646912, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm4
	vcvttsd2si	%xmm4, %eax
	cmpl	$3, %eax
	je	L47
	call	abort
L47:
	movl	$0, %edi
	call	exit
