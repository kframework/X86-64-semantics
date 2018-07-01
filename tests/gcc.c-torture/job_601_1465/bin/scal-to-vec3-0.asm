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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	vmovaps	LC0(%rip), %xmm0
	vmovaps	%xmm0, -80(%rbp)
	vmovapd	LC1(%rip), %xmm0
	vmovaps	%xmm0, -96(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L13:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L75
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L91
L75:
	call	abort
L91:
	addl	$1, -4(%rbp)
L10:
	cmpl	$3, -4(%rbp)
	jle	L13
	vmovaps	LC2(%rip), %xmm0
	vsubps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vsubps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -8(%rbp)
	jmp	L14
L17:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L76
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L92
L76:
	call	abort
L92:
	addl	$1, -8(%rbp)
L14:
	cmpl	$3, -8(%rbp)
	jle	L17
	vmovaps	-80(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	-80(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -12(%rbp)
	jmp	L18
L21:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L77
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L93
L77:
	call	abort
L93:
	addl	$1, -12(%rbp)
L18:
	cmpl	$3, -12(%rbp)
	jle	L21
	vmovaps	LC2(%rip), %xmm0
	vdivps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vdivps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -16(%rbp)
	jmp	L22
L25:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L78
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L94
L78:
	call	abort
L94:
	addl	$1, -16(%rbp)
L22:
	cmpl	$3, -16(%rbp)
	jle	L25
	vmovaps	LC2(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -20(%rbp)
	jmp	L26
L29:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L79
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L95
L79:
	call	abort
L95:
	addl	$1, -20(%rbp)
L26:
	cmpl	$3, -20(%rbp)
	jle	L29
	vmovaps	LC3(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC3(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -24(%rbp)
	jmp	L30
L33:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L80
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L96
L80:
	call	abort
L96:
	addl	$1, -24(%rbp)
L30:
	cmpl	$3, -24(%rbp)
	jle	L33
	vmovaps	-80(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	-80(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -28(%rbp)
	jmp	L34
L37:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm1
	vmovd	%edx, %xmm2
	vucomiss	%xmm2, %xmm1
	jp	L81
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vucomiss	%xmm4, %xmm3
	je	L97
L81:
	call	abort
L97:
	addl	$1, -28(%rbp)
L34:
	cmpl	$3, -28(%rbp)
	jle	L37
	vmovaps	-80(%rbp), %xmm0
	vmovaps	LC2(%rip), %xmm1
	vdivps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	-80(%rbp), %xmm0
	vmovaps	LC2(%rip), %xmm1
	vdivps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -32(%rbp)
	jmp	L38
L41:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	jp	L82
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm7
	je	L98
L82:
	call	abort
L98:
	addl	$1, -32(%rbp)
L38:
	cmpl	$3, -32(%rbp)
	jle	L41
	vmovapd	LC4(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC4(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -36(%rbp)
	jmp	L42
L45:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L83
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L99
L83:
	call	abort
L99:
	addl	$1, -36(%rbp)
L42:
	cmpl	$1, -36(%rbp)
	jle	L45
	vmovapd	LC4(%rip), %xmm0
	vsubpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC4(%rip), %xmm0
	vsubpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -40(%rbp)
	jmp	L46
L49:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L84
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	je	L100
L84:
	call	abort
L100:
	addl	$1, -40(%rbp)
L46:
	cmpl	$1, -40(%rbp)
	jle	L49
	vmovapd	-96(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	-96(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -44(%rbp)
	jmp	L50
L53:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	jp	L85
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	je	L101
L85:
	call	abort
L101:
	addl	$1, -44(%rbp)
L50:
	cmpl	$1, -44(%rbp)
	jle	L53
	vmovapd	LC4(%rip), %xmm0
	vdivpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC4(%rip), %xmm0
	vdivpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -48(%rbp)
	jmp	L54
L57:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm7
	jp	L86
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L102
L86:
	call	abort
L102:
	addl	$1, -48(%rbp)
L54:
	cmpl	$1, -48(%rbp)
	jle	L57
	vmovapd	LC4(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC4(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -52(%rbp)
	jmp	L58
L61:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L87
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L103
L87:
	call	abort
L103:
	addl	$1, -52(%rbp)
L58:
	cmpl	$1, -52(%rbp)
	jle	L61
	vmovapd	LC5(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC5(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -56(%rbp)
	jmp	L62
L65:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	jp	L88
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	je	L104
L88:
	call	abort
L104:
	addl	$1, -56(%rbp)
L62:
	cmpl	$1, -56(%rbp)
	jle	L65
	vmovapd	-96(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	-96(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -60(%rbp)
	jmp	L66
L69:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	jp	L89
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm7
	je	L105
L89:
	call	abort
L105:
	addl	$1, -60(%rbp)
L66:
	cmpl	$1, -60(%rbp)
	jle	L69
	vmovapd	-96(%rbp), %xmm0
	vmovapd	LC4(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	-96(%rbp), %xmm0
	vmovapd	LC4(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -64(%rbp)
	jmp	L70
L73:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L90
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L106
L90:
	call	abort
L106:
	addl	$1, -64(%rbp)
L70:
	cmpl	$1, -64(%rbp)
	jle	L73
	movl	$0, %eax
	leave
	ret
LC0:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
LC1:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
LC2:
	.long	1073741824
	.long	1073741824
	.long	1073741824
	.long	1073741824
LC3:
	.long	3221225472
	.long	3221225472
	.long	3221225472
	.long	3221225472
LC4:
	.long	0
	.long	1073741824
	.long	0
	.long	1073741824
LC5:
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
