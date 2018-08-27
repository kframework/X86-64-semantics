	.file	"compare-fp-4.c"
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L45
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L45
	movl	$1, %eax
	jmp	.L48
.L45:
	movl	$0, %eax
.L48:
	cmpl	-12(%rbp), %eax
	je	.L49
	call	abort
.L49:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L50
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L50
	movl	$1, %eax
	jmp	.L53
.L50:
	movl	$0, %eax
.L53:
	cmpl	-12(%rbp), %eax
	je	.L54
	call	abort
.L54:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jnb	.L55
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L56
.L55:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnb	.L57
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L56
.L57:
	movl	$1, %eax
	jmp	.L58
.L56:
	movl	$0, %eax
.L58:
	cmpl	-12(%rbp), %eax
	je	.L59
	call	abort
.L59:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L65
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L66
.L65:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L66
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L66
	movl	$1, %eax
	jmp	.L70
.L66:
	movl	$0, %eax
.L70:
	cmpl	-12(%rbp), %eax
	je	.L71
	call	abort
.L71:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L75
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L91
.L75:
	movl	$1, %eax
	jmp	.L78
.L91:
	movl	$0, %eax
.L78:
	cmpl	-12(%rbp), %eax
	je	.L79
	call	abort
.L79:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L80
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L92
.L80:
	movl	$1, %eax
	jmp	.L83
.L92:
	movl	$0, %eax
.L83:
	cmpl	-12(%rbp), %eax
	je	.L84
	call	abort
.L84:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L85
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L86
.L85:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L88
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L88
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L88
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L86
.L88:
	movl	$1, %eax
	jmp	.L89
.L86:
	movl	$0, %eax
.L89:
	cmpl	-12(%rbp), %eax
	je	.L90
	call	abort
.L90:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L94
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L94
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L94
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L95
.L94:
	movl	$1, %eax
	jmp	.L96
.L95:
	movl	$0, %eax
.L96:
	cmpl	-12(%rbp), %eax
	je	.L97
	call	abort
.L97:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L98
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L98
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L99
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnb	.L99
.L98:
	movl	$1, %eax
	jmp	.L102
.L99:
	movl	$0, %eax
.L102:
	cmpl	-12(%rbp), %eax
	je	.L103
	call	abort
.L103:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L106
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L107
.L106:
	movl	$1, %eax
	jmp	.L108
.L107:
	movl	$0, %eax
.L108:
	cmpl	-12(%rbp), %eax
	je	.L109
	call	abort
.L109:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L110
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L112
.L110:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	.L118
.L112:
	movl	$1, %eax
	jmp	.L115
.L118:
	movl	$0, %eax
.L115:
	cmpl	-12(%rbp), %eax
	je	.L116
	call	abort
.L116:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L120
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L121
.L120:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L123
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L121
.L123:
	movl	$1, %eax
	jmp	.L124
.L121:
	movl	$0, %eax
.L124:
	cmpl	-12(%rbp), %eax
	je	.L125
	call	abort
.L125:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L126
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L147
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L126
.L147:
	movl	$1, %eax
	jmp	.L129
.L126:
	movl	$0, %eax
.L129:
	cmpl	-12(%rbp), %eax
	je	.L130
	call	abort
.L130:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L131
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L149
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L131
.L149:
	movl	$1, %eax
	jmp	.L134
.L131:
	movl	$0, %eax
.L134:
	cmpl	-12(%rbp), %eax
	je	.L135
	call	abort
.L135:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L150
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L136
.L150:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L136
	movl	$1, %eax
	jmp	.L139
.L136:
	movl	$0, %eax
.L139:
	cmpl	-12(%rbp), %eax
	je	.L140
	call	abort
.L140:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L152
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L141
.L152:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L141
	movl	$1, %eax
	jmp	.L144
.L141:
	movl	$0, %eax
.L144:
	cmpl	-12(%rbp), %eax
	je	.L145
	call	abort
.L145:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jnb	.L155
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L156
.L155:
	movl	$1, %eax
	jmp	.L157
.L156:
	movl	$0, %eax
.L157:
	cmpl	-12(%rbp), %eax
	je	.L158
	call	abort
.L158:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L159
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L161
.L159:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jb	.L167
.L161:
	movl	$1, %eax
	jmp	.L164
.L167:
	movl	$0, %eax
.L164:
	cmpl	-12(%rbp), %eax
	je	.L165
	call	abort
.L165:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L169
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L170
.L169:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jnb	.L172
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L170
.L172:
	movl	$1, %eax
	jmp	.L173
.L170:
	movl	$0, %eax
.L173:
	cmpl	-12(%rbp), %eax
	je	.L174
	call	abort
.L174:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L175
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L176
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L176
.L175:
	movl	$1, %eax
	jmp	.L178
.L176:
	movl	$0, %eax
.L178:
	cmpl	-12(%rbp), %eax
	je	.L179
	call	abort
.L179:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L180
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L181
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L181
.L180:
	movl	$1, %eax
	jmp	.L183
.L181:
	movl	$0, %eax
.L183:
	cmpl	-12(%rbp), %eax
	je	.L184
	call	abort
.L184:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L197
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L185
.L197:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	.L199
.L185:
	movl	$1, %eax
	jmp	.L189
.L199:
	movl	$0, %eax
.L189:
	cmpl	-12(%rbp), %eax
	je	.L190
	call	abort
.L190:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L198
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L191
.L198:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jbe	.L200
.L191:
	movl	$1, %eax
	jmp	.L195
.L200:
	movl	$0, %eax
.L195:
	cmpl	-12(%rbp), %eax
	je	.L196
	call	abort
.L196:
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
	ja	.L202
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L203
.L202:
	movl	$1, %eax
	jmp	.L204
.L203:
	movl	$0, %eax
.L204:
	cmpl	-12(%rbp), %eax
	je	.L205
	call	abort
.L205:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L206
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L208
.L206:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L214
.L208:
	movl	$1, %eax
	jmp	.L211
.L214:
	movl	$0, %eax
.L211:
	cmpl	-12(%rbp), %eax
	je	.L212
	call	abort
.L212:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L216
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L217
.L216:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L219
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L217
.L219:
	movl	$1, %eax
	jmp	.L220
.L217:
	movl	$0, %eax
.L220:
	cmpl	-12(%rbp), %eax
	je	.L221
	call	abort
.L221:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L222
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L243
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L222
.L243:
	movl	$1, %eax
	jmp	.L225
.L222:
	movl	$0, %eax
.L225:
	cmpl	-12(%rbp), %eax
	je	.L226
	call	abort
.L226:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L227
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L245
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L227
.L245:
	movl	$1, %eax
	jmp	.L230
.L227:
	movl	$0, %eax
.L230:
	cmpl	-12(%rbp), %eax
	je	.L231
	call	abort
.L231:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L246
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L232
.L246:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L232
	movl	$1, %eax
	jmp	.L235
.L232:
	movl	$0, %eax
.L235:
	cmpl	-12(%rbp), %eax
	je	.L236
	call	abort
.L236:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L248
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L237
.L248:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L237
	movl	$1, %eax
	jmp	.L240
.L237:
	movl	$0, %eax
.L240:
	cmpl	-12(%rbp), %eax
	je	.L241
	call	abort
.L241:
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
	jnb	.L251
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L252
.L251:
	movl	$1, %eax
	jmp	.L253
.L252:
	movl	$0, %eax
.L253:
	cmpl	-12(%rbp), %eax
	je	.L254
	call	abort
.L254:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L255
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L257
.L255:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L263
.L257:
	movl	$1, %eax
	jmp	.L260
.L263:
	movl	$0, %eax
.L260:
	cmpl	-12(%rbp), %eax
	je	.L261
	call	abort
.L261:
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
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	ja	.L265
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jb	.L266
.L265:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnb	.L268
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jnp	.L266
.L268:
	movl	$1, %eax
	jmp	.L269
.L266:
	movl	$0, %eax
.L269:
	cmpl	-12(%rbp), %eax
	je	.L270
	call	abort
.L270:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L271
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L272
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L272
.L271:
	movl	$1, %eax
	jmp	.L274
.L272:
	movl	$0, %eax
.L274:
	cmpl	-12(%rbp), %eax
	je	.L275
	call	abort
.L275:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	ja	.L276
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L277
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jne	.L277
.L276:
	movl	$1, %eax
	jmp	.L279
.L277:
	movl	$0, %eax
.L279:
	cmpl	-12(%rbp), %eax
	je	.L280
	call	abort
.L280:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jp	.L293
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	je	.L281
.L293:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L295
.L281:
	movl	$1, %eax
	jmp	.L285
.L295:
	movl	$0, %eax
.L285:
	cmpl	-12(%rbp), %eax
	je	.L286
	call	abort
.L286:
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	jp	.L294
	vmovss	-8(%rbp), %xmm0
	vucomiss	-4(%rbp), %xmm0
	je	.L287
.L294:
	vmovss	-4(%rbp), %xmm0
	vucomiss	-8(%rbp), %xmm0
	jbe	.L296
.L287:
	movl	$1, %eax
	jmp	.L291
.L296:
	movl	$0, %eax
.L291:
	cmpl	-12(%rbp), %eax
	je	.L292
	call	abort
.L292:
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
