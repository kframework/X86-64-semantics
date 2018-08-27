	.file	"compare-fp-1.c"
	.text
	.globl	strchr
	.type	strchr, @function
strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	cmpb	%dl, %al
	je	.L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L1
.L3:
	movq	-8(%rbp), %rax
	jmp	.L1
.L6:
.L1:
	popq	%rbp
	ret
	.size	strchr, .-strchr
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L12:
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
	jne	.L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L15
.L17:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L17
.L16:
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
	.size	strcmp, .-strcmp
	.globl	memcmp
	.type	memcmp, @function
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
	jmp	.L20
.L23:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L21
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L22
.L21:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L20:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movl	$0, %eax
.L22:
	popq	%rbp
	ret
	.size	memcmp, .-memcmp
	.globl	exit
	.type	exit, @function
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
#APP
# 41 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	ret
	.size	exit, .-exit
	.globl	abort
	.type	abort, @function
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 46 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	ret
	.size	abort, .-abort
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L27
.L28:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L27:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L28
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	memcpy
	.type	memcpy, @function
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
	jmp	.L31
.L32:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L31:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L32
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	malloc
	.type	malloc, @function
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	malloc, .-malloc
	.globl	calloc
	.type	calloc, @function
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	calloc, .-calloc
	.globl	free
	.type	free, @function
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	ret
	.size	free, .-free
	.globl	isprint
	.type	isprint, @function
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	.L40
	cmpl	$122, -4(%rbp)
	jg	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	cmpl	$64, -4(%rbp)
	jle	.L42
	cmpl	$90, -4(%rbp)
	jg	.L42
	movl	$1, %eax
	jmp	.L41
.L42:
	cmpl	$47, -4(%rbp)
	jle	.L43
	cmpl	$57, -4(%rbp)
	jg	.L43
	movl	$1, %eax
	jmp	.L41
.L43:
	movl	$0, %eax
.L41:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.comm	pinf,4,4
	.comm	ninf,4,4
	.comm	NaN,4,4
	.globl	iuneq
	.type	iuneq, @function
iuneq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L45
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L46
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L46
.L45:
	movl	$1, %eax
	jmp	.L48
.L46:
	movl	$0, %eax
.L48:
	cmpl	-12(%rbp), %eax
	je	.L49
	call	abort
.L49:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	sete	%al
	movzbl	%al, %eax
	cmpl	-12(%rbp), %eax
	je	.L50
	call	abort
.L50:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L51
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L52
.L51:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L54
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L52
.L54:
	movl	$1, %eax
	jmp	.L56
.L52:
	movl	$0, %eax
.L56:
	cmpl	-12(%rbp), %eax
	je	.L57
	call	abort
.L57:
	nop
	leave
	ret
	.size	iuneq, .-iuneq
	.globl	ieq
	.type	ieq, @function
ieq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L59
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L60
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L59
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L59
.L60:
	movl	$1, %eax
	jmp	.L62
.L59:
	movl	$0, %eax
.L62:
	cmpl	-12(%rbp), %eax
	je	.L63
	call	abort
.L63:
	nop
	leave
	ret
	.size	ieq, .-ieq
	.globl	iltgt
	.type	iltgt, @function
iltgt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L65
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L75
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L65
.L75:
	movl	$1, %eax
	jmp	.L67
.L65:
	movl	$0, %eax
.L67:
	cmpl	-12(%rbp), %eax
	je	.L68
	call	abort
.L68:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	sete	%al
	xorl	$1, %eax
	movzbl	%al, %eax
	cmpl	-12(%rbp), %eax
	je	.L69
	call	abort
.L69:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L70
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L71
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L71
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L71
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L70
.L71:
	movl	$1, %eax
	jmp	.L73
.L70:
	movl	$0, %eax
.L73:
	cmpl	-12(%rbp), %eax
	je	.L74
	call	abort
.L74:
	nop
	leave
	ret
	.size	iltgt, .-iltgt
	.globl	ine
	.type	ine, @function
ine:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L77
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L77
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L77
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L82
.L77:
	movl	$1, %eax
	jmp	.L80
.L82:
	movl	$0, %eax
.L80:
	cmpl	-12(%rbp), %eax
	je	.L81
	call	abort
.L81:
	nop
	leave
	ret
	.size	ine, .-ine
	.globl	iunlt
	.type	iunlt, @function
iunlt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L84
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	.L94
.L84:
	movl	$1, %eax
	jmp	.L87
.L94:
	movl	$0, %eax
.L87:
	cmpl	-12(%rbp), %eax
	je	.L88
	call	abort
.L88:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L89
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	.L95
.L89:
	movl	$1, %eax
	jmp	.L92
.L95:
	movl	$0, %eax
.L92:
	cmpl	-12(%rbp), %eax
	je	.L93
	call	abort
.L93:
	nop
	leave
	ret
	.size	iunlt, .-iunlt
	.globl	ilt
	.type	ilt, @function
ilt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L97
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L98
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	.L97
.L98:
	movl	$1, %eax
	jmp	.L100
.L97:
	movl	$0, %eax
.L100:
	cmpl	-12(%rbp), %eax
	je	.L101
	call	abort
.L101:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L102
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L123
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L102
.L123:
	movl	$1, %eax
	jmp	.L105
.L102:
	movl	$0, %eax
.L105:
	cmpl	-12(%rbp), %eax
	je	.L106
	call	abort
.L106:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L107
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L125
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L107
.L125:
	movl	$1, %eax
	jmp	.L110
.L107:
	movl	$0, %eax
.L110:
	cmpl	-12(%rbp), %eax
	je	.L111
	call	abort
.L111:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L126
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L112
.L126:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L112
	movl	$1, %eax
	jmp	.L115
.L112:
	movl	$0, %eax
.L115:
	cmpl	-12(%rbp), %eax
	je	.L116
	call	abort
.L116:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L128
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L117
.L128:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L117
	movl	$1, %eax
	jmp	.L120
.L117:
	movl	$0, %eax
.L120:
	cmpl	-12(%rbp), %eax
	je	.L121
	call	abort
.L121:
	nop
	leave
	ret
	.size	ilt, .-ilt
	.globl	iunle
	.type	iunle, @function
iunle:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L131
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L141
.L131:
	movl	$1, %eax
	jmp	.L134
.L141:
	movl	$0, %eax
.L134:
	cmpl	-12(%rbp), %eax
	je	.L135
	call	abort
.L135:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L136
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L142
.L136:
	movl	$1, %eax
	jmp	.L139
.L142:
	movl	$0, %eax
.L139:
	cmpl	-12(%rbp), %eax
	je	.L140
	call	abort
.L140:
	nop
	leave
	ret
	.size	iunle, .-iunle
	.globl	ile
	.type	ile, @function
ile:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L144
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L145
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L144
.L145:
	movl	$1, %eax
	jmp	.L147
.L144:
	movl	$0, %eax
.L147:
	cmpl	-12(%rbp), %eax
	je	.L148
	call	abort
.L148:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L149
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L150
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L150
.L149:
	movl	$1, %eax
	jmp	.L152
.L150:
	movl	$0, %eax
.L152:
	cmpl	-12(%rbp), %eax
	je	.L153
	call	abort
.L153:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L154
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L155
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L155
.L154:
	movl	$1, %eax
	jmp	.L157
.L155:
	movl	$0, %eax
.L157:
	cmpl	-12(%rbp), %eax
	je	.L158
	call	abort
.L158:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L171
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L159
.L171:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	.L173
.L159:
	movl	$1, %eax
	jmp	.L163
.L173:
	movl	$0, %eax
.L163:
	cmpl	-12(%rbp), %eax
	je	.L164
	call	abort
.L164:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L172
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L165
.L172:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	.L174
.L165:
	movl	$1, %eax
	jmp	.L169
.L174:
	movl	$0, %eax
.L169:
	cmpl	-12(%rbp), %eax
	je	.L170
	call	abort
.L170:
	nop
	leave
	ret
	.size	ile, .-ile
	.globl	iungt
	.type	iungt, @function
iungt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L176
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L186
.L176:
	movl	$1, %eax
	jmp	.L179
.L186:
	movl	$0, %eax
.L179:
	cmpl	-12(%rbp), %eax
	je	.L180
	call	abort
.L180:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L181
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L187
.L181:
	movl	$1, %eax
	jmp	.L184
.L187:
	movl	$0, %eax
.L184:
	cmpl	-12(%rbp), %eax
	je	.L185
	call	abort
.L185:
	nop
	leave
	ret
	.size	iungt, .-iungt
	.globl	igt
	.type	igt, @function
igt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L189
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L190
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L189
.L190:
	movl	$1, %eax
	jmp	.L192
.L189:
	movl	$0, %eax
.L192:
	cmpl	-12(%rbp), %eax
	je	.L193
	call	abort
.L193:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L194
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L215
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L194
.L215:
	movl	$1, %eax
	jmp	.L197
.L194:
	movl	$0, %eax
.L197:
	cmpl	-12(%rbp), %eax
	je	.L198
	call	abort
.L198:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L199
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L217
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L199
.L217:
	movl	$1, %eax
	jmp	.L202
.L199:
	movl	$0, %eax
.L202:
	cmpl	-12(%rbp), %eax
	je	.L203
	call	abort
.L203:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L218
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L204
.L218:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L204
	movl	$1, %eax
	jmp	.L207
.L204:
	movl	$0, %eax
.L207:
	cmpl	-12(%rbp), %eax
	je	.L208
	call	abort
.L208:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L220
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L209
.L220:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L209
	movl	$1, %eax
	jmp	.L212
.L209:
	movl	$0, %eax
.L212:
	cmpl	-12(%rbp), %eax
	je	.L213
	call	abort
.L213:
	nop
	leave
	ret
	.size	igt, .-igt
	.globl	iunge
	.type	iunge, @function
iunge:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L223
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L233
.L223:
	movl	$1, %eax
	jmp	.L226
.L233:
	movl	$0, %eax
.L226:
	cmpl	-12(%rbp), %eax
	je	.L227
	call	abort
.L227:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L228
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L234
.L228:
	movl	$1, %eax
	jmp	.L231
.L234:
	movl	$0, %eax
.L231:
	cmpl	-12(%rbp), %eax
	je	.L232
	call	abort
.L232:
	nop
	leave
	ret
	.size	iunge, .-iunge
	.globl	ige
	.type	ige, @function
ige:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	%edi, -12(%rbp)
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L236
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L237
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L236
.L237:
	movl	$1, %eax
	jmp	.L239
.L236:
	movl	$0, %eax
.L239:
	cmpl	-12(%rbp), %eax
	je	.L240
	call	abort
.L240:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L241
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L242
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L242
.L241:
	movl	$1, %eax
	jmp	.L244
.L242:
	movl	$0, %eax
.L244:
	cmpl	-12(%rbp), %eax
	je	.L245
	call	abort
.L245:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L246
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L247
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L247
.L246:
	movl	$1, %eax
	jmp	.L249
.L247:
	movl	$0, %eax
.L249:
	cmpl	-12(%rbp), %eax
	je	.L250
	call	abort
.L250:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L263
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L251
.L263:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L265
.L251:
	movl	$1, %eax
	jmp	.L255
.L265:
	movl	$0, %eax
.L255:
	cmpl	-12(%rbp), %eax
	je	.L256
	call	abort
.L256:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L264
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L257
.L264:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L266
.L257:
	movl	$1, %eax
	jmp	.L261
.L266:
	movl	$0, %eax
.L261:
	cmpl	-12(%rbp), %eax
	je	.L262
	call	abort
.L262:
	nop
	leave
	ret
	.size	ige, .-ige
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	.LC0(%rip), %xmm0
	vmovss	%xmm0, pinf(%rip)
	vmovss	.LC1(%rip), %xmm0
	vmovss	%xmm0, ninf(%rip)
	vmovss	.LC2(%rip), %xmm0
	vmovss	%xmm0, NaN(%rip)
	vmovss	pinf(%rip), %xmm0
	movl	ninf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iuneq
	vmovss	NaN(%rip), %xmm0
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iuneq
	vmovss	ninf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iuneq
	movl	$0, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	iuneq
	movl	$1, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	iuneq
	movl	$0, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	iuneq
	movl	$0, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	ieq
	movl	$1, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	ieq
	movl	$0, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	ieq
	vmovss	pinf(%rip), %xmm0
	movl	ninf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iltgt
	vmovss	NaN(%rip), %xmm0
	movl	NaN(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iltgt
	vmovss	ninf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iltgt
	movl	$1, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	iltgt
	movl	$0, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	iltgt
	movl	$1, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	iltgt
	movl	$1, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	ine
	movl	$0, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	ine
	movl	$1, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	ine
	vmovss	ninf(%rip), %xmm0
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	vmovss	NaN(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	vmovss	ninf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	vmovss	pinf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	vmovss	ninf(%rip), %xmm0
	movl	ninf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunlt
	movl	$1, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	iunlt
	movl	$0, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	iunlt
	movl	$0, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	iunlt
	movl	$1, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	ilt
	movl	$0, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	ilt
	movl	$0, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	ilt
	vmovss	ninf(%rip), %xmm0
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	vmovss	NaN(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	vmovss	ninf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	vmovss	pinf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	vmovss	ninf(%rip), %xmm0
	movl	ninf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunle
	movl	$1, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	iunle
	movl	$1, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	iunle
	movl	$0, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	iunle
	movl	$1, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	ile
	movl	$1, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	ile
	movl	$0, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	ile
	vmovss	ninf(%rip), %xmm0
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	vmovss	NaN(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	vmovss	ninf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	vmovss	pinf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	vmovss	ninf(%rip), %xmm0
	movl	ninf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iungt
	movl	$0, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	iungt
	movl	$0, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	iungt
	movl	$1, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	iungt
	movl	$0, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	igt
	movl	$0, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	igt
	movl	$1, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	igt
	vmovss	ninf(%rip), %xmm0
	movl	NaN(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	vmovss	NaN(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	vmovss	pinf(%rip), %xmm0
	movl	ninf(%rip), %eax
	movl	$0, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	vmovss	pinf(%rip), %xmm0
	movl	pinf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	vmovss	ninf(%rip), %xmm0
	movl	ninf(%rip), %eax
	movl	$1, %edi
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	call	iunge
	movl	$0, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	iunge
	movl	$1, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	iunge
	movl	$1, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	iunge
	movl	$0, %edi
	vmovss	.LC3(%rip), %xmm1
	vmovss	.LC4(%rip), %xmm0
	call	ige
	movl	$1, %edi
	vmovss	.LC5(%rip), %xmm1
	vmovss	.LC5(%rip), %xmm0
	call	ige
	movl	$1, %edi
	vmovss	.LC6(%rip), %xmm1
	vmovss	.LC7(%rip), %xmm0
	call	ige
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	2139095040
	.align 4
.LC1:
	.long	4286578688
	.align 4
.LC2:
	.long	2143289344
	.align 4
.LC3:
	.long	1082130432
	.align 4
.LC4:
	.long	1065353216
	.align 4
.LC5:
	.long	1077936128
	.align 4
.LC6:
	.long	1073741824
	.align 4
.LC7:
	.long	1084227584
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
