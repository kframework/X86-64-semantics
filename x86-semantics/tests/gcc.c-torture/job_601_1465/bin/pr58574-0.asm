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
	vmovsd	%xmm0, -24(%rbp)
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2si	%xmm1, %eax
	cmpl	$93, %eax
	ja	L40
	movl	%eax, %eax
	movq	L42(,%rax,8), %rax
	call %rax
L42:
	.quad	L41
	.quad	L43
	.quad	L44
	.quad	L45
	.quad	L46
	.quad	L47
	.quad	L48
	.quad	L49
	.quad	L50
	.quad	L51
	.quad	L52
	.quad	L53
	.quad	L54
	.quad	L55
	.quad	L56
	.quad	L57
	.quad	L58
	.quad	L59
	.quad	L60
	.quad	L61
	.quad	L62
	.quad	L63
	.quad	L64
	.quad	L65
	.quad	L66
	.quad	L67
	.quad	L68
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L69
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L70
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L71
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L40
	.quad	L72
	.quad	L73
	.quad	L74
	.quad	L75
	.quad	L76
	.quad	L77
	.quad	L78
	.quad	L79
	.quad	L80
	.quad	L81
	.quad	L82
	.quad	L83
	.quad	L84
	.quad	L85
	.quad	L86
	.quad	L87
	.quad	L88
	.quad	L89
	.quad	L90
	.quad	L91
	.quad	L92
	.quad	L93
	.quad	L94
	.quad	L95
	.quad	L96
	.quad	L97
	.quad	L98
	.quad	L99
	.quad	L100
	.quad	L101
	.quad	L102
	.quad	L103
	.quad	L104
	.quad	L105
L41:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4385569715645655203, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4420833461758932680, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4455878436880175574, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4490844962870702364, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4525558503772137140, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4559709400108304587, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4559676564903853384, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L43:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4613937818241073152, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4386051929933982021, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4421223066248096575, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4456171364441971477, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4491046853482578007, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4525809733669025805, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4559843323470279718, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4567099142725802541, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L44:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4617315517961601024, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4386533527736948391, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4421635646904389607, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4456479920996763359, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4491258415501010567, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4526070644417204353, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4559981305115951066, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4570485503769133772, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L45:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4619567317775286272, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4386804044375037095, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4422072986361468346, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4456805112370833137, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4491479951157454948, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4526229666880334775, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4560123345045318629, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4572547676818348809, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L46:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4621256167635550208, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4387092308121528995, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4422535751630205075, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4457147867019210277, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4491711762683366053, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4526370511460686362, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4560269812193263883, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4574311992596848667, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L47:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4622382067542392832, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4387398826036664181, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4422781457969202437, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4457508649169409510, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4491954454541653690, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4526516904821655321, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4560420706559786827, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4575885326928110401, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L48:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4623507967449235456, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4387725372831282972, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4423041920553468081, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4457890089444014317, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4492208933426682569, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4526669201140727867, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4560576304846048567, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4576805185350560974, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L49:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4624633867356078080, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4388072962625865553, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4423318327805439721, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4458292419956782066, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4492475501569907595, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4526827518477066072, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4560736699285769472, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4577744297562138481, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L50:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4625478292286210048, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4388442863071012150, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4423611472006742499, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4458640022758514174, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4492755065665693478, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4526992211008156151, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4560902258813831015, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4578704681175475984, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L51:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4626041242239631360, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4388836848877563084, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4423922442544610986, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4458864012534372373, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4493048532408404929, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4527163750970646391, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4561072983430233197, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4579685240915144108, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L52:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4626604192193052672, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4389256441226238628, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4424252625911889183, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4459100768566885702, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4493355901798041949, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4527342256423698864, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4561249149836137123, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4580424551829973248, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L53:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4627167142146473984, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4389703414827879102, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4424603012460608517, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4459350290856054161, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4493678684991879055, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4527528081544799784, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4561431034732703899, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4580937025438770992, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L54:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4627730092099895296, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4390179290863204779, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4424974988683612988, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4459614126826926858, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4494017486452826054, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4527721698570597440, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4561618822587374263, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4581461028262614804, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L55:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4628293042053316608, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4390686097573176025, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4425370040108949739, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4459893050192028345, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4494373515106702563, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4527923461678578045, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4561812882335029687, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4581997136762256988, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L56:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4628855992006737920, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4391117876707553425, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4425789652264665911, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4460187834663883176, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4494669750650359246, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4528133843105389888, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4562013306209390541, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4582545350937697543, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L57:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4629418941960159232, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4391405379863685188, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4426235310678808648, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4460499640811278182, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4494866049980319171, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4528353078969357111, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4562183442835825374, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4583106535480064926, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L58:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4629841154425225216, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4391711771013760351, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4426708897020237663, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4460829242346737914, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4495072474064018369, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4528581877625452146, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4562290480068313074, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4583680690389359136, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L59:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4630122629401935872, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4392037937513199074, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4427125264296301976, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4461177799839049204, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4495289325132911743, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4528820475191999134, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4562401160532755331, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4584268680356708628, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L60:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4630404104378646528, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4392385527307781655, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4427392609827186047, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4461546860713261158, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4495517509881364004, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4529069580023970508, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4562515530346012330, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4584767463022639165, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L61:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4630685579355357184, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4392755554517988275, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4427676741825002828, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4461937198681898329, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4495757481656557508, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4529329664358014554, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4562634050676685914, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4585075725409933421, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L62:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4630967054332067840, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4393149667089599231, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4427978799194588460, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4462350748026272102, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4496010147152856966, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4529601200430779558, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4562756721524776082, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4585391481787007621, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L63:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4631248529308778496, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4393569512968394821, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4428299673252771231, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4462788669315169305, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4496275959717444732, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4529885014656400024, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4562883542890282836, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4585715020384237917, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L64:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4631530004285489152, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4394016359804975272, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4428641344703613996, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4463159676920769153, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4496555977160412971, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4530181461212362166, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4563015437110409859, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4586046773547188538, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L65:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4631811479262199808, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4394492235840300949, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4429004308723132469, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4463405137219183707, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4496850803944671488, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4530491484571962558, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4563151481847953467, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4586386741275859482, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L66:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4632092954238910464, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4394998789020152150, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4429390546015389508, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4463665298055564775, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4497161497880312448, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4530718450082865268, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4563292599440117345, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4586735500031003053, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L67:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4632374429215621120, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4395525578567016656, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4429801046932416540, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4463941126570568049, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4497488814545973109, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4530888042069181324, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4563439251055503336, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4587093193927807327, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L68:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4633500329122463744, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4396787588122073870, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4431631686426962043, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4465220266801785896, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4498986824752203086, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4531649523664544054, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4564081658917870271, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4588620670806223323, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L69:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4635259547726905344, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4400842122524313515, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4435371255697635320, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4468846089570050602, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4501811906436902396, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4534324508158765565, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4566194733451513700, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4591215032421964881, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L70:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4636666922610458624, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4404835809697742206, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4439125406425222446, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4472689422271780372, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4505139145683924132, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4536932963086979436, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4568020327007983412, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4594011371473794750, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L71:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4638074297494011904, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4408404087681059643, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4442867301546420648, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4476652390272619206, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4508790263713806999, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4540156506249587079, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4570526317190396855, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4596208047228040983, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L72:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4638215034982367232, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4408857114314316207, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4443270869999227682, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4476926574648507804, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4509084750487678750, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4540406644099226580, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4570848443458784008, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4596475020613951506, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L73:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4638355772470722560, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4409176674679308403, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4443696721372741853, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4477217200415543161, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4509396993359526091, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4540670949048314691, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4571170166204644548, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4596752082063027339, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L74:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4638496509959077888, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4409422519667590165, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4444144236696943518, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4477524751144053122, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4509727936802645596, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4540950454114519538, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4571347831408504463, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4597039952151208861, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L75:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4638637247447433216, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4409678188948023696, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4444615891851911248, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4477850193974693380, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4510078714184993153, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4541245749593651481, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4571534489400100312, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4597339351454436452, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L76:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4638742800563699712, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4409943840976934025, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4445082259526162297, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4478194496048119627, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4510450458874524652, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4541558163651283826, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4571730601348033937, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4597651000548650490, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L77:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4638813169307877376, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4410219554982483665, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4445342845904431870, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4478558866290151476, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4510844115344536665, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4541888434157179521, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4571936743713057641, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4597974899433850976, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L78:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4638883538052055040, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4410505410192835130, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4445616740138123760, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4478943788271116774, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4511261383646963027, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4542237741702959285, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4572153492955923728, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4598243494115627353, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L79:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4638953906796232704, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4410801485836150936, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4445904251712247790, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4479350954487162981, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4511703397149759626, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4542607119306291245, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4572381540829534962, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4598419134501094802, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L80:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4639024275540410368, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4411107781912431082, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4446205690111813780, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4479781090293781866, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4512171478115541665, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4542997895132748709, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4572621348502493187, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4598601980645966044, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L81:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4639094644284588032, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4411424298421675568, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4446521983791851194, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4480235162831629121, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4512636982163410328, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4543411102199999803, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4572873838312002086, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4598792392838211269, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L82:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4639165013028765696, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4411750956135721880, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4446853132752360034, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4480714622811688283, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4512899451292528222, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4543848363821523014, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4573139586718813964, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4598991091653770855, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L83:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4639235381772943360, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4412087755054570018, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4447200065448369762, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4481151033304129282, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4513177315336380272, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4544221516089861057, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4573419285475831585, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4599198257236629898, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L84:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4639305750517121024, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4412434615950057467, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4447562781879880378, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4481417964125100192, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4513471329873603737, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4544466193703254740, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4573713972212409095, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4599414249874758587, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L85:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4639376119261298688, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4412791063453209142, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4447942210501921347, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4481699281163324516, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4513782628272154504, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4544725038416097033, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4574024338681449259, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4599639790144097301, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L86:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4639446488005476352, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4413157097564025043, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4448338351314492669, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4481995709774294023, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4514111871663340175, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4544998861885127177, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4574351307220155760, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4599875418476601326, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L87:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4639516856749654016, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4413530533079526940, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4448752132772623807, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4482307975313500482, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4514460098967786983, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4545288623341037007, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4574695915457882747, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4600121315016255755, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L88:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4639587225493831680, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4413723057514436602, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4449183554876314762, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4482636803136435661, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4514828443553450815, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4545595134440565765, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4575059201023984364, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4600378380482986063, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L89:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4639657594238009344, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4413920335639097120, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4449594834218817612, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4482982797706009368, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4515217849893628246, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4545919428201381579, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4575442201547814759, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4600647155308747534, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L90:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4639727962982187008, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4414121575171883351, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4449829114371252370, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4483346684377713371, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4515629451356275164, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4546262537641152576, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4575751588033576006, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4600928179925495453, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L91:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4639798331726364672, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4414327172253607867, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4450072833816486680, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4483729309399621401, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4516064286862017801, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4546625421990570591, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4575964532635476891, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4601222174909170199, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L92:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4639868700470542336, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4414537126884270668, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4450326302039530361, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4484131398127225227, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4516523773120801018, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4547008597758469685, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4576189121744574305, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4601529680691727056, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L93:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4639939069214720000, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4414750250641434039, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4450589828525393237, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4484553555023434656, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4517008949053251045, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4547415163997854244, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4576426104759846242, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4601851778137076594, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L94:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4640009437958897664, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4414967335806723123, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4450863258531570395, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4484996747228905379, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4517315781587295287, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4547844604199890202, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4576676058142045007, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4602189187821159192, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L95:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4640079806703075328, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4415187590098512778, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4451147056285576568, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4485461700099129165, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4517586089844774746, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4548298394104103457, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4576939558351922902, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4602542450175930133, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L96:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4640150175447252992, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4415410617375990432, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4451441067044906846, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4485767244371596880, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4517870848543691786, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4548706816547110433, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4577217988895285455, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4602795732618973450, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L97:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4640220544191430656, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4415636417639156086, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4451745755037075960, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4486022690397281452, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4518171663288650582, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4548960643745564676, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4577511983878960201, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4602989837762913118, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L98:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4640290912935608320, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4415864594747197167, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4452061120262083911, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4486290225681162169, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4518489006316299422, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4549228859404396413, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4577822119763699443, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4603193310394077717, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L99:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4640361281679785984, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4416095148700113676, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm0
	movabsq	$4452387162719930698, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4486570333793566879, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4518823349863286593, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4549512570328250066, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4578148973010255484, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4603406781016415079, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	jmp	L106
L100:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4640431650423963648, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4416326891075467899, %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm0
	movabsq	$4452724037153121232, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4486863377412241465, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4519175166166260382, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4549812145452007109, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4578494849461637538, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4603630790061880487, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	jmp	L106
L101:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movabsq	$4640502019168141312, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4416560614154884979, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vmulsd	%xmm3, %xmm2, %xmm0
	movabsq	$4453071898304160424, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4487169779661222793, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4519546344171813936, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4550128691580311965, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4578859749117845605, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4603865787890436680, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	jmp	L106
L102:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movabsq	$4640572387912318976, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4416794733375114630, %rax
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vmulsd	%xmm6, %xmm5, %xmm0
	movabsq	$4453430591430543363, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4487489540540510862, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4519936411643298968, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4550462946582927582, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4579244824900384292, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4604112585150016583, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	jmp	L106
L103:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movabsq	$4640642756656496640, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4417029644876969424, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm0
	movabsq	$4453800426017279870, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vmulsd	-8(%rbp), %xmm5, %xmm0
	movabsq	$4487824412992544114, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4520347729763956914, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4550816017264498383, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4579651229730758206, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4604371722272575481, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	jmp	L106
L104:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movabsq	$4640713125400674304, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4417264952519636789, %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm0
	movabsq	$4454120639395642790, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmulsd	-8(%rbp), %xmm1, %xmm0
	movabsq	$4488173188091502935, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4520779826297139487, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4551189010429668790, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4580080692991224256, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4604644009906046302, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	jmp	L106
L105:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4640783494144851968, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vsubsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4417499467880679012, %rax
	vmovq	%rdx, %xmm7
	vmovq	%rax, %xmm1
	vmulsd	%xmm1, %xmm7, %xmm0
	movabsq	$4454316543406859701, %rax
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm4
	vmulsd	-8(%rbp), %xmm4, %xmm0
	movabsq	$4488537679226116745, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-8(%rbp), %xmm7, %xmm0
	movabsq	$4521234117952791547, %rax
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm3
	vmulsd	-8(%rbp), %xmm3, %xmm0
	movabsq	$4551582663948201752, %rax
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm6
	vmulsd	-8(%rbp), %xmm6, %xmm0
	movabsq	$4580347306089164589, %rax
	vmovq	%rax, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm2
	vmulsd	-8(%rbp), %xmm2, %xmm0
	movabsq	$4604929988482384328, %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	jmp	L106
L40:
	movabsq	$4607182418800017408, %rax
L106:
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$4635217326480398746, %rax
	vmovq	%rax, %xmm0
	call	foo
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movabsq	$4600517091351509074, %rax
	vmovq	%rax, %xmm1
	vucomisd	-8(%rbp), %xmm1
	ja	L108
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC514(%rip), %xmm2
	jbe	L112
L108:
	call	abort
L112:
	movl	$0, %eax
	leave
	ret
LC514:
	.long	2920577761
	.long	1071309127
