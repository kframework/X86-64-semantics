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
	ja	L12
	movl	-12(%rbp), %eax
	movq	L14(,%rax,8), %rax
	jmp	*%rax
L14:
	.quad	L80
	.quad	L15
	.quad	L16
	.quad	L17
	.quad	L18
	.quad	L19
	.quad	L20
	.quad	L21
	.quad	L22
	.quad	L23
	.quad	L24
	.quad	L25
	.quad	L26
	.quad	L27
	.quad	L28
	.quad	L29
	.quad	L30
	.quad	L31
	.quad	L32
	.quad	L33
	.quad	L34
	.quad	L35
	.quad	L36
	.quad	L37
	.quad	L38
	.quad	L39
	.quad	L40
	.quad	L41
	.quad	L42
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
	.quad	L69
	.quad	L70
	.quad	L71
	.quad	L72
	.quad	L73
	.quad	L74
	.quad	L75
	.quad	L76
	.quad	L77
L15:
	shrq	-8(%rbp)
	jmp	L78
L16:
	shrq	$2, -8(%rbp)
	jmp	L78
L17:
	shrq	$3, -8(%rbp)
	jmp	L78
L18:
	shrq	$4, -8(%rbp)
	jmp	L78
L19:
	shrq	$5, -8(%rbp)
	jmp	L78
L20:
	shrq	$6, -8(%rbp)
	jmp	L78
L21:
	shrq	$7, -8(%rbp)
	jmp	L78
L22:
	shrq	$8, -8(%rbp)
	jmp	L78
L23:
	shrq	$9, -8(%rbp)
	jmp	L78
L24:
	shrq	$10, -8(%rbp)
	jmp	L78
L25:
	shrq	$11, -8(%rbp)
	jmp	L78
L26:
	shrq	$12, -8(%rbp)
	jmp	L78
L27:
	shrq	$13, -8(%rbp)
	jmp	L78
L28:
	shrq	$14, -8(%rbp)
	jmp	L78
L29:
	shrq	$15, -8(%rbp)
	jmp	L78
L30:
	shrq	$16, -8(%rbp)
	jmp	L78
L31:
	shrq	$17, -8(%rbp)
	jmp	L78
L32:
	shrq	$18, -8(%rbp)
	jmp	L78
L33:
	shrq	$19, -8(%rbp)
	jmp	L78
L34:
	shrq	$20, -8(%rbp)
	jmp	L78
L35:
	shrq	$21, -8(%rbp)
	jmp	L78
L36:
	shrq	$22, -8(%rbp)
	jmp	L78
L37:
	shrq	$23, -8(%rbp)
	jmp	L78
L38:
	shrq	$24, -8(%rbp)
	jmp	L78
L39:
	shrq	$25, -8(%rbp)
	jmp	L78
L40:
	shrq	$26, -8(%rbp)
	jmp	L78
L41:
	shrq	$27, -8(%rbp)
	jmp	L78
L42:
	shrq	$28, -8(%rbp)
	jmp	L78
L43:
	shrq	$29, -8(%rbp)
	jmp	L78
L44:
	shrq	$30, -8(%rbp)
	jmp	L78
L45:
	shrq	$31, -8(%rbp)
	jmp	L78
L46:
	shrq	$32, -8(%rbp)
	jmp	L78
L47:
	shrq	$33, -8(%rbp)
	jmp	L78
L48:
	shrq	$34, -8(%rbp)
	jmp	L78
L49:
	shrq	$35, -8(%rbp)
	jmp	L78
L50:
	shrq	$36, -8(%rbp)
	jmp	L78
L51:
	shrq	$37, -8(%rbp)
	jmp	L78
L52:
	shrq	$38, -8(%rbp)
	jmp	L78
L53:
	shrq	$39, -8(%rbp)
	jmp	L78
L54:
	shrq	$40, -8(%rbp)
	jmp	L78
L55:
	shrq	$41, -8(%rbp)
	jmp	L78
L56:
	shrq	$42, -8(%rbp)
	jmp	L78
L57:
	shrq	$43, -8(%rbp)
	jmp	L78
L58:
	shrq	$44, -8(%rbp)
	jmp	L78
L59:
	shrq	$45, -8(%rbp)
	jmp	L78
L60:
	shrq	$46, -8(%rbp)
	jmp	L78
L61:
	shrq	$47, -8(%rbp)
	jmp	L78
L62:
	shrq	$48, -8(%rbp)
	jmp	L78
L63:
	shrq	$49, -8(%rbp)
	jmp	L78
L64:
	shrq	$50, -8(%rbp)
	jmp	L78
L65:
	shrq	$51, -8(%rbp)
	jmp	L78
L66:
	shrq	$52, -8(%rbp)
	jmp	L78
L67:
	shrq	$53, -8(%rbp)
	jmp	L78
L68:
	shrq	$54, -8(%rbp)
	jmp	L78
L69:
	shrq	$55, -8(%rbp)
	jmp	L78
L70:
	shrq	$56, -8(%rbp)
	jmp	L78
L71:
	shrq	$57, -8(%rbp)
	jmp	L78
L72:
	shrq	$58, -8(%rbp)
	jmp	L78
L73:
	shrq	$59, -8(%rbp)
	jmp	L78
L74:
	shrq	$60, -8(%rbp)
	jmp	L78
L75:
	shrq	$61, -8(%rbp)
	jmp	L78
L76:
	shrq	$62, -8(%rbp)
	jmp	L78
L77:
	shrq	$63, -8(%rbp)
	jmp	L78
L12:
	call	abort
L80:
	nop
L78:
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	jmp	L82
L84:
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
	je	L83
	call	abort
L83:
	addl	$1, -4(%rbp)
L82:
	cmpl	$63, -4(%rbp)
	jle	L84
	movl	$0, -4(%rbp)
	jmp	L85
L87:
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
	je	L86
	call	abort
L86:
	addl	$1, -4(%rbp)
L85:
	cmpl	$63, -4(%rbp)
	jle	L87
	movl	$0, %edi
	call	exit
