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
my_ffs:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	L40
	movl	$0, %eax
	jmp	L41
L40:
	movl	$0, -4(%rbp)
	jmp	L42
L45:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L43
	jmp	L44
L43:
	addl	$1, -4(%rbp)
L42:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L45
L44:
	movl	-4(%rbp), %eax
	addl	$1, %eax
L41:
	popq	%rbp
	ret
my_ctz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	L47
L50:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L48
	jmp	L49
L48:
	addl	$1, -4(%rbp)
L47:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L50
L49:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	L53
L56:
	movl	-4(%rbp), %eax
	movl	$31, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L54
	jmp	L55
L54:
	addl	$1, -4(%rbp)
L53:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L56
L55:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clrsb:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	L59
L62:
	movl	-4(%rbp), %eax
	movl	$31, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	je	L60
	jmp	L61
L60:
	addl	$1, -4(%rbp)
L59:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L62
L61:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	popq	%rbp
	ret
my_popcount:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L65
L67:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L66
	addl	$1, -8(%rbp)
L66:
	addl	$1, -4(%rbp)
L65:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L67
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
my_parity:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L70
L72:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L71
	addl	$1, -8(%rbp)
L71:
	addl	$1, -4(%rbp)
L70:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L72
	movl	-8(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	ret
my_ffsl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L75
	movl	$0, %eax
	jmp	L76
L75:
	movl	$0, -4(%rbp)
	jmp	L77
L80:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L78
	jmp	L79
L78:
	addl	$1, -4(%rbp)
L77:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L80
L79:
	movl	-4(%rbp), %eax
	addl	$1, %eax
L76:
	popq	%rbp
	ret
my_ctzl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L82
L85:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L83
	jmp	L84
L83:
	addl	$1, -4(%rbp)
L82:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L85
L84:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clzl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L88
L91:
	movl	-4(%rbp), %eax
	movl	$63, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L89
	jmp	L90
L89:
	addl	$1, -4(%rbp)
L88:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L91
L90:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clrsbl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	L94
L97:
	movl	-4(%rbp), %eax
	movl	$63, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	L95
	jmp	L96
L95:
	addl	$1, -4(%rbp)
L94:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L97
L96:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	popq	%rbp
	ret
my_popcountl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L100
L102:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L101
	addl	$1, -8(%rbp)
L101:
	addl	$1, -4(%rbp)
L100:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L102
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
my_parityl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L105
L107:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L106
	addl	$1, -8(%rbp)
L106:
	addl	$1, -4(%rbp)
L105:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L107
	movl	-8(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	ret
my_ffsll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L110
	movl	$0, %eax
	jmp	L111
L110:
	movl	$0, -4(%rbp)
	jmp	L112
L115:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L113
	jmp	L114
L113:
	addl	$1, -4(%rbp)
L112:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L115
L114:
	movl	-4(%rbp), %eax
	addl	$1, %eax
L111:
	popq	%rbp
	ret
my_ctzll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L117
L120:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L118
	jmp	L119
L118:
	addl	$1, -4(%rbp)
L117:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L120
L119:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clzll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L123
L126:
	movl	-4(%rbp), %eax
	movl	$63, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L124
	jmp	L125
L124:
	addl	$1, -4(%rbp)
L123:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L126
L125:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clrsbll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	L129
L132:
	movl	-4(%rbp), %eax
	movl	$63, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	L130
	jmp	L131
L130:
	addl	$1, -4(%rbp)
L129:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L132
L131:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	popq	%rbp
	ret
my_popcountll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L135
L137:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L136
	addl	$1, -8(%rbp)
L136:
	addl	$1, -4(%rbp)
L135:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L137
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
my_parityll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L140
L142:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L141
	addl	$1, -8(%rbp)
L141:
	addl	$1, -4(%rbp)
L140:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L142
	movl	-8(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	ret
ints:
	.long	0
	.long	1
	.long	-2147483648
	.long	2
	.long	1073741824
	.long	65536
	.long	32768
	.long	-1515870811
	.long	1515870810
	.long	-889323520
	.long	13303296
	.long	51966
	.long	-1
longs:
	.quad	0
	.quad	1
	.quad	-9223372036854775808
	.quad	2
	.quad	4611686018427387904
	.quad	4294967296
	.quad	2147483648
	.quad	-6510615555426900571
	.quad	6510615555426900570
	.quad	-3819392241693097984
	.quad	223195676147712
	.quad	3405695742
	.quad	-1
longlongs:
	.quad	0
	.quad	1
	.quad	-9223372036854775808
	.quad	2
	.quad	4611686018427387904
	.quad	4294967296
	.quad	2147483648
	.quad	-6510615555426900571
	.quad	6510615555426900570
	.quad	-3819392241693097984
	.quad	223195676147712
	.quad	3405695742
	.quad	-1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movl	$0, -20(%rbp)
	jmp	L145
L152:
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	movl	%eax, %edx
	movl	$-1, %eax
	tzcntl	%edx, %ebx
	cmovc	%eax, %ebx
	addl	$1, %ebx
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	movl	%eax, %edi
	call	my_ffs
	cmpl	%eax, %ebx
	je	L146
	call	abort
L146:
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	testl	%eax, %eax
	je	L147
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	lzcntl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	movl	%eax, %edi
	call	my_clz
	cmpl	%eax, %ebx
	je	L147
	call	abort
L147:
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	testl	%eax, %eax
	je	L148
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	tzcntl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	movl	%eax, %edi
	call	my_ctz
	cmpl	%eax, %ebx
	je	L148
	call	abort
L148:
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	cltq
	movq	%rax, %rdi
	call	__clrsbdi2
	movl	%eax, %eax
	subq	$32, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	movl	%eax, %edi
	call	my_clrsb
	cmpl	%eax, %ebx
	je	L149
	call	abort
L149:
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	popcntl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	movl	%eax, %edi
	call	my_popcount
	cmpl	%eax, %ebx
	je	L150
	call	abort
L150:
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	popcntl	%eax, %eax
	andl	$1, %eax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	movl	%eax, %edi
	call	my_parity
	cmpl	%eax, %ebx
	je	L151
	call	abort
L151:
	addl	$1, -20(%rbp)
L145:
	movl	-20(%rbp), %eax
	cmpl	$12, %eax
	jbe	L152
	movl	$0, -20(%rbp)
	jmp	L153
L160:
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	movq	$-1, %rdx
	tzcntq	%rax, %rax
	cmovc	%rdx, %rax
	addq	$1, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_ffsl
	cmpl	%eax, %ebx
	je	L154
	call	abort
L154:
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	testq	%rax, %rax
	je	L155
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	lzcntq	%rax, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_clzl
	cmpl	%eax, %ebx
	je	L155
	call	abort
L155:
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	testq	%rax, %rax
	je	L156
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	tzcntq	%rax, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_ctzl
	cmpl	%eax, %ebx
	je	L156
	call	abort
L156:
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	movq	%rax, %rdi
	call	__clrsbdi2
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_clrsbl
	cmpl	%eax, %ebx
	je	L157
	call	abort
L157:
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	popcntq	%rax, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_popcountl
	cmpl	%eax, %ebx
	je	L158
	call	abort
L158:
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	popcntq	%rax, %rax
	andl	$1, %eax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_parityl
	cmpl	%eax, %ebx
	je	L159
	call	abort
L159:
	addl	$1, -20(%rbp)
L153:
	movl	-20(%rbp), %eax
	cmpl	$12, %eax
	jbe	L160
	movl	$0, -20(%rbp)
	jmp	L161
L168:
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	movq	$-1, %rdx
	tzcntq	%rax, %rax
	cmovc	%rdx, %rax
	addq	$1, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_ffsll
	cmpl	%eax, %ebx
	je	L162
	call	abort
L162:
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	testq	%rax, %rax
	je	L163
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	lzcntq	%rax, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_clzll
	cmpl	%eax, %ebx
	je	L163
	call	abort
L163:
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	testq	%rax, %rax
	je	L164
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	tzcntq	%rax, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_ctzll
	cmpl	%eax, %ebx
	je	L164
	call	abort
L164:
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	movq	%rax, %rdi
	call	__clrsbdi2
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_clrsbll
	cmpl	%eax, %ebx
	je	L165
	call	abort
L165:
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	popcntq	%rax, %rax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_popcountll
	cmpl	%eax, %ebx
	je	L166
	call	abort
L166:
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	popcntq	%rax, %rax
	andl	$1, %eax
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	movq	%rax, %rdi
	call	my_parityll
	cmpl	%eax, %ebx
	je	L167
	call	abort
L167:
	addl	$1, -20(%rbp)
L161:
	movl	-20(%rbp), %eax
	cmpl	$12, %eax
	jbe	L168
	movl	$0, %edi
	call	my_ffs
	testl	%eax, %eax
	je	L169
	call	abort
L169:
	movl	$0, %edi
	call	my_clrsb
	cmpl	$31, %eax
	je	L170
	call	abort
L170:
	movl	$0, %edi
	call	my_popcount
	testl	%eax, %eax
	je	L171
	call	abort
L171:
	movl	$0, %edi
	call	my_parity
	testl	%eax, %eax
	je	L172
	call	abort
L172:
	movl	$1, %edi
	call	my_ffs
	cmpl	$1, %eax
	je	L173
	call	abort
L173:
	movl	$1, %edi
	call	my_clz
	cmpl	$31, %eax
	je	L174
	call	abort
L174:
	movl	$1, %edi
	call	my_ctz
	testl	%eax, %eax
	je	L175
	call	abort
L175:
	movl	$1, %edi
	call	my_clrsb
	cmpl	$30, %eax
	je	L176
	call	abort
L176:
	movl	$1, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L177
	call	abort
L177:
	movl	$1, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L178
	call	abort
L178:
	movl	$-2147483648, %edi
	call	my_ffs
	cmpl	$32, %eax
	je	L179
	call	abort
L179:
	movl	$-2147483648, %edi
	call	my_clz
	testl	%eax, %eax
	je	L180
	call	abort
L180:
	movl	$-2147483648, %edi
	call	my_ctz
	cmpl	$31, %eax
	je	L181
	call	abort
L181:
	movl	$-2147483648, %edi
	call	my_clrsb
	testl	%eax, %eax
	je	L182
	call	abort
L182:
	movl	$-2147483648, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L183
	call	abort
L183:
	movl	$-2147483648, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L184
	call	abort
L184:
	movl	$1073741824, %edi
	call	my_ffs
	cmpl	$31, %eax
	je	L185
	call	abort
L185:
	movl	$1073741824, %edi
	call	my_clz
	cmpl	$1, %eax
	je	L186
	call	abort
L186:
	movl	$1073741824, %edi
	call	my_ctz
	cmpl	$30, %eax
	je	L187
	call	abort
L187:
	movl	$1073741824, %edi
	call	my_clrsb
	testl	%eax, %eax
	je	L188
	call	abort
L188:
	movl	$1073741824, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L189
	call	abort
L189:
	movl	$1073741824, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L190
	call	abort
L190:
	movl	$65536, %edi
	call	my_ffs
	cmpl	$17, %eax
	je	L191
	call	abort
L191:
	movl	$65536, %edi
	call	my_clz
	cmpl	$15, %eax
	je	L192
	call	abort
L192:
	movl	$65536, %edi
	call	my_ctz
	cmpl	$16, %eax
	je	L193
	call	abort
L193:
	movl	$65536, %edi
	call	my_clrsb
	cmpl	$14, %eax
	je	L194
	call	abort
L194:
	movl	$65536, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L195
	call	abort
L195:
	movl	$65536, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L196
	call	abort
L196:
	movl	$32768, %edi
	call	my_ffs
	cmpl	$16, %eax
	je	L197
	call	abort
L197:
	movl	$32768, %edi
	call	my_clz
	cmpl	$16, %eax
	je	L198
	call	abort
L198:
	movl	$32768, %edi
	call	my_ctz
	cmpl	$15, %eax
	je	L199
	call	abort
L199:
	movl	$32768, %edi
	call	my_clrsb
	cmpl	$15, %eax
	je	L200
	call	abort
L200:
	movl	$32768, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L201
	call	abort
L201:
	movl	$32768, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L202
	call	abort
L202:
	movl	$-1515870811, %edi
	call	my_ffs
	cmpl	$1, %eax
	je	L203
	call	abort
L203:
	movl	$-1515870811, %edi
	call	my_clz
	testl	%eax, %eax
	je	L204
	call	abort
L204:
	movl	$-1515870811, %edi
	call	my_ctz
	testl	%eax, %eax
	je	L205
	call	abort
L205:
	movl	$-1515870811, %edi
	call	my_clrsb
	testl	%eax, %eax
	je	L206
	call	abort
L206:
	movl	$-1515870811, %edi
	call	my_popcount
	cmpl	$16, %eax
	je	L207
	call	abort
L207:
	movl	$-1515870811, %edi
	call	my_parity
	testl	%eax, %eax
	je	L208
	call	abort
L208:
	movl	$1515870810, %edi
	call	my_ffs
	cmpl	$2, %eax
	je	L209
	call	abort
L209:
	movl	$1515870810, %edi
	call	my_clz
	cmpl	$1, %eax
	je	L210
	call	abort
L210:
	movl	$1515870810, %edi
	call	my_ctz
	cmpl	$1, %eax
	je	L211
	call	abort
L211:
	movl	$1515870810, %edi
	call	my_clrsb
	testl	%eax, %eax
	je	L212
	call	abort
L212:
	movl	$1515870810, %edi
	call	my_popcount
	cmpl	$16, %eax
	je	L213
	call	abort
L213:
	movl	$1515870810, %edi
	call	my_parity
	testl	%eax, %eax
	je	L214
	call	abort
L214:
	movl	$-889323520, %edi
	call	my_ffs
	cmpl	$18, %eax
	je	L215
	call	abort
L215:
	movl	$-889323520, %edi
	call	my_clz
	testl	%eax, %eax
	je	L216
	call	abort
L216:
	movl	$-889323520, %edi
	call	my_ctz
	cmpl	$17, %eax
	je	L217
	call	abort
L217:
	movl	$-889323520, %edi
	call	my_clrsb
	cmpl	$1, %eax
	je	L218
	call	abort
L218:
	movl	$-889323520, %edi
	call	my_popcount
	cmpl	$11, %eax
	je	L219
	call	abort
L219:
	movl	$-889323520, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L220
	call	abort
L220:
	movl	$13303296, %edi
	call	my_ffs
	cmpl	$10, %eax
	je	L221
	call	abort
L221:
	movl	$13303296, %edi
	call	my_clz
	cmpl	$8, %eax
	je	L222
	call	abort
L222:
	movl	$13303296, %edi
	call	my_ctz
	cmpl	$9, %eax
	je	L223
	call	abort
L223:
	movl	$13303296, %edi
	call	my_clrsb
	cmpl	$7, %eax
	je	L224
	call	abort
L224:
	movl	$13303296, %edi
	call	my_popcount
	cmpl	$11, %eax
	je	L225
	call	abort
L225:
	movl	$13303296, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L226
	call	abort
L226:
	movl	$51966, %edi
	call	my_ffs
	cmpl	$2, %eax
	je	L227
	call	abort
L227:
	movl	$51966, %edi
	call	my_clz
	cmpl	$16, %eax
	je	L228
	call	abort
L228:
	movl	$51966, %edi
	call	my_ctz
	cmpl	$1, %eax
	je	L229
	call	abort
L229:
	movl	$51966, %edi
	call	my_clrsb
	cmpl	$15, %eax
	je	L230
	call	abort
L230:
	movl	$51966, %edi
	call	my_popcount
	cmpl	$11, %eax
	je	L231
	call	abort
L231:
	movl	$51966, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L232
	call	abort
L232:
	movl	$-1, %edi
	call	my_ffs
	cmpl	$1, %eax
	je	L233
	call	abort
L233:
	movl	$-1, %edi
	call	my_clz
	testl	%eax, %eax
	je	L234
	call	abort
L234:
	movl	$-1, %edi
	call	my_ctz
	testl	%eax, %eax
	je	L235
	call	abort
L235:
	movl	$-1, %edi
	call	my_clrsb
	cmpl	$31, %eax
	je	L236
	call	abort
L236:
	movl	$-1, %edi
	call	my_popcount
	cmpl	$32, %eax
	je	L237
	call	abort
L237:
	movl	$-1, %edi
	call	my_parity
	testl	%eax, %eax
	je	L238
	call	abort
L238:
	movl	$0, %edi
	call	my_ffsll
	testl	%eax, %eax
	je	L239
	call	abort
L239:
	movl	$0, %edi
	call	my_clrsbll
	cmpl	$63, %eax
	je	L240
	call	abort
L240:
	movl	$0, %edi
	call	my_popcountll
	testl	%eax, %eax
	je	L241
	call	abort
L241:
	movl	$0, %edi
	call	my_parityll
	testl	%eax, %eax
	je	L242
	call	abort
L242:
	movl	$1, %edi
	call	my_ffsll
	cmpl	$1, %eax
	je	L243
	call	abort
L243:
	movl	$1, %edi
	call	my_clzll
	cmpl	$63, %eax
	je	L244
	call	abort
L244:
	movl	$1, %edi
	call	my_ctzll
	testl	%eax, %eax
	je	L245
	call	abort
L245:
	movl	$1, %edi
	call	my_clrsbll
	cmpl	$62, %eax
	je	L246
	call	abort
L246:
	movl	$1, %edi
	call	my_popcountll
	cmpl	$1, %eax
	je	L247
	call	abort
L247:
	movl	$1, %edi
	call	my_parityll
	cmpl	$1, %eax
	je	L248
	call	abort
L248:
	movabsq	$-9223372036854775808, %rdi
	call	my_ffsll
	cmpl	$64, %eax
	je	L249
	call	abort
L249:
	movabsq	$-9223372036854775808, %rdi
	call	my_clzll
	testl	%eax, %eax
	je	L250
	call	abort
L250:
	movabsq	$-9223372036854775808, %rdi
	call	my_ctzll
	cmpl	$63, %eax
	je	L251
	call	abort
L251:
	movabsq	$-9223372036854775808, %rdi
	call	my_clrsbll
	testl	%eax, %eax
	je	L252
	call	abort
L252:
	movabsq	$-9223372036854775808, %rdi
	call	my_popcountll
	cmpl	$1, %eax
	je	L253
	call	abort
L253:
	movabsq	$-9223372036854775808, %rdi
	call	my_parityll
	cmpl	$1, %eax
	je	L254
	call	abort
L254:
	movl	$2, %edi
	call	my_ffsll
	cmpl	$2, %eax
	je	L255
	call	abort
L255:
	movl	$2, %edi
	call	my_clzll
	cmpl	$62, %eax
	je	L256
	call	abort
L256:
	movl	$2, %edi
	call	my_ctzll
	cmpl	$1, %eax
	je	L257
	call	abort
L257:
	movl	$2, %edi
	call	my_clrsbll
	cmpl	$61, %eax
	je	L258
	call	abort
L258:
	movl	$2, %edi
	call	my_popcountll
	cmpl	$1, %eax
	je	L259
	call	abort
L259:
	movl	$2, %edi
	call	my_parityll
	cmpl	$1, %eax
	je	L260
	call	abort
L260:
	movabsq	$4611686018427387904, %rdi
	call	my_ffsll
	cmpl	$63, %eax
	je	L261
	call	abort
L261:
	movabsq	$4611686018427387904, %rdi
	call	my_clzll
	cmpl	$1, %eax
	je	L262
	call	abort
L262:
	movabsq	$4611686018427387904, %rdi
	call	my_ctzll
	cmpl	$62, %eax
	je	L263
	call	abort
L263:
	movabsq	$4611686018427387904, %rdi
	call	my_clrsbll
	testl	%eax, %eax
	je	L264
	call	abort
L264:
	movabsq	$4611686018427387904, %rdi
	call	my_popcountll
	cmpl	$1, %eax
	je	L265
	call	abort
L265:
	movabsq	$4611686018427387904, %rdi
	call	my_parityll
	cmpl	$1, %eax
	je	L266
	call	abort
L266:
	movabsq	$4294967296, %rdi
	call	my_ffsll
	cmpl	$33, %eax
	je	L267
	call	abort
L267:
	movabsq	$4294967296, %rdi
	call	my_clzll
	cmpl	$31, %eax
	je	L268
	call	abort
L268:
	movabsq	$4294967296, %rdi
	call	my_ctzll
	cmpl	$32, %eax
	je	L269
	call	abort
L269:
	movabsq	$4294967296, %rdi
	call	my_clrsbll
	cmpl	$30, %eax
	je	L270
	call	abort
L270:
	movabsq	$4294967296, %rdi
	call	my_popcountll
	cmpl	$1, %eax
	je	L271
	call	abort
L271:
	movabsq	$4294967296, %rdi
	call	my_parityll
	cmpl	$1, %eax
	je	L272
	call	abort
L272:
	movl	$2147483648, %edi
	call	my_ffsll
	cmpl	$32, %eax
	je	L273
	call	abort
L273:
	movl	$2147483648, %edi
	call	my_clzll
	cmpl	$32, %eax
	je	L274
	call	abort
L274:
	movl	$2147483648, %edi
	call	my_ctzll
	cmpl	$31, %eax
	je	L275
	call	abort
L275:
	movl	$2147483648, %edi
	call	my_clrsbll
	cmpl	$31, %eax
	je	L276
	call	abort
L276:
	movl	$2147483648, %edi
	call	my_popcountll
	cmpl	$1, %eax
	je	L277
	call	abort
L277:
	movl	$2147483648, %edi
	call	my_parityll
	cmpl	$1, %eax
	je	L278
	call	abort
L278:
	movabsq	$-6510615555426900571, %rdi
	call	my_ffsll
	cmpl	$1, %eax
	je	L279
	call	abort
L279:
	movabsq	$-6510615555426900571, %rdi
	call	my_clzll
	testl	%eax, %eax
	je	L280
	call	abort
L280:
	movabsq	$-6510615555426900571, %rdi
	call	my_ctzll
	testl	%eax, %eax
	je	L281
	call	abort
L281:
	movabsq	$-6510615555426900571, %rdi
	call	my_clrsbll
	testl	%eax, %eax
	je	L282
	call	abort
L282:
	movabsq	$-6510615555426900571, %rdi
	call	my_popcountll
	cmpl	$32, %eax
	je	L283
	call	abort
L283:
	movabsq	$-6510615555426900571, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L284
	call	abort
L284:
	movabsq	$6510615555426900570, %rdi
	call	my_ffsll
	cmpl	$2, %eax
	je	L285
	call	abort
L285:
	movabsq	$6510615555426900570, %rdi
	call	my_clzll
	cmpl	$1, %eax
	je	L286
	call	abort
L286:
	movabsq	$6510615555426900570, %rdi
	call	my_ctzll
	cmpl	$1, %eax
	je	L287
	call	abort
L287:
	movabsq	$6510615555426900570, %rdi
	call	my_clrsbll
	testl	%eax, %eax
	je	L288
	call	abort
L288:
	movabsq	$6510615555426900570, %rdi
	call	my_popcountll
	cmpl	$32, %eax
	je	L289
	call	abort
L289:
	movabsq	$6510615555426900570, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L290
	call	abort
L290:
	movabsq	$-3819392241693097984, %rdi
	call	my_ffsll
	cmpl	$34, %eax
	je	L291
	call	abort
L291:
	movabsq	$-3819392241693097984, %rdi
	call	my_clzll
	testl	%eax, %eax
	je	L292
	call	abort
L292:
	movabsq	$-3819392241693097984, %rdi
	call	my_ctzll
	cmpl	$33, %eax
	je	L293
	call	abort
L293:
	movabsq	$-3819392241693097984, %rdi
	call	my_clrsbll
	cmpl	$1, %eax
	je	L294
	call	abort
L294:
	movabsq	$-3819392241693097984, %rdi
	call	my_popcountll
	cmpl	$22, %eax
	je	L295
	call	abort
L295:
	movabsq	$-3819392241693097984, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L296
	call	abort
L296:
	movabsq	$223195676147712, %rdi
	call	my_ffsll
	cmpl	$18, %eax
	je	L297
	call	abort
L297:
	movabsq	$223195676147712, %rdi
	call	my_clzll
	cmpl	$16, %eax
	je	L298
	call	abort
L298:
	movabsq	$223195676147712, %rdi
	call	my_ctzll
	cmpl	$17, %eax
	je	L299
	call	abort
L299:
	movabsq	$223195676147712, %rdi
	call	my_clrsbll
	cmpl	$15, %eax
	je	L300
	call	abort
L300:
	movabsq	$223195676147712, %rdi
	call	my_popcountll
	cmpl	$22, %eax
	je	L301
	call	abort
L301:
	movabsq	$223195676147712, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L302
	call	abort
L302:
	movl	$3405695742, %edi
	call	my_ffsll
	cmpl	$2, %eax
	je	L303
	call	abort
L303:
	movl	$3405695742, %edi
	call	my_clzll
	cmpl	$32, %eax
	je	L304
	call	abort
L304:
	movl	$3405695742, %edi
	call	my_ctzll
	cmpl	$1, %eax
	je	L305
	call	abort
L305:
	movl	$3405695742, %edi
	call	my_clrsbll
	cmpl	$31, %eax
	je	L306
	call	abort
L306:
	movl	$3405695742, %edi
	call	my_popcountll
	cmpl	$22, %eax
	je	L307
	call	abort
L307:
	movl	$3405695742, %edi
	call	my_parityll
	testl	%eax, %eax
	je	L308
	call	abort
L308:
	movq	$-1, %rdi
	call	my_ffsll
	cmpl	$1, %eax
	je	L309
	call	abort
L309:
	movq	$-1, %rdi
	call	my_clzll
	testl	%eax, %eax
	je	L310
	call	abort
L310:
	movq	$-1, %rdi
	call	my_ctzll
	testl	%eax, %eax
	je	L311
	call	abort
L311:
	movq	$-1, %rdi
	call	my_clrsbll
	cmpl	$63, %eax
	je	L312
	call	abort
L312:
	movq	$-1, %rdi
	call	my_popcountll
	cmpl	$64, %eax
	je	L313
	call	abort
L313:
	movq	$-1, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L314
	call	abort
L314:
	movl	$0, %edi
	call	exit
