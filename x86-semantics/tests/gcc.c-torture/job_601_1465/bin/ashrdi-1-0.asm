    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .section	.rodata
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
    .text
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
    ja	L60
    movl	-12(%rbp), %eax
    movq	L62(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L62:
    .quad	L128
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
    .quad	L108
    .quad	L109
    .quad	L110
    .quad	L111
    .quad	L112
    .quad	L113
    .quad	L114
    .quad	L115
    .quad	L116
    .quad	L117
    .quad	L118
    .quad	L119
    .quad	L120
    .quad	L121
    .quad	L122
    .quad	L123
    .quad	L124
    .quad	L125
    .text
L63:
    sarq	-8(%rbp)
    jmp	L126
L64:
    sarq	$2, -8(%rbp)
    jmp	L126
L65:
    sarq	$3, -8(%rbp)
    jmp	L126
L66:
    sarq	$4, -8(%rbp)
    jmp	L126
L67:
    sarq	$5, -8(%rbp)
    jmp	L126
L68:
    sarq	$6, -8(%rbp)
    jmp	L126
L69:
    sarq	$7, -8(%rbp)
    jmp	L126
L70:
    sarq	$8, -8(%rbp)
    jmp	L126
L71:
    sarq	$9, -8(%rbp)
    jmp	L126
L72:
    sarq	$10, -8(%rbp)
    jmp	L126
L73:
    sarq	$11, -8(%rbp)
    jmp	L126
L74:
    sarq	$12, -8(%rbp)
    jmp	L126
L75:
    sarq	$13, -8(%rbp)
    jmp	L126
L76:
    sarq	$14, -8(%rbp)
    jmp	L126
L77:
    sarq	$15, -8(%rbp)
    jmp	L126
L78:
    sarq	$16, -8(%rbp)
    jmp	L126
L79:
    sarq	$17, -8(%rbp)
    jmp	L126
L80:
    sarq	$18, -8(%rbp)
    jmp	L126
L81:
    sarq	$19, -8(%rbp)
    jmp	L126
L82:
    sarq	$20, -8(%rbp)
    jmp	L126
L83:
    sarq	$21, -8(%rbp)
    jmp	L126
L84:
    sarq	$22, -8(%rbp)
    jmp	L126
L85:
    sarq	$23, -8(%rbp)
    jmp	L126
L86:
    sarq	$24, -8(%rbp)
    jmp	L126
L87:
    sarq	$25, -8(%rbp)
    jmp	L126
L88:
    sarq	$26, -8(%rbp)
    jmp	L126
L89:
    sarq	$27, -8(%rbp)
    jmp	L126
L90:
    sarq	$28, -8(%rbp)
    jmp	L126
L91:
    sarq	$29, -8(%rbp)
    jmp	L126
L92:
    sarq	$30, -8(%rbp)
    jmp	L126
L93:
    sarq	$31, -8(%rbp)
    jmp	L126
L94:
    sarq	$32, -8(%rbp)
    jmp	L126
L95:
    sarq	$33, -8(%rbp)
    jmp	L126
L96:
    sarq	$34, -8(%rbp)
    jmp	L126
L97:
    sarq	$35, -8(%rbp)
    jmp	L126
L98:
    sarq	$36, -8(%rbp)
    jmp	L126
L99:
    sarq	$37, -8(%rbp)
    jmp	L126
L100:
    sarq	$38, -8(%rbp)
    jmp	L126
L101:
    sarq	$39, -8(%rbp)
    jmp	L126
L102:
    sarq	$40, -8(%rbp)
    jmp	L126
L103:
    sarq	$41, -8(%rbp)
    jmp	L126
L104:
    sarq	$42, -8(%rbp)
    jmp	L126
L105:
    sarq	$43, -8(%rbp)
    jmp	L126
L106:
    sarq	$44, -8(%rbp)
    jmp	L126
L107:
    sarq	$45, -8(%rbp)
    jmp	L126
L108:
    sarq	$46, -8(%rbp)
    jmp	L126
L109:
    sarq	$47, -8(%rbp)
    jmp	L126
L110:
    sarq	$48, -8(%rbp)
    jmp	L126
L111:
    sarq	$49, -8(%rbp)
    jmp	L126
L112:
    sarq	$50, -8(%rbp)
    jmp	L126
L113:
    sarq	$51, -8(%rbp)
    jmp	L126
L114:
    sarq	$52, -8(%rbp)
    jmp	L126
L115:
    sarq	$53, -8(%rbp)
    jmp	L126
L116:
    sarq	$54, -8(%rbp)
    jmp	L126
L117:
    sarq	$55, -8(%rbp)
    jmp	L126
L118:
    sarq	$56, -8(%rbp)
    jmp	L126
L119:
    sarq	$57, -8(%rbp)
    jmp	L126
L120:
    sarq	$58, -8(%rbp)
    jmp	L126
L121:
    sarq	$59, -8(%rbp)
    jmp	L126
L122:
    sarq	$60, -8(%rbp)
    jmp	L126
L123:
    sarq	$61, -8(%rbp)
    jmp	L126
L124:
    sarq	$62, -8(%rbp)
    jmp	L126
L125:
    sarq	$63, -8(%rbp)
    jmp	L126
L60:
    call	abort
L128:
    nop
L126:
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	$0, -36(%rbp)
    jmp	L130
L132:
    movabsq	$8526495107234113920, %rax
    movl	-36(%rbp), %edx
    movl	%edx, %esi
    movq	%rax, %rdi
    call	variable_shift
    movq	%rax, -32(%rbp)
    movl	-36(%rbp), %eax
    cltq
    movq	zext(,%rax,8), %rax
    cmpq	-32(%rbp), %rax
    je	L131
    call	abort
L131:
    addl	$1, -36(%rbp)
L130:
    cmpl	$63, -36(%rbp)
    jle	L132
    movl	$0, -36(%rbp)
    jmp	L133
L135:
    movabsq	$-8152436031399644656, %rax
    movl	-36(%rbp), %edx
    movl	%edx, %esi
    movq	%rax, %rdi
    call	variable_shift
    movq	%rax, -24(%rbp)
    movl	-36(%rbp), %eax
    cltq
    movq	sext(,%rax,8), %rax
    cmpq	-24(%rbp), %rax
    je	L134
    call	abort
L134:
    addl	$1, -36(%rbp)
L133:
    cmpl	$63, -36(%rbp)
    jle	L135
    movl	$0, -36(%rbp)
    jmp	L136
L138:
    movabsq	$8526495107234113920, %rax
    movl	-36(%rbp), %edx
    movl	%edx, %esi
    movq	%rax, %rdi
    call	constant_shift
    movq	%rax, -16(%rbp)
    movl	-36(%rbp), %eax
    cltq
    movq	zext(,%rax,8), %rax
    cmpq	-16(%rbp), %rax
    je	L137
    call	abort
L137:
    addl	$1, -36(%rbp)
L136:
    cmpl	$63, -36(%rbp)
    jle	L138
    movl	$0, -36(%rbp)
    jmp	L139
L141:
    movabsq	$-8152436031399644656, %rax
    movl	-36(%rbp), %edx
    movl	%edx, %esi
    movq	%rax, %rdi
    call	constant_shift
    movq	%rax, -8(%rbp)
    movl	-36(%rbp), %eax
    cltq
    movq	sext(,%rax,8), %rax
    cmpq	-8(%rbp), %rax
    je	L140
    call	abort
L140:
    addl	$1, -36(%rbp)
L139:
    cmpl	$63, -36(%rbp)
    jle	L141
    movl	$0, %edi
    call	exit
