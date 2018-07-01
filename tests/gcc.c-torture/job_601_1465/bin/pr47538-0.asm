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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm0
	movabsq	$4598175219545276416, %rax
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	cmpq	$1, -32(%rbp)
	jne	L10
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	jmp	L9
L10:
	cmpq	$2, -32(%rbp)
	jne	L12
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vmulsd	-40(%rbp), %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, (%rdx)
	jmp	L9
L12:
	movl	$0, %eax
	movq	%rax, -8(%rbp)
	movabsq	$4607182418800017408, %rax
	movq	%rax, -16(%rbp)
	movq	$1, -24(%rbp)
	jmp	L13
L16:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rsi
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm6
	vmulsd	-40(%rbp), %xmm6, %xmm5
	vmovq	%xmm5, %rcx
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	js	L14
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	jmp	L15
L14:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
L15:
	vmovq	%rcx, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, (%rsi)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vmulsd	-16(%rbp), %xmm2, %xmm0
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm0, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	vmovsd	LC3(%rip), %xmm0
	btcq	$63, %rax
	movq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
L13:
	movq	-32(%rbp), %rax
	subq	$2, %rax
	cmpq	-24(%rbp), %rax
	jae	L16
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	leaq	(%rax,%rdx), %rsi
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vmulsd	-40(%rbp), %xmm6, %xmm5
	vmovq	%xmm5, %rcx
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	js	L17
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	%rax, %xmm7, %xmm7
	vmovq	%xmm7, %rax
	jmp	L18
L17:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm1
	vmovq	%xmm1, %rax
L18:
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm0
	vmovq	%rcx, %xmm5
	vdivsd	%xmm0, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, (%rsi)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vmulsd	-16(%rbp), %xmm6, %xmm0
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, (%rdx)
L9:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movabsq	$4621819117588971520, %rax
	movq	%rax, -96(%rbp)
	movabsq	$4626322717216342016, %rax
	movq	%rax, -88(%rbp)
	movabsq	$4629137466983448576, %rax
	movq	%rax, -80(%rbp)
	movabsq	$4630826316843712512, %rax
	movq	%rax, -72(%rbp)
	movabsq	$4638003928749834240, %rax
	movq	%rax, -160(%rbp)
	movabsq	$4638003928749834240, %rax
	movq	%rax, -152(%rbp)
	movabsq	$4638003928749834240, %rax
	movq	%rax, -144(%rbp)
	movabsq	$4638003928749834240, %rax
	movq	%rax, -136(%rbp)
	movabsq	$4621819117588971520, %rax
	movq	%rax, -64(%rbp)
	movabsq	$4618441417868443648, %rax
	movq	%rax, -56(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$3, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	foo
	movq	-128(%rbp), %rax
	movl	$0, %edx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	L20
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	L20
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC5(%rip), %xmm4
	jp	L20
	vmovq	%rax, %xmm5
	vucomisd	LC5(%rip), %xmm5
	jne	L20
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC4(%rip), %xmm6
	jp	L20
	vmovq	%rax, %xmm7
	vucomisd	LC4(%rip), %xmm7
	jne	L20
	movq	-104(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC10(%rip), %xmm0
	jp	L20
	vmovq	%rax, %xmm1
	vucomisd	LC10(%rip), %xmm1
	je	L33
L20:
	call	abort
L33:
	movq	$2, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	foo
	movq	-128(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC11(%rip), %xmm2
	jp	L23
	vmovq	%rax, %xmm3
	vucomisd	LC11(%rip), %xmm3
	jne	L23
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC5(%rip), %xmm4
	jp	L23
	vmovq	%rax, %xmm5
	vucomisd	LC5(%rip), %xmm5
	jne	L23
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC10(%rip), %xmm6
	jp	L23
	vmovq	%rax, %xmm7
	vucomisd	LC10(%rip), %xmm7
	jne	L23
	movq	-104(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC8(%rip), %xmm0
	jp	L23
	vmovq	%rax, %xmm1
	vucomisd	LC8(%rip), %xmm1
	je	L34
L23:
	call	abort
L34:
	movq	$1, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	foo
	movq	-128(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC12(%rip), %xmm2
	jp	L26
	vmovq	%rax, %xmm3
	vucomisd	LC12(%rip), %xmm3
	jne	L26
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC10(%rip), %xmm4
	jp	L26
	vmovq	%rax, %xmm5
	vucomisd	LC10(%rip), %xmm5
	jne	L26
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC8(%rip), %xmm6
	jp	L26
	vmovq	%rax, %xmm7
	vucomisd	LC8(%rip), %xmm7
	jne	L26
	movq	-104(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC8(%rip), %xmm0
	jp	L26
	vmovq	%rax, %xmm1
	vucomisd	LC8(%rip), %xmm1
	je	L35
L26:
	call	abort
L35:
	movq	$0, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	foo
	movq	-128(%rbp), %rax
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L29
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jne	L29
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC8(%rip), %xmm6
	jp	L29
	vmovq	%rax, %xmm7
	vucomisd	LC8(%rip), %xmm7
	jne	L29
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC8(%rip), %xmm0
	jp	L29
	vmovq	%rax, %xmm1
	vucomisd	LC8(%rip), %xmm1
	jne	L29
	movq	-104(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC8(%rip), %xmm2
	jp	L29
	vmovq	%rax, %xmm3
	vucomisd	LC8(%rip), %xmm3
	je	L36
L29:
	call	abort
L36:
	movl	$0, %eax
	leave
	ret
LC3:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
LC4:
	.long	0
	.long	1076101120
LC5:
	.long	0
	.long	1077149696
LC8:
	.long	0
	.long	1079869440
LC10:
	.long	0
	.long	-1071382528
LC11:
	.long	0
	.long	1078853632
LC12:
	.long	0
	.long	-1070333952
