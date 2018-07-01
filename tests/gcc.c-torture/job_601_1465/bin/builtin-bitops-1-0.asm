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
my_ffs:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	L10
	movl	$0, %eax
	jmp	L11
L10:
	movl	$0, -4(%rbp)
	jmp	L12
L15:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L13
	jmp	L14
L13:
	addl	$1, -4(%rbp)
L12:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L15
L14:
	movl	-4(%rbp), %eax
	addl	$1, %eax
L11:
	popq	%rbp
	ret
my_ctz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	L17
L20:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L18
	jmp	L19
L18:
	addl	$1, -4(%rbp)
L17:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L20
L19:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	L23
L26:
	movl	-4(%rbp), %eax
	movl	$31, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L24
	jmp	L25
L24:
	addl	$1, -4(%rbp)
L23:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L26
L25:
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
	jmp	L29
L32:
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
	je	L30
	jmp	L31
L30:
	addl	$1, -4(%rbp)
L29:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L32
L31:
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
	jmp	L35
L37:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L36
	addl	$1, -8(%rbp)
L36:
	addl	$1, -4(%rbp)
L35:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L37
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
my_parity:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L40
L42:
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %edx
	shrx	%eax, %edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L41
	addl	$1, -8(%rbp)
L41:
	addl	$1, -4(%rbp)
L40:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	L42
	movl	-8(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	ret
my_ffsl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L45
	movl	$0, %eax
	jmp	L46
L45:
	movl	$0, -4(%rbp)
	jmp	L47
L50:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L48
	jmp	L49
L48:
	addl	$1, -4(%rbp)
L47:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L50
L49:
	movl	-4(%rbp), %eax
	addl	$1, %eax
L46:
	popq	%rbp
	ret
my_ctzl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L52
L55:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L53
	jmp	L54
L53:
	addl	$1, -4(%rbp)
L52:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L55
L54:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clzl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L58
L61:
	movl	-4(%rbp), %eax
	movl	$63, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L59
	jmp	L60
L59:
	addl	$1, -4(%rbp)
L58:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L61
L60:
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
	jmp	L64
L67:
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
	je	L65
	jmp	L66
L65:
	addl	$1, -4(%rbp)
L64:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L67
L66:
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
	jmp	L70
L72:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L71
	addl	$1, -8(%rbp)
L71:
	addl	$1, -4(%rbp)
L70:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L72
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
my_parityl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L75
L77:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L76
	addl	$1, -8(%rbp)
L76:
	addl	$1, -4(%rbp)
L75:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L77
	movl	-8(%rbp), %eax
	andl	$1, %eax
	popq	%rbp
	ret
my_ffsll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L80
	movl	$0, %eax
	jmp	L81
L80:
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
	addl	$1, %eax
L81:
	popq	%rbp
	ret
my_ctzll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L87
L90:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L88
	jmp	L89
L88:
	addl	$1, -4(%rbp)
L87:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L90
L89:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
my_clzll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L93
L96:
	movl	-4(%rbp), %eax
	movl	$63, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L94
	jmp	L95
L94:
	addl	$1, -4(%rbp)
L93:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L96
L95:
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
	jmp	L99
L102:
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
	je	L100
	jmp	L101
L100:
	addl	$1, -4(%rbp)
L99:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L102
L101:
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
	popq	%rbp
	ret
my_parityll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L110
L112:
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	L111
	addl	$1, -8(%rbp)
L111:
	addl	$1, -4(%rbp)
L110:
	movl	-4(%rbp), %eax
	cmpl	$63, %eax
	jbe	L112
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
	jmp	L115
L122:
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
	je	L116
	call	abort
L116:
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	testl	%eax, %eax
	je	L117
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
	je	L117
	call	abort
L117:
	movl	-20(%rbp), %eax
	cltq
	movl	ints(,%rax,4), %eax
	testl	%eax, %eax
	je	L118
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
	je	L118
	call	abort
L118:
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
	je	L119
	call	abort
L119:
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
	je	L120
	call	abort
L120:
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
	je	L121
	call	abort
L121:
	addl	$1, -20(%rbp)
L115:
	movl	-20(%rbp), %eax
	cmpl	$12, %eax
	jbe	L122
	movl	$0, -20(%rbp)
	jmp	L123
L130:
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
	je	L124
	call	abort
L124:
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	testq	%rax, %rax
	je	L125
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
	je	L125
	call	abort
L125:
	movl	-20(%rbp), %eax
	cltq
	movq	longs(,%rax,8), %rax
	testq	%rax, %rax
	je	L126
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
	je	L126
	call	abort
L126:
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
	je	L127
	call	abort
L127:
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
	je	L128
	call	abort
L128:
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
	je	L129
	call	abort
L129:
	addl	$1, -20(%rbp)
L123:
	movl	-20(%rbp), %eax
	cmpl	$12, %eax
	jbe	L130
	movl	$0, -20(%rbp)
	jmp	L131
L138:
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
	je	L132
	call	abort
L132:
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	testq	%rax, %rax
	je	L133
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
	je	L133
	call	abort
L133:
	movl	-20(%rbp), %eax
	cltq
	movq	longlongs(,%rax,8), %rax
	testq	%rax, %rax
	je	L134
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
	je	L134
	call	abort
L134:
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
	je	L135
	call	abort
L135:
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
	je	L136
	call	abort
L136:
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
	je	L137
	call	abort
L137:
	addl	$1, -20(%rbp)
L131:
	movl	-20(%rbp), %eax
	cmpl	$12, %eax
	jbe	L138
	movl	$0, %edi
	call	my_ffs
	testl	%eax, %eax
	je	L139
	call	abort
L139:
	movl	$0, %edi
	call	my_clrsb
	cmpl	$31, %eax
	je	L140
	call	abort
L140:
	movl	$0, %edi
	call	my_popcount
	testl	%eax, %eax
	je	L141
	call	abort
L141:
	movl	$0, %edi
	call	my_parity
	testl	%eax, %eax
	je	L142
	call	abort
L142:
	movl	$1, %edi
	call	my_ffs
	cmpl	$1, %eax
	je	L143
	call	abort
L143:
	movl	$1, %edi
	call	my_clz
	cmpl	$31, %eax
	je	L144
	call	abort
L144:
	movl	$1, %edi
	call	my_ctz
	testl	%eax, %eax
	je	L145
	call	abort
L145:
	movl	$1, %edi
	call	my_clrsb
	cmpl	$30, %eax
	je	L146
	call	abort
L146:
	movl	$1, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L147
	call	abort
L147:
	movl	$1, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L148
	call	abort
L148:
	movl	$-2147483648, %edi
	call	my_ffs
	cmpl	$32, %eax
	je	L149
	call	abort
L149:
	movl	$-2147483648, %edi
	call	my_clz
	testl	%eax, %eax
	je	L150
	call	abort
L150:
	movl	$-2147483648, %edi
	call	my_ctz
	cmpl	$31, %eax
	je	L151
	call	abort
L151:
	movl	$-2147483648, %edi
	call	my_clrsb
	testl	%eax, %eax
	je	L152
	call	abort
L152:
	movl	$-2147483648, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L153
	call	abort
L153:
	movl	$-2147483648, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L154
	call	abort
L154:
	movl	$1073741824, %edi
	call	my_ffs
	cmpl	$31, %eax
	je	L155
	call	abort
L155:
	movl	$1073741824, %edi
	call	my_clz
	cmpl	$1, %eax
	je	L156
	call	abort
L156:
	movl	$1073741824, %edi
	call	my_ctz
	cmpl	$30, %eax
	je	L157
	call	abort
L157:
	movl	$1073741824, %edi
	call	my_clrsb
	testl	%eax, %eax
	je	L158
	call	abort
L158:
	movl	$1073741824, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L159
	call	abort
L159:
	movl	$1073741824, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L160
	call	abort
L160:
	movl	$65536, %edi
	call	my_ffs
	cmpl	$17, %eax
	je	L161
	call	abort
L161:
	movl	$65536, %edi
	call	my_clz
	cmpl	$15, %eax
	je	L162
	call	abort
L162:
	movl	$65536, %edi
	call	my_ctz
	cmpl	$16, %eax
	je	L163
	call	abort
L163:
	movl	$65536, %edi
	call	my_clrsb
	cmpl	$14, %eax
	je	L164
	call	abort
L164:
	movl	$65536, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L165
	call	abort
L165:
	movl	$65536, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L166
	call	abort
L166:
	movl	$32768, %edi
	call	my_ffs
	cmpl	$16, %eax
	je	L167
	call	abort
L167:
	movl	$32768, %edi
	call	my_clz
	cmpl	$16, %eax
	je	L168
	call	abort
L168:
	movl	$32768, %edi
	call	my_ctz
	cmpl	$15, %eax
	je	L169
	call	abort
L169:
	movl	$32768, %edi
	call	my_clrsb
	cmpl	$15, %eax
	je	L170
	call	abort
L170:
	movl	$32768, %edi
	call	my_popcount
	cmpl	$1, %eax
	je	L171
	call	abort
L171:
	movl	$32768, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L172
	call	abort
L172:
	movl	$-1515870811, %edi
	call	my_ffs
	cmpl	$1, %eax
	je	L173
	call	abort
L173:
	movl	$-1515870811, %edi
	call	my_clz
	testl	%eax, %eax
	je	L174
	call	abort
L174:
	movl	$-1515870811, %edi
	call	my_ctz
	testl	%eax, %eax
	je	L175
	call	abort
L175:
	movl	$-1515870811, %edi
	call	my_clrsb
	testl	%eax, %eax
	je	L176
	call	abort
L176:
	movl	$-1515870811, %edi
	call	my_popcount
	cmpl	$16, %eax
	je	L177
	call	abort
L177:
	movl	$-1515870811, %edi
	call	my_parity
	testl	%eax, %eax
	je	L178
	call	abort
L178:
	movl	$1515870810, %edi
	call	my_ffs
	cmpl	$2, %eax
	je	L179
	call	abort
L179:
	movl	$1515870810, %edi
	call	my_clz
	cmpl	$1, %eax
	je	L180
	call	abort
L180:
	movl	$1515870810, %edi
	call	my_ctz
	cmpl	$1, %eax
	je	L181
	call	abort
L181:
	movl	$1515870810, %edi
	call	my_clrsb
	testl	%eax, %eax
	je	L182
	call	abort
L182:
	movl	$1515870810, %edi
	call	my_popcount
	cmpl	$16, %eax
	je	L183
	call	abort
L183:
	movl	$1515870810, %edi
	call	my_parity
	testl	%eax, %eax
	je	L184
	call	abort
L184:
	movl	$-889323520, %edi
	call	my_ffs
	cmpl	$18, %eax
	je	L185
	call	abort
L185:
	movl	$-889323520, %edi
	call	my_clz
	testl	%eax, %eax
	je	L186
	call	abort
L186:
	movl	$-889323520, %edi
	call	my_ctz
	cmpl	$17, %eax
	je	L187
	call	abort
L187:
	movl	$-889323520, %edi
	call	my_clrsb
	cmpl	$1, %eax
	je	L188
	call	abort
L188:
	movl	$-889323520, %edi
	call	my_popcount
	cmpl	$11, %eax
	je	L189
	call	abort
L189:
	movl	$-889323520, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L190
	call	abort
L190:
	movl	$13303296, %edi
	call	my_ffs
	cmpl	$10, %eax
	je	L191
	call	abort
L191:
	movl	$13303296, %edi
	call	my_clz
	cmpl	$8, %eax
	je	L192
	call	abort
L192:
	movl	$13303296, %edi
	call	my_ctz
	cmpl	$9, %eax
	je	L193
	call	abort
L193:
	movl	$13303296, %edi
	call	my_clrsb
	cmpl	$7, %eax
	je	L194
	call	abort
L194:
	movl	$13303296, %edi
	call	my_popcount
	cmpl	$11, %eax
	je	L195
	call	abort
L195:
	movl	$13303296, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L196
	call	abort
L196:
	movl	$51966, %edi
	call	my_ffs
	cmpl	$2, %eax
	je	L197
	call	abort
L197:
	movl	$51966, %edi
	call	my_clz
	cmpl	$16, %eax
	je	L198
	call	abort
L198:
	movl	$51966, %edi
	call	my_ctz
	cmpl	$1, %eax
	je	L199
	call	abort
L199:
	movl	$51966, %edi
	call	my_clrsb
	cmpl	$15, %eax
	je	L200
	call	abort
L200:
	movl	$51966, %edi
	call	my_popcount
	cmpl	$11, %eax
	je	L201
	call	abort
L201:
	movl	$51966, %edi
	call	my_parity
	cmpl	$1, %eax
	je	L202
	call	abort
L202:
	movl	$-1, %edi
	call	my_ffs
	cmpl	$1, %eax
	je	L203
	call	abort
L203:
	movl	$-1, %edi
	call	my_clz
	testl	%eax, %eax
	je	L204
	call	abort
L204:
	movl	$-1, %edi
	call	my_ctz
	testl	%eax, %eax
	je	L205
	call	abort
L205:
	movl	$-1, %edi
	call	my_clrsb
	cmpl	$31, %eax
	je	L206
	call	abort
L206:
	movl	$-1, %edi
	call	my_popcount
	cmpl	$32, %eax
	je	L207
	call	abort
L207:
	movl	$-1, %edi
	call	my_parity
	testl	%eax, %eax
	je	L208
	call	abort
L208:
	movl	$0, %edi
	call	my_ffsll
	testl	%eax, %eax
	je	L209
	call	abort
L209:
	movl	$0, %edi
	call	my_clrsbll
	cmpl	$63, %eax
	je	L210
	call	abort
L210:
	movl	$0, %edi
	call	my_popcountll
	testl	%eax, %eax
	je	L211
	call	abort
L211:
	movl	$0, %edi
	call	my_parityll
	testl	%eax, %eax
	je	L212
	call	abort
L212:
	movl	$1, %edi
	call	my_ffsll
	cmpl	$1, %eax
	je	L213
	call	abort
L213:
	movl	$1, %edi
	call	my_clzll
	cmpl	$63, %eax
	je	L214
	call	abort
L214:
	movl	$1, %edi
	call	my_ctzll
	testl	%eax, %eax
	je	L215
	call	abort
L215:
	movl	$1, %edi
	call	my_clrsbll
	cmpl	$62, %eax
	je	L216
	call	abort
L216:
	movl	$1, %edi
	call	my_popcountll
	cmpl	$1, %eax
	je	L217
	call	abort
L217:
	movl	$1, %edi
	call	my_parityll
	cmpl	$1, %eax
	je	L218
	call	abort
L218:
	movabsq	$-9223372036854775808, %rdi
	call	my_ffsll
	cmpl	$64, %eax
	je	L219
	call	abort
L219:
	movabsq	$-9223372036854775808, %rdi
	call	my_clzll
	testl	%eax, %eax
	je	L220
	call	abort
L220:
	movabsq	$-9223372036854775808, %rdi
	call	my_ctzll
	cmpl	$63, %eax
	je	L221
	call	abort
L221:
	movabsq	$-9223372036854775808, %rdi
	call	my_clrsbll
	testl	%eax, %eax
	je	L222
	call	abort
L222:
	movabsq	$-9223372036854775808, %rdi
	call	my_popcountll
	cmpl	$1, %eax
	je	L223
	call	abort
L223:
	movabsq	$-9223372036854775808, %rdi
	call	my_parityll
	cmpl	$1, %eax
	je	L224
	call	abort
L224:
	movl	$2, %edi
	call	my_ffsll
	cmpl	$2, %eax
	je	L225
	call	abort
L225:
	movl	$2, %edi
	call	my_clzll
	cmpl	$62, %eax
	je	L226
	call	abort
L226:
	movl	$2, %edi
	call	my_ctzll
	cmpl	$1, %eax
	je	L227
	call	abort
L227:
	movl	$2, %edi
	call	my_clrsbll
	cmpl	$61, %eax
	je	L228
	call	abort
L228:
	movl	$2, %edi
	call	my_popcountll
	cmpl	$1, %eax
	je	L229
	call	abort
L229:
	movl	$2, %edi
	call	my_parityll
	cmpl	$1, %eax
	je	L230
	call	abort
L230:
	movabsq	$4611686018427387904, %rdi
	call	my_ffsll
	cmpl	$63, %eax
	je	L231
	call	abort
L231:
	movabsq	$4611686018427387904, %rdi
	call	my_clzll
	cmpl	$1, %eax
	je	L232
	call	abort
L232:
	movabsq	$4611686018427387904, %rdi
	call	my_ctzll
	cmpl	$62, %eax
	je	L233
	call	abort
L233:
	movabsq	$4611686018427387904, %rdi
	call	my_clrsbll
	testl	%eax, %eax
	je	L234
	call	abort
L234:
	movabsq	$4611686018427387904, %rdi
	call	my_popcountll
	cmpl	$1, %eax
	je	L235
	call	abort
L235:
	movabsq	$4611686018427387904, %rdi
	call	my_parityll
	cmpl	$1, %eax
	je	L236
	call	abort
L236:
	movabsq	$4294967296, %rdi
	call	my_ffsll
	cmpl	$33, %eax
	je	L237
	call	abort
L237:
	movabsq	$4294967296, %rdi
	call	my_clzll
	cmpl	$31, %eax
	je	L238
	call	abort
L238:
	movabsq	$4294967296, %rdi
	call	my_ctzll
	cmpl	$32, %eax
	je	L239
	call	abort
L239:
	movabsq	$4294967296, %rdi
	call	my_clrsbll
	cmpl	$30, %eax
	je	L240
	call	abort
L240:
	movabsq	$4294967296, %rdi
	call	my_popcountll
	cmpl	$1, %eax
	je	L241
	call	abort
L241:
	movabsq	$4294967296, %rdi
	call	my_parityll
	cmpl	$1, %eax
	je	L242
	call	abort
L242:
	movl	$2147483648, %edi
	call	my_ffsll
	cmpl	$32, %eax
	je	L243
	call	abort
L243:
	movl	$2147483648, %edi
	call	my_clzll
	cmpl	$32, %eax
	je	L244
	call	abort
L244:
	movl	$2147483648, %edi
	call	my_ctzll
	cmpl	$31, %eax
	je	L245
	call	abort
L245:
	movl	$2147483648, %edi
	call	my_clrsbll
	cmpl	$31, %eax
	je	L246
	call	abort
L246:
	movl	$2147483648, %edi
	call	my_popcountll
	cmpl	$1, %eax
	je	L247
	call	abort
L247:
	movl	$2147483648, %edi
	call	my_parityll
	cmpl	$1, %eax
	je	L248
	call	abort
L248:
	movabsq	$-6510615555426900571, %rdi
	call	my_ffsll
	cmpl	$1, %eax
	je	L249
	call	abort
L249:
	movabsq	$-6510615555426900571, %rdi
	call	my_clzll
	testl	%eax, %eax
	je	L250
	call	abort
L250:
	movabsq	$-6510615555426900571, %rdi
	call	my_ctzll
	testl	%eax, %eax
	je	L251
	call	abort
L251:
	movabsq	$-6510615555426900571, %rdi
	call	my_clrsbll
	testl	%eax, %eax
	je	L252
	call	abort
L252:
	movabsq	$-6510615555426900571, %rdi
	call	my_popcountll
	cmpl	$32, %eax
	je	L253
	call	abort
L253:
	movabsq	$-6510615555426900571, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L254
	call	abort
L254:
	movabsq	$6510615555426900570, %rdi
	call	my_ffsll
	cmpl	$2, %eax
	je	L255
	call	abort
L255:
	movabsq	$6510615555426900570, %rdi
	call	my_clzll
	cmpl	$1, %eax
	je	L256
	call	abort
L256:
	movabsq	$6510615555426900570, %rdi
	call	my_ctzll
	cmpl	$1, %eax
	je	L257
	call	abort
L257:
	movabsq	$6510615555426900570, %rdi
	call	my_clrsbll
	testl	%eax, %eax
	je	L258
	call	abort
L258:
	movabsq	$6510615555426900570, %rdi
	call	my_popcountll
	cmpl	$32, %eax
	je	L259
	call	abort
L259:
	movabsq	$6510615555426900570, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L260
	call	abort
L260:
	movabsq	$-3819392241693097984, %rdi
	call	my_ffsll
	cmpl	$34, %eax
	je	L261
	call	abort
L261:
	movabsq	$-3819392241693097984, %rdi
	call	my_clzll
	testl	%eax, %eax
	je	L262
	call	abort
L262:
	movabsq	$-3819392241693097984, %rdi
	call	my_ctzll
	cmpl	$33, %eax
	je	L263
	call	abort
L263:
	movabsq	$-3819392241693097984, %rdi
	call	my_clrsbll
	cmpl	$1, %eax
	je	L264
	call	abort
L264:
	movabsq	$-3819392241693097984, %rdi
	call	my_popcountll
	cmpl	$22, %eax
	je	L265
	call	abort
L265:
	movabsq	$-3819392241693097984, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L266
	call	abort
L266:
	movabsq	$223195676147712, %rdi
	call	my_ffsll
	cmpl	$18, %eax
	je	L267
	call	abort
L267:
	movabsq	$223195676147712, %rdi
	call	my_clzll
	cmpl	$16, %eax
	je	L268
	call	abort
L268:
	movabsq	$223195676147712, %rdi
	call	my_ctzll
	cmpl	$17, %eax
	je	L269
	call	abort
L269:
	movabsq	$223195676147712, %rdi
	call	my_clrsbll
	cmpl	$15, %eax
	je	L270
	call	abort
L270:
	movabsq	$223195676147712, %rdi
	call	my_popcountll
	cmpl	$22, %eax
	je	L271
	call	abort
L271:
	movabsq	$223195676147712, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L272
	call	abort
L272:
	movl	$3405695742, %edi
	call	my_ffsll
	cmpl	$2, %eax
	je	L273
	call	abort
L273:
	movl	$3405695742, %edi
	call	my_clzll
	cmpl	$32, %eax
	je	L274
	call	abort
L274:
	movl	$3405695742, %edi
	call	my_ctzll
	cmpl	$1, %eax
	je	L275
	call	abort
L275:
	movl	$3405695742, %edi
	call	my_clrsbll
	cmpl	$31, %eax
	je	L276
	call	abort
L276:
	movl	$3405695742, %edi
	call	my_popcountll
	cmpl	$22, %eax
	je	L277
	call	abort
L277:
	movl	$3405695742, %edi
	call	my_parityll
	testl	%eax, %eax
	je	L278
	call	abort
L278:
	movq	$-1, %rdi
	call	my_ffsll
	cmpl	$1, %eax
	je	L279
	call	abort
L279:
	movq	$-1, %rdi
	call	my_clzll
	testl	%eax, %eax
	je	L280
	call	abort
L280:
	movq	$-1, %rdi
	call	my_ctzll
	testl	%eax, %eax
	je	L281
	call	abort
L281:
	movq	$-1, %rdi
	call	my_clrsbll
	cmpl	$63, %eax
	je	L282
	call	abort
L282:
	movq	$-1, %rdi
	call	my_popcountll
	cmpl	$64, %eax
	je	L283
	call	abort
L283:
	movq	$-1, %rdi
	call	my_parityll
	testl	%eax, %eax
	je	L284
	call	abort
L284:
	movl	$0, %edi
	call	exit
