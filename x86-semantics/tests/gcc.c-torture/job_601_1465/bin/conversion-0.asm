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
u2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	testq	%rax, %rax
	js	L40
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	jmp	L42
L40:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm2
	vmovd	%xmm2, %eax
L42:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
u2d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	testq	%rax, %rax
	js	L44
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	jmp	L46
L44:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm2
	vmovq	%xmm2, %rax
L46:
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
u2ld:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movq	%rax, -32(%rbp)
	fildq	-32(%rbp)
	fstpt	-32(%rbp)
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	fldt	-32(%rbp)
	popq	%rbp
	ret
s2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	-4(%rbp), %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
s2d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
s2ld:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	fildl	-4(%rbp)
	popq	%rbp
	ret
fnear:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -20(%rbp)
	vmovss	%xmm1, -24(%rbp)
	movl	-20(%rbp), %eax
	vmovd	%eax, %xmm3
	vsubss	-24(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -4(%rbp)
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	jp	L62
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	je	L56
L62:
	movl	-20(%rbp), %eax
	vmovd	%eax, %xmm7
	vdivss	-4(%rbp), %xmm7, %xmm6
	vmovd	%xmm6, %eax
	vmovd	%eax, %xmm0
	vucomiss	LC2(%rip), %xmm0
	jbe	L63
L56:
	movl	$1, %eax
	jmp	L60
L63:
	movl	$0, %eax
L60:
	popq	%rbp
	ret
dnear:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	%xmm1, -32(%rbp)
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm3
	vsubsd	-32(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	vmovq	%rax, %xmm4
	vucomisd	-8(%rbp), %xmm4
	jp	L71
	movl	$0, %eax
	vmovq	%rax, %xmm5
	vucomisd	-8(%rbp), %xmm5
	je	L65
L71:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vdivsd	-8(%rbp), %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm0
	vucomisd	LC4(%rip), %xmm0
	jbe	L72
L65:
	movl	$1, %eax
	jmp	L69
L72:
	movl	$0, %eax
L69:
	popq	%rbp
	ret
ldnear:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fldt	32(%rbp)
	fsubrp	%st, %st(1)
	fstpt	-16(%rbp)
	fldt	-16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L80
	fldt	-16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L74
L80:
	fldt	16(%rbp)
	fldt	-16(%rbp)
	fdivrp	%st, %st(1)
	fldt	LC6(%rip)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	L81
L74:
	movl	$1, %eax
	jmp	L78
L81:
	movl	$0, %eax
L78:
	popq	%rbp
	ret
test_integer_to_float:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	u2f
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L119
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L131
L119:
	call	abort
L131:
	movl	$-1, %edi
	movl	$0, %eax
	call	u2f
	vmovd	%xmm0, %eax
	vmovss	LC7(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L85
	call	abort
L85:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	u2f
	vmovd	%xmm0, %eax
	vmovss	LC8(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L86
	call	abort
L86:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm6
	vucomiss	LC8(%rip), %xmm6
	jp	L120
	vmovd	%eax, %xmm7
	vucomiss	LC8(%rip), %xmm7
	je	L132
L120:
	call	abort
L132:
	movl	$0, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L121
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L133
L121:
	call	abort
L133:
	movl	$-1, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	movabsq	$4751297606873776128, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L91
	call	abort
L91:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	movabsq	$4746794007244308480, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L92
	call	abort
L92:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC11(%rip), %xmm6
	jp	L122
	vmovq	%rax, %xmm7
	vucomisd	LC11(%rip), %xmm7
	je	L134
L122:
	call	abort
L134:
	movl	$0, %edi
	movl	$0, %eax
	call	u2ld
	fldz
	fucomip	%st(1), %st
	jp	L143
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L135
	jmp	L123
L143:
	fstp	%st(0)
L123:
	call	abort
L135:
	movl	$-1, %edi
	movl	$0, %eax
	call	u2ld
	movabsq	$-4294967296, %rax
	movl	$16414, %edx
	pushq	%rdx
	pushq	%rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	ldnear
	addq	$32, %rsp
	testl	%eax, %eax
	jne	L97
	call	abort
L97:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	u2ld
	movabsq	$-8589934592, %rax
	movl	$16413, %edx
	pushq	%rdx
	pushq	%rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	ldnear
	addq	$32, %rsp
	testl	%eax, %eax
	jne	L98
	call	abort
L98:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2ld
	fldt	LC14(%rip)
	fucomip	%st(1), %st
	jp	L144
	fldt	LC14(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L136
	jmp	L124
L144:
	fstp	%st(0)
L124:
	call	abort
L136:
	movl	$0, %edi
	movl	$0, %eax
	call	s2f
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L125
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L137
L125:
	call	abort
L137:
	movl	$-1, %edi
	movl	$0, %eax
	call	s2f
	vmovd	%xmm0, %eax
	vmovss	LC15(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L103
	call	abort
L103:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	s2f
	vmovd	%xmm0, %eax
	vmovss	LC8(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L104
	call	abort
L104:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm6
	vucomiss	LC16(%rip), %xmm6
	jp	L126
	vmovd	%eax, %xmm7
	vucomiss	LC16(%rip), %xmm7
	je	L138
L126:
	call	abort
L138:
	movl	$0, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L127
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L139
L127:
	call	abort
L139:
	movl	$-1, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	vmovsd	LC17(%rip), %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L109
	call	abort
L109:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	movabsq	$4746794007244308480, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L110
	call	abort
L110:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC18(%rip), %xmm6
	jp	L128
	vmovq	%rax, %xmm7
	vucomisd	LC18(%rip), %xmm7
	je	L140
L128:
	call	abort
L140:
	movl	$0, %edi
	movl	$0, %eax
	call	s2ld
	fldz
	fucomip	%st(1), %st
	jp	L145
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L141
	jmp	L129
L145:
	fstp	%st(0)
L129:
	call	abort
L141:
	movl	$-1, %edi
	movl	$0, %eax
	call	s2ld
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	ldnear
	addq	$32, %rsp
	testl	%eax, %eax
	jne	L115
	call	abort
L115:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	s2ld
	movabsq	$-8589934592, %rax
	movl	$16413, %edx
	pushq	%rdx
	pushq	%rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	ldnear
	addq	$32, %rsp
	testl	%eax, %eax
	jne	L116
	call	abort
L116:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2ld
	fldt	LC20(%rip)
	fucomip	%st(1), %st
	jp	L146
	fldt	LC20(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L142
	jmp	L130
L146:
	fstp	%st(0)
L130:
	call	abort
L142:
	leave
	ret
ull2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L148
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	jmp	L150
L148:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm2
	vmovd	%xmm2, %eax
L150:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
ull2d:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L152
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	jmp	L154
L152:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm2
	vmovq	%xmm2, %rax
L154:
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
ull2ld:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	fildq	-8(%rbp)
	cmpq	$0, -8(%rbp)
	jns	L157
	fldt	LC21(%rip)
	faddp	%st, %st(1)
L157:
	popq	%rbp
	ret
sll2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	-8(%rbp), %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
sll2d:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	-8(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
sll2ld:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	fildq	-8(%rbp)
	popq	%rbp
	ret
test_longlong_integer_to_float:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	ull2f
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L208
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L227
L208:
	call	abort
L227:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm6
	vucomiss	LC22(%rip), %xmm6
	jp	L209
	vmovd	%eax, %xmm7
	vucomiss	LC22(%rip), %xmm7
	je	L228
L209:
	call	abort
L228:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm2
	vucomiss	LC23(%rip), %xmm2
	jp	L210
	vmovd	%eax, %xmm3
	vucomiss	LC23(%rip), %xmm3
	je	L229
L210:
	call	abort
L229:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm4
	vucomiss	LC23(%rip), %xmm4
	jp	L211
	vmovd	%eax, %xmm5
	vucomiss	LC23(%rip), %xmm5
	je	L230
L211:
	call	abort
L230:
	movl	$0, %edi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L212
	movl	$0, %edx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	je	L231
L212:
	call	abort
L231:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm3
	vucomisd	LC24(%rip), %xmm3
	jp	L213
	vmovq	%rax, %xmm4
	vucomisd	LC24(%rip), %xmm4
	je	L232
L213:
	call	abort
L232:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm5
	vucomisd	LC25(%rip), %xmm5
	jp	L214
	vmovq	%rax, %xmm6
	vucomisd	LC25(%rip), %xmm6
	je	L233
L214:
	call	abort
L233:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm7
	vucomisd	LC25(%rip), %xmm7
	jp	L215
	vmovq	%rax, %xmm1
	vucomisd	LC25(%rip), %xmm1
	je	L234
L215:
	call	abort
L234:
	movl	$0, %edi
	movl	$0, %eax
	call	ull2ld
	fldz
	fucomip	%st(1), %st
	jp	L246
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L235
	jmp	L216
L246:
	fstp	%st(0)
L216:
	call	abort
L235:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2ld
	fldt	LC26(%rip)
	fucomip	%st(1), %st
	jp	L247
	fldt	LC26(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L236
	jmp	L217
L247:
	fstp	%st(0)
L217:
	call	abort
L236:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2ld
	fldt	LC27(%rip)
	fucomip	%st(1), %st
	jp	L248
	fldt	LC27(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L237
	jmp	L218
L248:
	fstp	%st(0)
L218:
	call	abort
L237:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2ld
	fldt	LC28(%rip)
	fucomip	%st(1), %st
	jp	L249
	fldt	LC28(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L238
	jmp	L219
L249:
	fstp	%st(0)
L219:
	call	abort
L238:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2f
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L220
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L239
L220:
	call	abort
L239:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2f
	vmovd	%xmm0, %eax
	movl	LC15(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L221
	movl	LC15(%rip), %edx
	vmovd	%eax, %xmm1
	vmovd	%edx, %xmm2
	vucomiss	%xmm2, %xmm1
	je	L240
L221:
	call	abort
L240:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	sll2f
	vmovd	%xmm0, %eax
	vmovss	LC23(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L193
	call	abort
L193:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	sll2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm3
	vucomiss	LC29(%rip), %xmm3
	jp	L222
	vmovd	%eax, %xmm4
	vucomiss	LC29(%rip), %xmm4
	je	L241
L222:
	call	abort
L241:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	jp	L223
	movl	$0, %edx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm7
	je	L242
L223:
	call	abort
L242:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L224
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L243
L224:
	call	abort
L243:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movabsq	$4890909195324358656, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L200
	call	abort
L200:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movabsq	$-4332462841530417152, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L201
	call	abort
L201:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2ld
	fldz
	fucomip	%st(1), %st
	jp	L250
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L244
	jmp	L225
L250:
	fstp	%st(0)
L225:
	call	abort
L244:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2ld
	fld1
	fchs
	fucomip	%st(1), %st
	jp	L251
	fld1
	fchs
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L245
	jmp	L226
L251:
	fstp	%st(0)
L226:
	call	abort
L245:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	sll2ld
	movq	$-2, %rax
	movl	$16445, %edx
	pushq	%rdx
	pushq	%rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	ldnear
	addq	$32, %rsp
	testl	%eax, %eax
	jne	L206
	call	abort
L206:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	sll2ld
	movabsq	$-9223372036854775808, %rax
	movl	$49214, %edx
	pushq	%rdx
	pushq	%rax
	leaq	-16(%rsp), %rsp
	fstpt	(%rsp)
	call	ldnear
	addq	$32, %rsp
	testl	%eax, %eax
	jne	L207
	call	abort
L207:
	leave
	ret
f2u:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vcvttss2siq	%xmm1, %rax
	popq	%rbp
	ret
d2u:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	popq	%rbp
	ret
ld2u:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
f2s:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vcvttss2si	%xmm1, %eax
	popq	%rbp
	ret
d2s:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2si	%xmm1, %eax
	popq	%rbp
	ret
ld2s:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fisttpl	-4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
test_float_to_integer:
	pushq	%rbp
	movq	%rsp, %rbp
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2u
	testl	%eax, %eax
	je	L265
	call	abort
L265:
	vmovss	LC32(%rip), %xmm0
	call	f2u
	testl	%eax, %eax
	je	L266
	call	abort
L266:
	vmovss	LC33(%rip), %xmm0
	call	f2u
	cmpl	$1, %eax
	je	L267
	call	abort
L267:
	vmovss	LC34(%rip), %xmm0
	call	f2u
	cmpl	$1, %eax
	je	L268
	call	abort
L268:
	vmovss	LC8(%rip), %xmm0
	call	f2u
	cmpl	$2147483647, %eax
	je	L269
	vmovss	LC8(%rip), %xmm0
	call	f2u
	cmpl	$-2147483648, %eax
	je	L269
	call	abort
L269:
	vmovss	LC8(%rip), %xmm0
	call	f2u
	cmpl	$-2147483648, %eax
	je	L270
	call	abort
L270:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2u
	testl	%eax, %eax
	je	L271
	call	abort
L271:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2u
	testl	%eax, %eax
	je	L272
	call	abort
L272:
	vmovsd	LC36(%rip), %xmm0
	call	d2u
	cmpl	$1, %eax
	je	L273
	call	abort
L273:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$1, %eax
	je	L274
	call	abort
L274:
	movabsq	$4751297606873776128, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$-1, %eax
	je	L275
	call	abort
L275:
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$2147483647, %eax
	je	L276
	call	abort
L276:
	movabsq	$4746794007248502784, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$-2147483648, %eax
	je	L277
	call	abort
L277:
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	testl	%eax, %eax
	je	L278
	call	abort
L278:
	movabsq	$-18446744073709568, %rax
	movl	$16382, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	testl	%eax, %eax
	je	L279
	call	abort
L279:
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$1, %eax
	je	L280
	call	abort
L280:
	movabsq	$-92233720368547840, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$1, %eax
	je	L281
	call	abort
L281:
	movabsq	$-4294967296, %rax
	movl	$16414, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$-1, %eax
	je	L282
	call	abort
L282:
	movabsq	$-8589934592, %rax
	movl	$16413, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$2147483647, %eax
	je	L283
	call	abort
L283:
	movabsq	$-9223372036854775808, %rax
	movl	$16414, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$-2147483648, %eax
	je	L284
	call	abort
L284:
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2s
	testl	%eax, %eax
	je	L285
	call	abort
L285:
	vmovss	LC32(%rip), %xmm0
	call	f2s
	testl	%eax, %eax
	je	L286
	call	abort
L286:
	vmovss	LC33(%rip), %xmm0
	call	f2s
	cmpl	$1, %eax
	je	L287
	call	abort
L287:
	vmovss	LC34(%rip), %xmm0
	call	f2s
	cmpl	$1, %eax
	je	L288
	call	abort
L288:
	vmovss	LC41(%rip), %xmm0
	call	f2s
	testl	%eax, %eax
	je	L289
	call	abort
L289:
	vmovss	LC15(%rip), %xmm0
	call	f2s
	cmpl	$-1, %eax
	je	L290
	call	abort
L290:
	vmovss	LC42(%rip), %xmm0
	call	f2s
	cmpl	$-1, %eax
	je	L291
	call	abort
L291:
	vmovss	LC16(%rip), %xmm0
	call	f2s
	cmpl	$-2147483648, %eax
	je	L292
	call	abort
L292:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L293
	call	abort
L293:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L294
	call	abort
L294:
	vmovsd	LC36(%rip), %xmm0
	call	d2s
	cmpl	$1, %eax
	je	L295
	call	abort
L295:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$1, %eax
	je	L296
	call	abort
L296:
	movabsq	$-4616198625254013141, %rax
	vmovq	%rax, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L297
	call	abort
L297:
	vmovsd	LC17(%rip), %xmm0
	call	d2s
	cmpl	$-1, %eax
	je	L298
	call	abort
L298:
	movabsq	$-4611731054423661609, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$-1, %eax
	je	L299
	call	abort
L299:
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$2147483647, %eax
	je	L300
	call	abort
L300:
	movabsq	$-4476578029606273024, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$-2147483648, %eax
	je	L301
	call	abort
L301:
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	testl	%eax, %eax
	je	L302
	call	abort
L302:
	movabsq	$-18446744073709568, %rax
	movl	$16382, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	testl	%eax, %eax
	je	L303
	call	abort
L303:
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$1, %eax
	je	L304
	call	abort
L304:
	movabsq	$-92233720368547840, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$1, %eax
	je	L305
	call	abort
L305:
	movabsq	$-18446744073709568, %rax
	movl	$49150, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	testl	%eax, %eax
	je	L306
	call	abort
L306:
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$-1, %eax
	je	L307
	call	abort
L307:
	movabsq	$-92233720368547840, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$-1, %eax
	je	L308
	call	abort
L308:
	movabsq	$-8589934592, %rax
	movl	$16413, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$2147483647, %eax
	je	L309
	call	abort
L309:
	movabsq	$-9223372036854775808, %rax
	movl	$49182, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$-2147483648, %eax
	je	L310
	call	abort
L310:
	leave
	ret
f2ull:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	LC23(%rip), %xmm1
	jae	L312
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vcvttss2siq	%xmm2, %rax
	jmp	L313
L312:
	movl	-4(%rbp), %eax
	movl	LC23(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vsubss	%xmm5, %xmm4, %xmm3
	vmovd	%xmm3, %eax
	vmovd	%eax, %xmm6
	vcvttss2siq	%xmm6, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
L313:
	popq	%rbp
	ret
d2ull:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC25(%rip), %xmm1
	jae	L316
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vcvttsd2siq	%xmm2, %rax
	jmp	L317
L316:
	movq	-8(%rbp), %rax
	movabsq	$4890909195324358656, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm6
	vcvttsd2siq	%xmm6, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
L317:
	popq	%rbp
	ret
ld2ull:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fldt	LC28(%rip)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jae	L320
	fldt	16(%rbp)
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	jmp	L321
L320:
	fldt	16(%rbp)
	fldt	LC28(%rip)
	fsubrp	%st, %st(1)
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
L321:
	popq	%rbp
	ret
f2sll:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vcvttss2siq	%xmm1, %rax
	popq	%rbp
	ret
d2sll:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	popq	%rbp
	ret
ld2sll:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
test_float_to_longlong_integer:
	pushq	%rbp
	movq	%rsp, %rbp
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2ull
	testq	%rax, %rax
	je	L330
	call	abort
L330:
	vmovss	LC32(%rip), %xmm0
	call	f2ull
	testq	%rax, %rax
	je	L331
	call	abort
L331:
	vmovss	LC33(%rip), %xmm0
	call	f2ull
	cmpq	$1, %rax
	je	L332
	call	abort
L332:
	vmovss	LC34(%rip), %xmm0
	call	f2ull
	cmpq	$1, %rax
	je	L333
	call	abort
L333:
	vmovss	LC23(%rip), %xmm0
	call	f2ull
	movabsq	$9223372036854775807, %rdx
	cmpq	%rdx, %rax
	je	L334
	vmovss	LC23(%rip), %xmm0
	call	f2ull
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L334
	call	abort
L334:
	vmovss	LC23(%rip), %xmm0
	call	f2ull
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L335
	call	abort
L335:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2ull
	testq	%rax, %rax
	je	L336
	call	abort
L336:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	testq	%rax, %rax
	je	L337
	call	abort
L337:
	vmovsd	LC36(%rip), %xmm0
	call	d2ull
	cmpq	$1, %rax
	je	L338
	call	abort
L338:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	cmpq	$1, %rax
	je	L339
	call	abort
L339:
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movabsq	$9223372036854775807, %rdx
	cmpq	%rdx, %rax
	je	L340
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L340
	call	abort
L340:
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L341
	call	abort
L341:
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	testq	%rax, %rax
	je	L342
	call	abort
L342:
	movabsq	$-18446744073709568, %rax
	movl	$16382, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	testq	%rax, %rax
	je	L343
	call	abort
L343:
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	cmpq	$1, %rax
	je	L344
	call	abort
L344:
	movabsq	$-92233720368547840, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	cmpq	$1, %rax
	je	L345
	call	abort
L345:
	movq	$-2, %rax
	movl	$16445, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	movabsq	$9223372036854775807, %rdx
	cmpq	%rdx, %rax
	je	L346
	movq	$-2, %rax
	movl	$16445, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L346
	call	abort
L346:
	movabsq	$-9223372036854775808, %rax
	movl	$16446, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L347
	call	abort
L347:
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L348
	call	abort
L348:
	vmovss	LC32(%rip), %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L349
	call	abort
L349:
	vmovss	LC33(%rip), %xmm0
	call	f2sll
	cmpq	$1, %rax
	je	L350
	call	abort
L350:
	vmovss	LC34(%rip), %xmm0
	call	f2sll
	cmpq	$1, %rax
	je	L351
	call	abort
L351:
	vmovss	LC41(%rip), %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L352
	call	abort
L352:
	vmovss	LC15(%rip), %xmm0
	call	f2sll
	cmpq	$-1, %rax
	je	L353
	call	abort
L353:
	vmovss	LC42(%rip), %xmm0
	call	f2sll
	cmpq	$-1, %rax
	je	L354
	call	abort
L354:
	vmovss	LC29(%rip), %xmm0
	call	f2sll
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L355
	call	abort
L355:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L356
	call	abort
L356:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L357
	call	abort
L357:
	vmovsd	LC36(%rip), %xmm0
	call	d2sll
	cmpq	$1, %rax
	je	L358
	call	abort
L358:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	cmpq	$1, %rax
	je	L359
	call	abort
L359:
	movabsq	$-4616198625254013141, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L360
	call	abort
L360:
	vmovsd	LC17(%rip), %xmm0
	call	d2sll
	cmpq	$-1, %rax
	je	L361
	call	abort
L361:
	movabsq	$-4611731054423661609, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	cmpq	$-1, %rax
	je	L362
	call	abort
L362:
	movabsq	$-4332462841530417152, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L363
	call	abort
L363:
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	testq	%rax, %rax
	je	L364
	call	abort
L364:
	movabsq	$-18446744073709568, %rax
	movl	$16382, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	testq	%rax, %rax
	je	L365
	call	abort
L365:
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	cmpq	$1, %rax
	je	L366
	call	abort
L366:
	movabsq	$-92233720368547840, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	cmpq	$1, %rax
	je	L367
	call	abort
L367:
	movabsq	$-18446744073709568, %rax
	movl	$49150, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	testq	%rax, %rax
	je	L368
	call	abort
L368:
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	cmpq	$-1, %rax
	je	L369
	call	abort
L369:
	movabsq	$-92233720368547840, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	cmpq	$-1, %rax
	je	L370
	call	abort
L370:
	movabsq	$-9223372036854775808, %rax
	movl	$49214, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L371
	call	abort
L371:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	test_integer_to_float
	movl	$0, %eax
	call	test_float_to_integer
	movl	$0, %eax
	call	test_longlong_integer_to_float
	movl	$0, %eax
	call	test_float_to_longlong_integer
	movl	$0, %edi
	call	exit
LC1:
	.long	0
LC2:
	.long	1232348160
LC4:
	.long	512753664
	.long	1121369284
LC6:
	.long	728807424
	.long	2646977960
	.long	16489
	.long	0
LC7:
	.long	1333788672
LC8:
	.long	1325400064
LC11:
	.long	0
	.long	1105199104
LC14:
	.long	0
	.long	2147483648
	.long	16414
	.long	0
LC15:
	.long	3212836864
LC16:
	.long	3472883712
LC17:
	.long	0
	.long	-1074790400
LC18:
	.long	0
	.long	-1042284544
LC20:
	.long	0
	.long	2147483648
	.long	49182
	.long	0
LC21:
	.long	0
	.long	2147483648
	.long	16447
	.long	0
LC22:
	.long	1602224128
LC23:
	.long	1593835520
LC24:
	.long	0
	.long	1139802112
LC25:
	.long	0
	.long	1138753536
LC26:
	.long	4294967295
	.long	4294967295
	.long	16446
	.long	0
LC27:
	.long	4294967294
	.long	4294967295
	.long	16445
	.long	0
LC28:
	.long	0
	.long	2147483648
	.long	16446
	.long	0
LC29:
	.long	3741319168
LC32:
	.long	1065336439
LC33:
	.long	1065353216
LC34:
	.long	1073657938
LC36:
	.long	0
	.long	1072693248
LC41:
	.long	3212820087
LC42:
	.long	3221141586
