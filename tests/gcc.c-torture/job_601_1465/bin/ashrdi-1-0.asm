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
	.quad	8526495107234113920
	.quad	4263247553617056960
	.quad	2131623776808528480
	.quad	1065811888404264240
	.quad	532905944202132120
	.quad	266452972101066060
	.quad	133226486050533030
	.quad	66613243025266515
	.quad	33306621512633257
	.quad	16653310756316628
	.quad	8326655378158314
	.quad	4163327689079157
	.quad	2081663844539578
	.quad	1040831922269789
	.quad	520415961134894
	.quad	260207980567447
	.quad	130103990283723
	.quad	65051995141861
	.quad	32525997570930
	.quad	16262998785465
	.quad	8131499392732
	.quad	4065749696366
	.quad	2032874848183
	.quad	1016437424091
	.quad	508218712045
	.quad	254109356022
	.quad	127054678011
	.quad	63527339005
	.quad	31763669502
	.quad	15881834751
	.quad	7940917375
	.quad	3970458687
	.quad	1985229343
	.quad	992614671
	.quad	496307335
	.quad	248153667
	.quad	124076833
	.quad	62038416
	.quad	31019208
	.quad	15509604
	.quad	7754802
	.quad	3877401
	.quad	1938700
	.quad	969350
	.quad	484675
	.quad	242337
	.quad	121168
	.quad	60584
	.quad	30292
	.quad	15146
	.quad	7573
	.quad	3786
	.quad	1893
	.quad	946
	.quad	473
	.quad	236
	.quad	118
	.quad	59
	.quad	29
	.quad	14
	.quad	7
	.quad	3
	.quad	1
	.quad	0
sext:
	.quad	-8152436031399644656
	.quad	-4076218015699822328
	.quad	-2038109007849911164
	.quad	-1019054503924955582
	.quad	-509527251962477791
	.quad	-254763625981238896
	.quad	-127381812990619448
	.quad	-63690906495309724
	.quad	-31845453247654862
	.quad	-15922726623827431
	.quad	-7961363311913716
	.quad	-3980681655956858
	.quad	-1990340827978429
	.quad	-995170413989215
	.quad	-497585206994608
	.quad	-248792603497304
	.quad	-124396301748652
	.quad	-62198150874326
	.quad	-31099075437163
	.quad	-15549537718582
	.quad	-7774768859291
	.quad	-3887384429646
	.quad	-1943692214823
	.quad	-971846107412
	.quad	-485923053706
	.quad	-242961526853
	.quad	-121480763427
	.quad	-60740381714
	.quad	-30370190857
	.quad	-15185095429
	.quad	-7592547715
	.quad	-3796273858
	.quad	-1898136929
	.quad	-949068465
	.quad	-474534233
	.quad	-237267117
	.quad	-118633559
	.quad	-59316780
	.quad	-29658390
	.quad	-14829195
	.quad	-7414598
	.quad	-3707299
	.quad	-1853650
	.quad	-926825
	.quad	-463413
	.quad	-231707
	.quad	-115854
	.quad	-57927
	.quad	-28964
	.quad	-14482
	.quad	-7241
	.quad	-3621
	.quad	-1811
	.quad	-906
	.quad	-453
	.quad	-227
	.quad	-114
	.quad	-57
	.quad	-29
	.quad	-15
	.quad	-8
	.quad	-4
	.quad	-2
	.quad	-1
variable_shift:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	sarx	%rax, %rdx, %rax
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
	sarq	-8(%rbp)
	jmp	L108
L46:
	sarq	$2, -8(%rbp)
	jmp	L108
L47:
	sarq	$3, -8(%rbp)
	jmp	L108
L48:
	sarq	$4, -8(%rbp)
	jmp	L108
L49:
	sarq	$5, -8(%rbp)
	jmp	L108
L50:
	sarq	$6, -8(%rbp)
	jmp	L108
L51:
	sarq	$7, -8(%rbp)
	jmp	L108
L52:
	sarq	$8, -8(%rbp)
	jmp	L108
L53:
	sarq	$9, -8(%rbp)
	jmp	L108
L54:
	sarq	$10, -8(%rbp)
	jmp	L108
L55:
	sarq	$11, -8(%rbp)
	jmp	L108
L56:
	sarq	$12, -8(%rbp)
	jmp	L108
L57:
	sarq	$13, -8(%rbp)
	jmp	L108
L58:
	sarq	$14, -8(%rbp)
	jmp	L108
L59:
	sarq	$15, -8(%rbp)
	jmp	L108
L60:
	sarq	$16, -8(%rbp)
	jmp	L108
L61:
	sarq	$17, -8(%rbp)
	jmp	L108
L62:
	sarq	$18, -8(%rbp)
	jmp	L108
L63:
	sarq	$19, -8(%rbp)
	jmp	L108
L64:
	sarq	$20, -8(%rbp)
	jmp	L108
L65:
	sarq	$21, -8(%rbp)
	jmp	L108
L66:
	sarq	$22, -8(%rbp)
	jmp	L108
L67:
	sarq	$23, -8(%rbp)
	jmp	L108
L68:
	sarq	$24, -8(%rbp)
	jmp	L108
L69:
	sarq	$25, -8(%rbp)
	jmp	L108
L70:
	sarq	$26, -8(%rbp)
	jmp	L108
L71:
	sarq	$27, -8(%rbp)
	jmp	L108
L72:
	sarq	$28, -8(%rbp)
	jmp	L108
L73:
	sarq	$29, -8(%rbp)
	jmp	L108
L74:
	sarq	$30, -8(%rbp)
	jmp	L108
L75:
	sarq	$31, -8(%rbp)
	jmp	L108
L76:
	sarq	$32, -8(%rbp)
	jmp	L108
L77:
	sarq	$33, -8(%rbp)
	jmp	L108
L78:
	sarq	$34, -8(%rbp)
	jmp	L108
L79:
	sarq	$35, -8(%rbp)
	jmp	L108
L80:
	sarq	$36, -8(%rbp)
	jmp	L108
L81:
	sarq	$37, -8(%rbp)
	jmp	L108
L82:
	sarq	$38, -8(%rbp)
	jmp	L108
L83:
	sarq	$39, -8(%rbp)
	jmp	L108
L84:
	sarq	$40, -8(%rbp)
	jmp	L108
L85:
	sarq	$41, -8(%rbp)
	jmp	L108
L86:
	sarq	$42, -8(%rbp)
	jmp	L108
L87:
	sarq	$43, -8(%rbp)
	jmp	L108
L88:
	sarq	$44, -8(%rbp)
	jmp	L108
L89:
	sarq	$45, -8(%rbp)
	jmp	L108
L90:
	sarq	$46, -8(%rbp)
	jmp	L108
L91:
	sarq	$47, -8(%rbp)
	jmp	L108
L92:
	sarq	$48, -8(%rbp)
	jmp	L108
L93:
	sarq	$49, -8(%rbp)
	jmp	L108
L94:
	sarq	$50, -8(%rbp)
	jmp	L108
L95:
	sarq	$51, -8(%rbp)
	jmp	L108
L96:
	sarq	$52, -8(%rbp)
	jmp	L108
L97:
	sarq	$53, -8(%rbp)
	jmp	L108
L98:
	sarq	$54, -8(%rbp)
	jmp	L108
L99:
	sarq	$55, -8(%rbp)
	jmp	L108
L100:
	sarq	$56, -8(%rbp)
	jmp	L108
L101:
	sarq	$57, -8(%rbp)
	jmp	L108
L102:
	sarq	$58, -8(%rbp)
	jmp	L108
L103:
	sarq	$59, -8(%rbp)
	jmp	L108
L104:
	sarq	$60, -8(%rbp)
	jmp	L108
L105:
	sarq	$61, -8(%rbp)
	jmp	L108
L106:
	sarq	$62, -8(%rbp)
	jmp	L108
L107:
	sarq	$63, -8(%rbp)
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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	jmp	L112
L114:
	movabsq	$8526495107234113920, %rax
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
	movabsq	$-8152436031399644656, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	variable_shift
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	sext(,%rax,8), %rax
	cmpq	-24(%rbp), %rax
	je	L116
	call	abort
L116:
	addl	$1, -4(%rbp)
L115:
	cmpl	$63, -4(%rbp)
	jle	L117
	movl	$0, -4(%rbp)
	jmp	L118
L120:
	movabsq	$8526495107234113920, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	constant_shift
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	zext(,%rax,8), %rax
	cmpq	-32(%rbp), %rax
	je	L119
	call	abort
L119:
	addl	$1, -4(%rbp)
L118:
	cmpl	$63, -4(%rbp)
	jle	L120
	movl	$0, -4(%rbp)
	jmp	L121
L123:
	movabsq	$-8152436031399644656, %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	constant_shift
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	sext(,%rax,8), %rax
	cmpq	-40(%rbp), %rax
	je	L122
	call	abort
L122:
	addl	$1, -4(%rbp)
L121:
	cmpl	$63, -4(%rbp)
	jle	L123
	movl	$0, %edi
	call	exit
