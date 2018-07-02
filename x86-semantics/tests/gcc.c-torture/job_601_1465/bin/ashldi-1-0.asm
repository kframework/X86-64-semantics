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
data:
	.quad	81985529216486895
	.quad	163971058432973790
	.quad	327942116865947580
	.quad	655884233731895160
	.quad	1311768467463790320
	.quad	2623536934927580640
	.quad	5247073869855161280
	.quad	-7952596333999229056
	.quad	2541551405711093504
	.quad	5083102811422187008
	.quad	-8280538450865177600
	.quad	1885667171979196416
	.quad	3771334343958392832
	.quad	7542668687916785664
	.quad	-3361406697875980288
	.quad	-6722813395751960576
	.quad	5001117282205630464
	.quad	-8444509509298290688
	.quad	1557725055112970240
	.quad	3115450110225940480
	.quad	6230900220451880960
	.quad	-5984943632805789696
	.quad	6476856808097972224
	.quad	-5493030457513607168
	.quad	7460683158682337280
	.quad	-3525377756344877056
	.quad	-7050755512689754112
	.quad	4345233048330043392
	.quad	8690466096660086784
	.quad	-1065811880389378048
	.quad	-2131623760778756096
	.quad	-4263247521557512192
	.quad	-8526495043115024384
	.quad	1393753987479502848
	.quad	2787507974959005696
	.quad	5575015949918011392
	.quad	-7296712173873528832
	.quad	3853319725962493952
	.quad	7706639451924987904
	.quad	-3033465169859575808
	.quad	-6066930339719151616
	.quad	6312883394271248384
	.quad	-5820977285167054848
	.quad	6804789503375441920
	.quad	-4837165066958667776
	.quad	8772413939792216064
	.quad	-901916194125119488
	.quad	-1803832388250238976
	.quad	-3607664776500477952
	.quad	-7215329553000955904
	.quad	4016084967707639808
	.quad	8032169935415279616
	.quad	-2382404202878992384
	.quad	-4764808405757984768
	.quad	8917127262193582080
	.quad	-612489549322387456
	.quad	-1224979098644774912
	.quad	-2449958197289549824
	.quad	-4899916394579099648
	.quad	8646911284551352320
	.quad	-1152921504606846976
	.quad	-2305843009213693952
	.quad	-4611686018427387904
	.quad	-9223372036854775808
variable_shift:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	shlx	%rax, %rdx, %rax
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
	salq	-8(%rbp)
	jmp	L108
L46:
	salq	$2, -8(%rbp)
	jmp	L108
L47:
	salq	$3, -8(%rbp)
	jmp	L108
L48:
	salq	$4, -8(%rbp)
	jmp	L108
L49:
	salq	$5, -8(%rbp)
	jmp	L108
L50:
	salq	$6, -8(%rbp)
	jmp	L108
L51:
	salq	$7, -8(%rbp)
	jmp	L108
L52:
	salq	$8, -8(%rbp)
	jmp	L108
L53:
	salq	$9, -8(%rbp)
	jmp	L108
L54:
	salq	$10, -8(%rbp)
	jmp	L108
L55:
	salq	$11, -8(%rbp)
	jmp	L108
L56:
	salq	$12, -8(%rbp)
	jmp	L108
L57:
	salq	$13, -8(%rbp)
	jmp	L108
L58:
	salq	$14, -8(%rbp)
	jmp	L108
L59:
	salq	$15, -8(%rbp)
	jmp	L108
L60:
	salq	$16, -8(%rbp)
	jmp	L108
L61:
	salq	$17, -8(%rbp)
	jmp	L108
L62:
	salq	$18, -8(%rbp)
	jmp	L108
L63:
	salq	$19, -8(%rbp)
	jmp	L108
L64:
	salq	$20, -8(%rbp)
	jmp	L108
L65:
	salq	$21, -8(%rbp)
	jmp	L108
L66:
	salq	$22, -8(%rbp)
	jmp	L108
L67:
	salq	$23, -8(%rbp)
	jmp	L108
L68:
	salq	$24, -8(%rbp)
	jmp	L108
L69:
	salq	$25, -8(%rbp)
	jmp	L108
L70:
	salq	$26, -8(%rbp)
	jmp	L108
L71:
	salq	$27, -8(%rbp)
	jmp	L108
L72:
	salq	$28, -8(%rbp)
	jmp	L108
L73:
	salq	$29, -8(%rbp)
	jmp	L108
L74:
	salq	$30, -8(%rbp)
	jmp	L108
L75:
	salq	$31, -8(%rbp)
	jmp	L108
L76:
	salq	$32, -8(%rbp)
	jmp	L108
L77:
	salq	$33, -8(%rbp)
	jmp	L108
L78:
	salq	$34, -8(%rbp)
	jmp	L108
L79:
	salq	$35, -8(%rbp)
	jmp	L108
L80:
	salq	$36, -8(%rbp)
	jmp	L108
L81:
	salq	$37, -8(%rbp)
	jmp	L108
L82:
	salq	$38, -8(%rbp)
	jmp	L108
L83:
	salq	$39, -8(%rbp)
	jmp	L108
L84:
	salq	$40, -8(%rbp)
	jmp	L108
L85:
	salq	$41, -8(%rbp)
	jmp	L108
L86:
	salq	$42, -8(%rbp)
	jmp	L108
L87:
	salq	$43, -8(%rbp)
	jmp	L108
L88:
	salq	$44, -8(%rbp)
	jmp	L108
L89:
	salq	$45, -8(%rbp)
	jmp	L108
L90:
	salq	$46, -8(%rbp)
	jmp	L108
L91:
	salq	$47, -8(%rbp)
	jmp	L108
L92:
	salq	$48, -8(%rbp)
	jmp	L108
L93:
	salq	$49, -8(%rbp)
	jmp	L108
L94:
	salq	$50, -8(%rbp)
	jmp	L108
L95:
	salq	$51, -8(%rbp)
	jmp	L108
L96:
	salq	$52, -8(%rbp)
	jmp	L108
L97:
	salq	$53, -8(%rbp)
	jmp	L108
L98:
	salq	$54, -8(%rbp)
	jmp	L108
L99:
	salq	$55, -8(%rbp)
	jmp	L108
L100:
	salq	$56, -8(%rbp)
	jmp	L108
L101:
	salq	$57, -8(%rbp)
	jmp	L108
L102:
	salq	$58, -8(%rbp)
	jmp	L108
L103:
	salq	$59, -8(%rbp)
	jmp	L108
L104:
	salq	$60, -8(%rbp)
	jmp	L108
L105:
	salq	$61, -8(%rbp)
	jmp	L108
L106:
	salq	$62, -8(%rbp)
	jmp	L108
L107:
	salq	$63, -8(%rbp)
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
	movabsq	$81985529216486895, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	variable_shift
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	data(,%rax,8), %rax
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
	movabsq	$81985529216486895, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	constant_shift
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	data(,%rax,8), %rax
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
