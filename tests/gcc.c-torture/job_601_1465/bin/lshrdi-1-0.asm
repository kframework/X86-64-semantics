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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
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
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .section	.rodata
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
    .text
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
    ja	L56
    movl	-12(%rbp), %eax
    movq	L58(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L58:
    .quad	L124
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
    .text
L59:
    shrq	-8(%rbp)
    jmp	L122
L60:
    shrq	$2, -8(%rbp)
    jmp	L122
L61:
    shrq	$3, -8(%rbp)
    jmp	L122
L62:
    shrq	$4, -8(%rbp)
    jmp	L122
L63:
    shrq	$5, -8(%rbp)
    jmp	L122
L64:
    shrq	$6, -8(%rbp)
    jmp	L122
L65:
    shrq	$7, -8(%rbp)
    jmp	L122
L66:
    shrq	$8, -8(%rbp)
    jmp	L122
L67:
    shrq	$9, -8(%rbp)
    jmp	L122
L68:
    shrq	$10, -8(%rbp)
    jmp	L122
L69:
    shrq	$11, -8(%rbp)
    jmp	L122
L70:
    shrq	$12, -8(%rbp)
    jmp	L122
L71:
    shrq	$13, -8(%rbp)
    jmp	L122
L72:
    shrq	$14, -8(%rbp)
    jmp	L122
L73:
    shrq	$15, -8(%rbp)
    jmp	L122
L74:
    shrq	$16, -8(%rbp)
    jmp	L122
L75:
    shrq	$17, -8(%rbp)
    jmp	L122
L76:
    shrq	$18, -8(%rbp)
    jmp	L122
L77:
    shrq	$19, -8(%rbp)
    jmp	L122
L78:
    shrq	$20, -8(%rbp)
    jmp	L122
L79:
    shrq	$21, -8(%rbp)
    jmp	L122
L80:
    shrq	$22, -8(%rbp)
    jmp	L122
L81:
    shrq	$23, -8(%rbp)
    jmp	L122
L82:
    shrq	$24, -8(%rbp)
    jmp	L122
L83:
    shrq	$25, -8(%rbp)
    jmp	L122
L84:
    shrq	$26, -8(%rbp)
    jmp	L122
L85:
    shrq	$27, -8(%rbp)
    jmp	L122
L86:
    shrq	$28, -8(%rbp)
    jmp	L122
L87:
    shrq	$29, -8(%rbp)
    jmp	L122
L88:
    shrq	$30, -8(%rbp)
    jmp	L122
L89:
    shrq	$31, -8(%rbp)
    jmp	L122
L90:
    shrq	$32, -8(%rbp)
    jmp	L122
L91:
    shrq	$33, -8(%rbp)
    jmp	L122
L92:
    shrq	$34, -8(%rbp)
    jmp	L122
L93:
    shrq	$35, -8(%rbp)
    jmp	L122
L94:
    shrq	$36, -8(%rbp)
    jmp	L122
L95:
    shrq	$37, -8(%rbp)
    jmp	L122
L96:
    shrq	$38, -8(%rbp)
    jmp	L122
L97:
    shrq	$39, -8(%rbp)
    jmp	L122
L98:
    shrq	$40, -8(%rbp)
    jmp	L122
L99:
    shrq	$41, -8(%rbp)
    jmp	L122
L100:
    shrq	$42, -8(%rbp)
    jmp	L122
L101:
    shrq	$43, -8(%rbp)
    jmp	L122
L102:
    shrq	$44, -8(%rbp)
    jmp	L122
L103:
    shrq	$45, -8(%rbp)
    jmp	L122
L104:
    shrq	$46, -8(%rbp)
    jmp	L122
L105:
    shrq	$47, -8(%rbp)
    jmp	L122
L106:
    shrq	$48, -8(%rbp)
    jmp	L122
L107:
    shrq	$49, -8(%rbp)
    jmp	L122
L108:
    shrq	$50, -8(%rbp)
    jmp	L122
L109:
    shrq	$51, -8(%rbp)
    jmp	L122
L110:
    shrq	$52, -8(%rbp)
    jmp	L122
L111:
    shrq	$53, -8(%rbp)
    jmp	L122
L112:
    shrq	$54, -8(%rbp)
    jmp	L122
L113:
    shrq	$55, -8(%rbp)
    jmp	L122
L114:
    shrq	$56, -8(%rbp)
    jmp	L122
L115:
    shrq	$57, -8(%rbp)
    jmp	L122
L116:
    shrq	$58, -8(%rbp)
    jmp	L122
L117:
    shrq	$59, -8(%rbp)
    jmp	L122
L118:
    shrq	$60, -8(%rbp)
    jmp	L122
L119:
    shrq	$61, -8(%rbp)
    jmp	L122
L120:
    shrq	$62, -8(%rbp)
    jmp	L122
L121:
    shrq	$63, -8(%rbp)
    jmp	L122
L56:
    call	abort
L124:
    nop
L122:
    movq	-8(%rbp), %rax
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	$0, -20(%rbp)
    jmp	L126
L128:
    movabsq	$-8690466092652643696, %rax
    movl	-20(%rbp), %edx
    movl	%edx, %esi
    movq	%rax, %rdi
    call	variable_shift
    movq	%rax, -16(%rbp)
    movl	-20(%rbp), %eax
    cltq
    movq	zext(,%rax,8), %rax
    cmpq	-16(%rbp), %rax
    je	L127
    call	abort
L127:
    addl	$1, -20(%rbp)
L126:
    cmpl	$63, -20(%rbp)
    jle	L128
    movl	$0, -20(%rbp)
    jmp	L129
L131:
    movabsq	$-8690466092652643696, %rax
    movl	-20(%rbp), %edx
    movl	%edx, %esi
    movq	%rax, %rdi
    call	constant_shift
    movq	%rax, -8(%rbp)
    movl	-20(%rbp), %eax
    cltq
    movq	zext(,%rax,8), %rax
    cmpq	-8(%rbp), %rax
    je	L130
    call	abort
L130:
    addl	$1, -20(%rbp)
L129:
    cmpl	$63, -20(%rbp)
    jle	L131
    movl	$0, %edi
    call	exit
