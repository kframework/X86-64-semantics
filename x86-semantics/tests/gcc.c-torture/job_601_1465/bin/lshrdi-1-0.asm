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
zext:
	.quad	-8690466092652643696
	.quad	4878138990528453960
	.quad	2439069495264226980
	.quad	1219534747632113490
	.quad	609767373816056745
	.quad	304883686908028372
	.quad	152441843454014186
	.quad	76220921727007093
	.quad	38110460863503546
	.quad	19055230431751773
	.quad	9527615215875886
	.quad	4763807607937943
	.quad	2381903803968971
	.quad	1190951901984485
	.quad	595475950992242
	.quad	297737975496121
	.quad	148868987748060
	.quad	74434493874030
	.quad	37217246937015
	.quad	18608623468507
	.quad	9304311734253
	.quad	4652155867126
	.quad	2326077933563
	.quad	1163038966781
	.quad	581519483390
	.quad	290759741695
	.quad	145379870847
	.quad	72689935423
	.quad	36344967711
	.quad	18172483855
	.quad	9086241927
	.quad	4543120963
	.quad	2271560481
	.quad	1135780240
	.quad	567890120
	.quad	283945060
	.quad	141972530
	.quad	70986265
	.quad	35493132
	.quad	17746566
	.quad	8873283
	.quad	4436641
	.quad	2218320
	.quad	1109160
	.quad	554580
	.quad	277290
	.quad	138645
	.quad	69322
	.quad	34661
	.quad	17330
	.quad	8665
	.quad	4332
	.quad	2166
	.quad	1083
	.quad	541
	.quad	270
	.quad	135
	.quad	67
	.quad	33
	.quad	16
	.quad	8
	.quad	4
	.quad	2
	.quad	1
variable_shift:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	popq	%rbp
	ret
constant_shift:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$63, -12(%rbp)
	ja	L42
	movl	-12(%rbp), %eax
	movq	L44(,%rax,8), %rax
	call %rax
L44:
	.quad	L110
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
	.quad	L69
	.quad	L70
	.quad	L71
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
	.quad	L106
	.quad	L107
L45:
	shrq	-8(%rbp)
	jmp	L108
L46:
	shrq	$2, -8(%rbp)
	jmp	L108
L47:
	shrq	$3, -8(%rbp)
	jmp	L108
L48:
	shrq	$4, -8(%rbp)
	jmp	L108
L49:
	shrq	$5, -8(%rbp)
	jmp	L108
L50:
	shrq	$6, -8(%rbp)
	jmp	L108
L51:
	shrq	$7, -8(%rbp)
	jmp	L108
L52:
	shrq	$8, -8(%rbp)
	jmp	L108
L53:
	shrq	$9, -8(%rbp)
	jmp	L108
L54:
	shrq	$10, -8(%rbp)
	jmp	L108
L55:
	shrq	$11, -8(%rbp)
	jmp	L108
L56:
	shrq	$12, -8(%rbp)
	jmp	L108
L57:
	shrq	$13, -8(%rbp)
	jmp	L108
L58:
	shrq	$14, -8(%rbp)
	jmp	L108
L59:
	shrq	$15, -8(%rbp)
	jmp	L108
L60:
	shrq	$16, -8(%rbp)
	jmp	L108
L61:
	shrq	$17, -8(%rbp)
	jmp	L108
L62:
	shrq	$18, -8(%rbp)
	jmp	L108
L63:
	shrq	$19, -8(%rbp)
	jmp	L108
L64:
	shrq	$20, -8(%rbp)
	jmp	L108
L65:
	shrq	$21, -8(%rbp)
	jmp	L108
L66:
	shrq	$22, -8(%rbp)
	jmp	L108
L67:
	shrq	$23, -8(%rbp)
	jmp	L108
L68:
	shrq	$24, -8(%rbp)
	jmp	L108
L69:
	shrq	$25, -8(%rbp)
	jmp	L108
L70:
	shrq	$26, -8(%rbp)
	jmp	L108
L71:
	shrq	$27, -8(%rbp)
	jmp	L108
L72:
	shrq	$28, -8(%rbp)
	jmp	L108
L73:
	shrq	$29, -8(%rbp)
	jmp	L108
L74:
	shrq	$30, -8(%rbp)
	jmp	L108
L75:
	shrq	$31, -8(%rbp)
	jmp	L108
L76:
	shrq	$32, -8(%rbp)
	jmp	L108
L77:
	shrq	$33, -8(%rbp)
	jmp	L108
L78:
	shrq	$34, -8(%rbp)
	jmp	L108
L79:
	shrq	$35, -8(%rbp)
	jmp	L108
L80:
	shrq	$36, -8(%rbp)
	jmp	L108
L81:
	shrq	$37, -8(%rbp)
	jmp	L108
L82:
	shrq	$38, -8(%rbp)
	jmp	L108
L83:
	shrq	$39, -8(%rbp)
	jmp	L108
L84:
	shrq	$40, -8(%rbp)
	jmp	L108
L85:
	shrq	$41, -8(%rbp)
	jmp	L108
L86:
	shrq	$42, -8(%rbp)
	jmp	L108
L87:
	shrq	$43, -8(%rbp)
	jmp	L108
L88:
	shrq	$44, -8(%rbp)
	jmp	L108
L89:
	shrq	$45, -8(%rbp)
	jmp	L108
L90:
	shrq	$46, -8(%rbp)
	jmp	L108
L91:
	shrq	$47, -8(%rbp)
	jmp	L108
L92:
	shrq	$48, -8(%rbp)
	jmp	L108
L93:
	shrq	$49, -8(%rbp)
	jmp	L108
L94:
	shrq	$50, -8(%rbp)
	jmp	L108
L95:
	shrq	$51, -8(%rbp)
	jmp	L108
L96:
	shrq	$52, -8(%rbp)
	jmp	L108
L97:
	shrq	$53, -8(%rbp)
	jmp	L108
L98:
	shrq	$54, -8(%rbp)
	jmp	L108
L99:
	shrq	$55, -8(%rbp)
	jmp	L108
L100:
	shrq	$56, -8(%rbp)
	jmp	L108
L101:
	shrq	$57, -8(%rbp)
	jmp	L108
L102:
	shrq	$58, -8(%rbp)
	jmp	L108
L103:
	shrq	$59, -8(%rbp)
	jmp	L108
L104:
	shrq	$60, -8(%rbp)
	jmp	L108
L105:
	shrq	$61, -8(%rbp)
	jmp	L108
L106:
	shrq	$62, -8(%rbp)
	jmp	L108
L107:
	shrq	$63, -8(%rbp)
	jmp	L108
L42:
	call	abort
L110:
	nop
L108:
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	jmp	L112
L114:
	movabsq	$-8690466092652643696, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	variable_shift
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	zext(,%rax,8), %rax
	cmpq	-16(%rbp), %rax
	je	L113
	call	abort
L113:
	addl	$1, -4(%rbp)
L112:
	cmpl	$63, -4(%rbp)
	jle	L114
	movl	$0, -4(%rbp)
	jmp	L115
L117:
	movabsq	$-8690466092652643696, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	constant_shift
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	zext(,%rax,8), %rax
	cmpq	-24(%rbp), %rax
	je	L116
	call	abort
L116:
	addl	$1, -4(%rbp)
L115:
	cmpl	$63, -4(%rbp)
	jle	L117
	movl	$0, %edi
	call	exit
