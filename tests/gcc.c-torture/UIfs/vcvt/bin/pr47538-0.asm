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
	jne	L40
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movl	$0, %eax
	movq	%rax, (%rdx)
	jmp	L39
L40:
	cmpq	$2, -32(%rbp)
	jne	L42
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
	jmp	L39
L42:
	movl	$0, %eax
	movq	%rax, -8(%rbp)
	movabsq	$4607182418800017408, %rax
	movq	%rax, -16(%rbp)
	movq	$1, -24(%rbp)
	jmp	L43
L46:
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
	js	L44
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	jmp	L45
L44:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
L45:
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
  pushq $0
  pushq $0
  pushq $-2147483648
  pushq $0
	vmovsd	(%rsp), %xmm0
  popq %r15
  popq %r15
  popq %r15
  popq %r15
	btcq	$63, %rax
	movq	%rax, -16(%rbp)
	addq	$1, -24(%rbp)
L43:
	movq	-32(%rbp), %rax
	subq	$2, %rax
	cmpq	-24(%rbp), %rax
	jae	L46
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
	js	L47
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	%rax, %xmm7, %xmm7
	vmovq	%xmm7, %rax
	jmp	L48
L47:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm1
	vmovq	%xmm1, %rax
L48:
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
L39:
	popq	%rbp
	ret
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
	jp	L50
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	L50
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm4
  pushq $1077149696
  pushq $0
	vucomisd	(%rsp), %xmm4
  popq %r15
  popq %r15
	jp	L50
	vmovq	%rax, %xmm5
  pushq $1077149696
  pushq $0
	vucomisd	(%rsp), %xmm5
  popq %r15
  popq %r15
	jne	L50
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm6
  pushq $1076101120
  pushq $0
	vucomisd	(%rsp), %xmm6
  popq %r15
  popq %r15
	jp	L50
	vmovq	%rax, %xmm7
  pushq $1076101120
  pushq $0
	vucomisd	(%rsp), %xmm7
  popq %r15
  popq %r15
	jne	L50
	movq	-104(%rbp), %rax
	vmovq	%rax, %xmm0
  pushq $-1071382528
  pushq $0
	vucomisd	(%rsp), %xmm0
  popq %r15
  popq %r15
	jp	L50
	vmovq	%rax, %xmm1
  pushq $-1071382528
  pushq $0
	vucomisd	(%rsp), %xmm1
  popq %r15
  popq %r15
	je	L63
L50:
	call	abort
L63:
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
  pushq $1078853632
  pushq $0
	vucomisd	(%rsp), %xmm2
  popq %r15
  popq %r15
	jp	L53
	vmovq	%rax, %xmm3
  pushq $1078853632
  pushq $0
	vucomisd	(%rsp), %xmm3
  popq %r15
  popq %r15
	jne	L53
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm4
  pushq $1077149696
  pushq $0
	vucomisd	(%rsp), %xmm4
  popq %r15
  popq %r15
	jp	L53
	vmovq	%rax, %xmm5
  pushq $1077149696
  pushq $0
	vucomisd	(%rsp), %xmm5
  popq %r15
  popq %r15
	jne	L53
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm6
  pushq $-1071382528
  pushq $0
	vucomisd	(%rsp), %xmm6
  popq %r15
  popq %r15
	jp	L53
	vmovq	%rax, %xmm7
  pushq $-1071382528
  pushq $0
	vucomisd	(%rsp), %xmm7
  popq %r15
  popq %r15
	jne	L53
	movq	-104(%rbp), %rax
	vmovq	%rax, %xmm0
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm0
  popq %r15
  popq %r15
	jp	L53
	vmovq	%rax, %xmm1
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm1
  popq %r15
  popq %r15
	je	L64
L53:
	call	abort
L64:
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
  pushq $-1070333952
  pushq $0
	vucomisd	(%rsp), %xmm2
  popq %r15
  popq %r15
	jp	L56
	vmovq	%rax, %xmm3
  pushq $-1070333952
  pushq $0
	vucomisd	(%rsp), %xmm3
  popq %r15
  popq %r15
	jne	L56
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm4
  pushq $-1071382528
  pushq $0
	vucomisd	(%rsp), %xmm4
  popq %r15
  popq %r15
	jp	L56
	vmovq	%rax, %xmm5
  pushq $-1071382528
  pushq $0
	vucomisd	(%rsp), %xmm5
  popq %r15
  popq %r15
	jne	L56
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm6
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm6
  popq %r15
  popq %r15
	jp	L56
	vmovq	%rax, %xmm7
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm7
  popq %r15
  popq %r15
	jne	L56
	movq	-104(%rbp), %rax
	vmovq	%rax, %xmm0
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm0
  popq %r15
  popq %r15
	jp	L56
	vmovq	%rax, %xmm1
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm1
  popq %r15
  popq %r15
	je	L65
L56:
	call	abort
L65:
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
	jp	L59
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jne	L59
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm6
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm6
  popq %r15
  popq %r15
	jp	L59
	vmovq	%rax, %xmm7
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm7
  popq %r15
  popq %r15
	jne	L59
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm0
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm0
  popq %r15
  popq %r15
	jp	L59
	vmovq	%rax, %xmm1
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm1
  popq %r15
  popq %r15
	jne	L59
	movq	-104(%rbp), %rax
	vmovq	%rax, %xmm2
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm2
  popq %r15
  popq %r15
	jp	L59
	vmovq	%rax, %xmm3
  pushq $1079869440
  pushq $0
	vucomisd	(%rsp), %xmm3
  popq %r15
  popq %r15
	je	L66
L59:
	call	abort
L66:
	movl	$0, %eax
	leave
	ret
