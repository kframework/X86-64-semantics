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
	.local	vv6
	.comm	vv6,0,1
wv6:
	.byte	72
	.byte	66
	.byte	32
	.byte	16
	.long	67426805
	.quad	1047191860
	.quad	1366022414
	.byte	90
	.byte	147
	.byte	98
	.byte	2
	.zero	4
	.quad	1069379046
	.quad	358273621
	.long	2116285006
	.long	1084877845
xv6:
	.long	2066806982
	.long	1087556038
yv6:
	.quad	1207859169
zv6:
	.long	660195606
callee_af6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	vmovsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movzbl	wv6(%rip), %eax
	leal	0(,%rax,4), %edx
	sarb	$2, %dl
	movzbl	16(%rbp), %eax
	sall	$2, %eax
	sarb	$2, %al
	cmpb	%al, %dl
	je	L40
	call	abort
L40:
	movzwl	wv6(%rip), %eax
	sall	$3, %eax
	sarw	$9, %ax
	movl	%eax, %edx
	movzwl	16(%rbp), %eax
	sall	$3, %eax
	sarw	$9, %ax
	cmpb	%al, %dl
	je	L41
	call	abort
L41:
	movl	wv6(%rip), %eax
	sall	$13, %eax
	sarl	$26, %eax
	movl	%eax, %edx
	movl	16(%rbp), %eax
	sall	$13, %eax
	sarl	$26, %eax
	cmpb	%al, %dl
	je	L42
	call	abort
L42:
	movzbl	wv6+2(%rip), %eax
	sarb	$3, %al
	movl	%eax, %edx
	movzbl	18(%rbp), %eax
	sarb	$3, %al
	cmpb	%al, %dl
	je	L43
	call	abort
L43:
	movzbl	wv6+3(%rip), %edx
	movzbl	19(%rbp), %eax
	cmpb	%al, %dl
	je	L44
	call	abort
L44:
	movl	wv6+4(%rip), %edx
	movl	20(%rbp), %eax
	cmpl	%eax, %edx
	je	L45
	call	abort
L45:
	movq	wv6+8(%rip), %rdx
	movq	24(%rbp), %rax
	cmpq	%rax, %rdx
	je	L46
	call	abort
L46:
	movq	wv6+16(%rip), %rdx
	movq	32(%rbp), %rax
	cmpq	%rax, %rdx
	je	L47
	call	abort
L47:
	movzwl	wv6+24(%rip), %eax
	sall	$4, %eax
	movl	%eax, %edx
	sarw	$4, %dx
	movzwl	40(%rbp), %eax
	sall	$4, %eax
	sarw	$4, %ax
	cmpw	%ax, %dx
	je	L48
	call	abort
L48:
	movzbl	wv6+25(%rip), %eax
	leal	(%rax,%rax), %edx
	sarb	$5, %dl
	movzbl	41(%rbp), %eax
	addl	%eax, %eax
	sarb	$5, %al
	cmpb	%al, %dl
	je	L49
	call	abort
L49:
	movl	wv6+24(%rip), %eax
	sall	$15, %eax
	sarl	$30, %eax
	movl	%eax, %edx
	movl	40(%rbp), %eax
	sall	$15, %eax
	sarl	$30, %eax
	cmpb	%al, %dl
	je	L50
	call	abort
L50:
	movzwl	wv6+26(%rip), %eax
	sall	$5, %eax
	movl	%eax, %edx
	sarw	$6, %dx
	movzwl	42(%rbp), %eax
	sall	$5, %eax
	sarw	$6, %ax
	cmpw	%ax, %dx
	je	L51
	call	abort
L51:
	movq	wv6+32(%rip), %rdx
	movq	48(%rbp), %rax
	cmpq	%rax, %rdx
	je	L52
	call	abort
L52:
	movq	wv6+40(%rip), %rdx
	movq	56(%rbp), %rax
	cmpq	%rax, %rdx
	je	L53
	call	abort
L53:
	movq	wv6+48(%rip), %rax
	movq	64(%rbp), %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	jp	L61
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	je	L63
L61:
	call	abort
L63:
	movq	xv6(%rip), %rax
	vmovq	%rax, %xmm5
	vucomisd	-8(%rbp), %xmm5
	jp	L62
	vmovq	%rax, %xmm6
	vucomisd	-8(%rbp), %xmm6
	je	L64
L62:
	call	abort
L64:
	movq	yv6(%rip), %rax
	cmpq	-16(%rbp), %rax
	je	L58
	call	abort
L58:
	movl	zv6(%rip), %eax
	cmpl	-20(%rbp), %eax
	je	L59
	call	abort
L59:
	leave
	ret
caller_bf6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	zv6(%rip), %ecx
	movq	yv6(%rip), %rdx
	movq	xv6(%rip), %rax
	pushq	wv6+48(%rip)
	pushq	wv6+40(%rip)
	pushq	wv6+32(%rip)
	pushq	wv6+24(%rip)
	pushq	wv6+16(%rip)
	pushq	wv6+8(%rip)
	pushq	wv6(%rip)
	movl	%ecx, %esi
	movq	%rdx, %rdi
	vmovq	%rax, %xmm0
	call	callee_af6
	addq	$56, %rsp
	leave
	ret
uv7:
	.byte	70
vv7:
	.long	1203551870
wv7:
	.long	2384840721
	.long	1088145581
	.local	xv7
	.comm	xv7,0,1
yv7:
	.long	1189834750
	.value	-23101
	.zero	2
	.byte	170
	.byte	0
	.value	22116
	.zero	4
	.long	865315651
	.long	1088019432
	.long	1165963103
	.zero	4
zv7:
	.long	1167954387
	.zero	4
bav7:
	.long	1345451862
bbv7:
	.long	3189133476
	.long	1088905327
bcv7:
	.quad	1732133482
bdv7:
	.quad	381678602
callee_af7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	%rdi, -32(%rbp)
	movl	%esi, -20(%rbp)
	vmovsd	%xmm2, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -56(%rbp)
	movl	vv7(%rip), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	jp	L88
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	je	L95
L88:
	call	abort
L95:
	movq	wv7(%rip), %rax
	vmovq	%rax, %xmm5
	vucomisd	-16(%rbp), %xmm5
	jp	L89
	vmovq	%rax, %xmm6
	vucomisd	-16(%rbp), %xmm6
	je	L96
L89:
	call	abort
L96:
	movl	yv7(%rip), %eax
	movl	16(%rbp), %edx
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm0
	vucomiss	%xmm0, %xmm7
	jp	L90
	vmovd	%eax, %xmm1
	vmovd	%edx, %xmm2
	vucomiss	%xmm2, %xmm1
	je	L97
L90:
	call	abort
L97:
	movzwl	yv7+4(%rip), %edx
	movzwl	20(%rbp), %eax
	cmpw	%ax, %dx
	je	L73
	call	abort
L73:
	movzwl	yv7+8(%rip), %eax
	sall	$7, %eax
	movl	%eax, %edx
	sarw	$7, %dx
	movzwl	24(%rbp), %eax
	sall	$7, %eax
	sarw	$7, %ax
	cmpw	%ax, %dx
	je	L74
	call	abort
L74:
	movzwl	yv7+10(%rip), %edx
	movzwl	26(%rbp), %eax
	cmpw	%ax, %dx
	je	L75
	call	abort
L75:
	movq	yv7+16(%rip), %rax
	movq	32(%rbp), %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	jp	L91
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	je	L98
L91:
	call	abort
L98:
	movl	yv7+24(%rip), %eax
	movl	40(%rbp), %edx
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm0
	vucomiss	%xmm0, %xmm7
	jp	L92
	vmovd	%eax, %xmm1
	vmovd	%edx, %xmm2
	vucomiss	%xmm2, %xmm1
	je	L99
L92:
	call	abort
L99:
	movl	zv7(%rip), %eax
	movl	-32(%rbp), %edx
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vucomiss	%xmm4, %xmm3
	jp	L93
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	je	L100
L93:
	call	abort
L100:
	movl	bav7(%rip), %eax
	cmpl	-20(%rbp), %eax
	je	L82
	call	abort
L82:
	movq	bbv7(%rip), %rax
	movq	-48(%rbp), %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm0
	vucomisd	%xmm0, %xmm7
	jp	L94
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	je	L101
L94:
	call	abort
L101:
	movq	bcv7(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	L85
	call	abort
L85:
	movq	bdv7(%rip), %rax
	cmpq	-56(%rbp), %rax
	je	L86
	call	abort
L86:
	movzbl	uv7(%rip), %eax
	leave
	ret
caller_bf7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	bdv7(%rip), %rdx
	movl	bav7(%rip), %esi
	movq	wv7(%rip), %r8
	movl	vv7(%rip), %eax
	pushq	yv7+24(%rip)
	pushq	yv7+16(%rip)
	pushq	yv7+8(%rip)
	pushq	yv7(%rip)
	movq	%rdx, %rcx
	movl	$bcv7, %edx
	vmovsd	bbv7(%rip), %xmm2
	movq	zv7(%rip), %rdi
	vmovq	%r8, %xmm1
	vmovd	%eax, %xmm0
	call	callee_af7
	addq	$32, %rsp
	movb	%al, -1(%rbp)
	movzbl	uv7(%rip), %eax
	cmpb	-1(%rbp), %al
	je	L102
	call	abort
L102:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	caller_bf6
	call	caller_bf7
	movl	$0, %eax
	popq	%rbp
	ret
