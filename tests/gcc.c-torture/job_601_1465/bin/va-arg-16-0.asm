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
vafunction:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	vmovsd	%xmm0, -216(%rbp)
	movq	%rdi, -176(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L40
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L40:
	vmovsd	%xmm1, -224(%rbp)
	movl	$0, -200(%rbp)
	movl	$80, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC0(%rip), %xmm0
	jp	L81
	movq	-216(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L92
L81:
	call	abort
L92:
	movq	-224(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC1(%rip), %xmm2
	jp	L82
	movq	-224(%rbp), %rax
	vmovq	%rax, %xmm3
	vucomisd	LC1(%rip), %xmm3
	je	L93
L82:
	call	abort
L93:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L45
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L46
L45:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L46:
	movq	(%rax), %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L83
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L94
L83:
	call	abort
L94:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L49
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L50
L49:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L50:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC3(%rip), %xmm0
	jp	L84
	vmovq	%rax, %xmm1
	vucomisd	LC3(%rip), %xmm1
	je	L95
L84:
	call	abort
L95:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L53
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L54
L53:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L54:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC4(%rip), %xmm2
	jp	L85
	vmovq	%rax, %xmm3
	vucomisd	LC4(%rip), %xmm3
	je	L96
L85:
	call	abort
L96:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L57
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L58
L57:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L58:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC5(%rip), %xmm4
	jp	L86
	vmovq	%rax, %xmm5
	vucomisd	LC5(%rip), %xmm5
	je	L97
L86:
	call	abort
L97:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L61
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L62
L61:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L62:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC6(%rip), %xmm6
	jp	L87
	vmovq	%rax, %xmm7
	vucomisd	LC6(%rip), %xmm7
	je	L98
L87:
	call	abort
L98:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L65
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L66
L65:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L66:
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC7(%rip), %xmm0
	jp	L88
	vmovq	%rax, %xmm1
	vucomisd	LC7(%rip), %xmm1
	je	L99
L88:
	call	abort
L99:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L69
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L70
L69:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L70:
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vucomisd	LC8(%rip), %xmm2
	jp	L89
	vmovq	%rax, %xmm3
	vucomisd	LC8(%rip), %xmm3
	je	L100
L89:
	call	abort
L100:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L73
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L74
L73:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L74:
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC9(%rip), %xmm4
	jp	L90
	vmovq	%rax, %xmm5
	vucomisd	LC9(%rip), %xmm5
	je	L101
L90:
	call	abort
L101:
	movl	-196(%rbp), %eax
	cmpl	$176, %eax
	jae	L77
	movq	-184(%rbp), %rdx
	movl	-196(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -196(%rbp)
	jmp	L78
L77:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L78:
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC10(%rip), %xmm6
	jp	L91
	vmovq	%rax, %xmm7
	vucomisd	LC10(%rip), %xmm7
	je	L102
L91:
	call	abort
L102:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movabsq	$4618441417868443648, %r9
	movabsq	$4617315517961601024, %r8
	movabsq	$4616189618054758400, %rdi
	movabsq	$4613937818241073152, %rsi
	movabsq	$4611686018427387904, %rcx
	movabsq	$4651998512748167168, %rdx
	movabsq	$4651022146422702080, %rax
	movabsq	$4621256167635550208, %r10
	pushq	%r10
	movabsq	$4620693217682128896, %r10
	pushq	%r10
	movabsq	$4619567317775286272, %r10
	pushq	%r10
	vmovq	%r9, %xmm7
	vmovq	%r8, %xmm6
	vmovq	%rdi, %xmm5
	vmovq	%rsi, %xmm4
	vmovq	%rcx, %xmm3
	vmovsd	LC2(%rip), %xmm2
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movl	$8, %eax
	call	vafunction
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1082900480
LC1:
	.long	0
	.long	1083127808
LC2:
	.long	0
	.long	1072693248
LC3:
	.long	0
	.long	1073741824
LC4:
	.long	0
	.long	1074266112
LC5:
	.long	0
	.long	1074790400
LC6:
	.long	0
	.long	1075052544
LC7:
	.long	0
	.long	1075314688
LC8:
	.long	0
	.long	1075576832
LC9:
	.long	0
	.long	1075838976
LC10:
	.long	0
	.long	1075970048
