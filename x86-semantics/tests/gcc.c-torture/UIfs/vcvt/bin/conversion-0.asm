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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L15
L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L26
L27:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
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
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	jmp	L42
L40:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
L42:
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
	testq	%rax, %rax
	js	L48
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	jmp	L50
L48:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm2
	vmovq	%xmm2, %rax
L50:
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
s2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
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
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
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
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	-4(%rbp), %xmm4
	jp	L64
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	je	L58
L64:
	movl	-20(%rbp), %eax
	vmovd	%eax, %xmm7
	vdivss	-4(%rbp), %xmm7, %xmm6
	vmovd	%xmm6, %eax
	vmovd	%eax, %xmm0
	vucomiss	LC1(%rip), %xmm0
	jbe	L65
L58:
	movl	$1, %eax
	jmp	L62
L65:
	movl	$0, %eax
L62:
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
	jp	L73
	movl	$0, %eax
	vmovq	%rax, %xmm5
	vucomisd	-8(%rbp), %xmm5
	je	L67
L73:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vdivsd	-8(%rbp), %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm0
	vucomisd	LC3(%rip), %xmm0
	jbe	L74
L67:
	movl	$1, %eax
	jmp	L71
L74:
	movl	$0, %eax
L71:
	popq	%rbp
	ret
ldnear:
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
	jp	L82
	movl	$0, %eax
	vmovq	%rax, %xmm5
	vucomisd	-8(%rbp), %xmm5
	je	L76
L82:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vdivsd	-8(%rbp), %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm0
	vucomisd	LC4(%rip), %xmm0
	jbe	L83
L76:
	movl	$1, %eax
	jmp	L80
L83:
	movl	$0, %eax
L80:
	popq	%rbp
	ret
test_integer_to_float:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	u2f
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	%xmm2, %xmm0
	jp	L121
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm3
	vucomiss	%xmm3, %xmm0
	je	L133
L121:
	call	abort
L133:
	movl	$-1, %edi
	movl	$0, %eax
	call	u2f
	vmovss	LC5(%rip), %xmm1
	call	fnear
	testl	%eax, %eax
	jne	L87
	call	abort
L87:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	u2f
	vmovss	LC6(%rip), %xmm1
	call	fnear
	testl	%eax, %eax
	jne	L88
	call	abort
L88:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2f
	vucomiss	LC6(%rip), %xmm0
	jp	L122
	vucomiss	LC6(%rip), %xmm0
	je	L134
L122:
	call	abort
L134:
	movl	$0, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L123
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L135
L123:
	call	abort
L135:
	movl	$-1, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rdx
	movabsq	$4751297606873776128, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L93
	call	abort
L93:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rdx
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L94
	call	abort
L94:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm2
	vucomisd	LC9(%rip), %xmm2
	jp	L124
	vmovq	%rax, %xmm3
	vucomisd	LC9(%rip), %xmm3
	je	L136
L124:
	call	abort
L136:
	movl	$0, %edi
	movl	$0, %eax
	call	u2ld
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L125
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L137
L125:
	call	abort
L137:
	movl	$-1, %edi
	movl	$0, %eax
	call	u2ld
	vmovq	%xmm0, %rdx
	movabsq	$4751297606873776128, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	ldnear
	testl	%eax, %eax
	jne	L99
	call	abort
L99:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	u2ld
	vmovq	%xmm0, %rdx
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	ldnear
	testl	%eax, %eax
	jne	L100
	call	abort
L100:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2ld
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm2
	vucomisd	LC9(%rip), %xmm2
	jp	L126
	vmovq	%rax, %xmm3
	vucomisd	LC9(%rip), %xmm3
	je	L138
L126:
	call	abort
L138:
	movl	$0, %edi
	movl	$0, %eax
	call	s2f
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	%xmm4, %xmm0
	jp	L127
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	%xmm5, %xmm0
	je	L139
L127:
	call	abort
L139:
	movl	$-1, %edi
	movl	$0, %eax
	call	s2f
	vmovss	LC10(%rip), %xmm1
	call	fnear
	testl	%eax, %eax
	jne	L105
	call	abort
L105:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	s2f
	vmovss	LC6(%rip), %xmm1
	call	fnear
	testl	%eax, %eax
	jne	L106
	call	abort
L106:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2f
	vucomiss	LC11(%rip), %xmm0
	jp	L128
	vucomiss	LC11(%rip), %xmm0
	je	L140
L128:
	call	abort
L140:
	movl	$0, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L129
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L141
L129:
	call	abort
L141:
	movl	$-1, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	vmovsd	LC12(%rip), %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L111
	call	abort
L111:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rdx
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L112
	call	abort
L112:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm4
	vucomisd	LC13(%rip), %xmm4
	jp	L130
	vmovq	%rax, %xmm5
	vucomisd	LC13(%rip), %xmm5
	je	L142
L130:
	call	abort
L142:
	movl	$0, %edi
	movl	$0, %eax
	call	s2ld
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L131
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L143
L131:
	call	abort
L143:
	movl	$-1, %edi
	movl	$0, %eax
	call	s2ld
	vmovq	%xmm0, %rax
	vmovsd	LC12(%rip), %xmm1
	vmovq	%rax, %xmm0
	call	ldnear
	testl	%eax, %eax
	jne	L117
	call	abort
L117:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	s2ld
	vmovq	%xmm0, %rdx
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	ldnear
	testl	%eax, %eax
	jne	L118
	call	abort
L118:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2ld
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm4
	vucomisd	LC13(%rip), %xmm4
	jp	L132
	vmovq	%rax, %xmm5
	vucomisd	LC13(%rip), %xmm5
	je	L144
L132:
	call	abort
L144:
	popq	%rbp
	ret
ull2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L146
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rax, %xmm0, %xmm0
	jmp	L148
L146:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm0
L148:
	popq	%rbp
	ret
ull2d:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L150
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	jmp	L152
L150:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm2
	vmovq	%xmm2, %rax
L152:
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
ull2ld:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L154
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	jmp	L156
L154:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm2
	vmovq	%xmm2, %rax
L156:
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
sll2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	-8(%rbp), %xmm0, %xmm0
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
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	-8(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
test_longlong_integer_to_float:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	ull2f
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	%xmm2, %xmm0
	jp	L207
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm3
	vucomiss	%xmm3, %xmm0
	je	L226
L207:
	call	abort
L226:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2f
	vucomiss	LC14(%rip), %xmm0
	jp	L208
	vucomiss	LC14(%rip), %xmm0
	je	L227
L208:
	call	abort
L227:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2f
	vucomiss	LC15(%rip), %xmm0
	jp	L209
	vucomiss	LC15(%rip), %xmm0
	je	L228
L209:
	call	abort
L228:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2f
	vucomiss	LC15(%rip), %xmm0
	jp	L210
	vucomiss	LC15(%rip), %xmm0
	je	L229
L210:
	call	abort
L229:
	movl	$0, %edi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L211
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L230
L211:
	call	abort
L230:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm2
	vucomisd	LC16(%rip), %xmm2
	jp	L212
	vmovq	%rax, %xmm3
	vucomisd	LC16(%rip), %xmm3
	je	L231
L212:
	call	abort
L231:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm4
	vucomisd	LC17(%rip), %xmm4
	jp	L213
	vmovq	%rax, %xmm5
	vucomisd	LC17(%rip), %xmm5
	je	L232
L213:
	call	abort
L232:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC17(%rip), %xmm6
	jp	L214
	vmovq	%rax, %xmm7
	vucomisd	LC17(%rip), %xmm7
	je	L233
L214:
	call	abort
L233:
	movl	$0, %edi
	movl	$0, %eax
	call	ull2ld
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L215
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L234
L215:
	call	abort
L234:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2ld
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC16(%rip), %xmm6
	jp	L216
	vmovq	%rax, %xmm7
	vucomisd	LC16(%rip), %xmm7
	je	L235
L216:
	call	abort
L235:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2ld
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm1
	vucomisd	LC17(%rip), %xmm1
	jp	L217
	vmovq	%rax, %xmm2
	vucomisd	LC17(%rip), %xmm2
	je	L236
L217:
	call	abort
L236:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2ld
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm3
	vucomisd	LC17(%rip), %xmm3
	jp	L218
	vmovq	%rax, %xmm4
	vucomisd	LC17(%rip), %xmm4
	je	L237
L218:
	call	abort
L237:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2f
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	%xmm5, %xmm0
	jp	L219
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm6
	vucomiss	%xmm6, %xmm0
	je	L238
L219:
	call	abort
L238:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2f
	movl	LC10(%rip), %eax
	vmovd	%eax, %xmm7
	vucomiss	%xmm7, %xmm0
	jp	L220
	movl	LC10(%rip), %eax
	vmovd	%eax, %xmm1
	vucomiss	%xmm1, %xmm0
	je	L239
L220:
	call	abort
L239:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	sll2f
	vmovss	LC15(%rip), %xmm1
	call	fnear
	testl	%eax, %eax
	jne	L192
	call	abort
L192:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	sll2f
	vucomiss	LC18(%rip), %xmm0
	jp	L221
	vucomiss	LC18(%rip), %xmm0
	je	L240
L221:
	call	abort
L240:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L222
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L241
L222:
	call	abort
L241:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L223
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	je	L242
L223:
	call	abort
L242:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rdx
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L199
	call	abort
L199:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rdx
	movabsq	$-4332462841530417152, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L200
	call	abort
L200:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2ld
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	jp	L224
	movl	$0, %edx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	je	L243
L224:
	call	abort
L243:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2ld
	vmovq	%xmm0, %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm7
	jp	L225
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L244
L225:
	call	abort
L244:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	sll2ld
	vmovq	%xmm0, %rdx
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	ldnear
	testl	%eax, %eax
	jne	L205
	call	abort
L205:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	sll2ld
	vmovq	%xmm0, %rdx
	movabsq	$-4332462841530417152, %rax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	call	ldnear
	testl	%eax, %eax
	jne	L206
	call	abort
L206:
	popq	%rbp
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
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
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
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2si	%xmm1, %eax
	popq	%rbp
	ret
test_float_to_integer:
	pushq	%rbp
	movq	%rsp, %rbp
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2u
	testl	%eax, %eax
	je	L258
	call	abort
L258:
	vmovss	LC20(%rip), %xmm0
	call	f2u
	testl	%eax, %eax
	je	L259
	call	abort
L259:
	vmovss	LC21(%rip), %xmm0
	call	f2u
	cmpl	$1, %eax
	je	L260
	call	abort
L260:
	vmovss	LC22(%rip), %xmm0
	call	f2u
	cmpl	$1, %eax
	je	L261
	call	abort
L261:
	vmovss	LC6(%rip), %xmm0
	call	f2u
	cmpl	$2147483647, %eax
	je	L262
	vmovss	LC6(%rip), %xmm0
	call	f2u
	cmpl	$-2147483648, %eax
	je	L262
	call	abort
L262:
	vmovss	LC6(%rip), %xmm0
	call	f2u
	cmpl	$-2147483648, %eax
	je	L263
	call	abort
L263:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2u
	testl	%eax, %eax
	je	L264
	call	abort
L264:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2u
	testl	%eax, %eax
	je	L265
	call	abort
L265:
	vmovsd	LC24(%rip), %xmm0
	call	d2u
	cmpl	$1, %eax
	je	L266
	call	abort
L266:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$1, %eax
	je	L267
	call	abort
L267:
	movabsq	$4751297606873776128, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$-1, %eax
	je	L268
	call	abort
L268:
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$2147483647, %eax
	je	L269
	call	abort
L269:
	movabsq	$4746794007248502784, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$-2147483648, %eax
	je	L270
	call	abort
L270:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	ld2u
	testl	%eax, %eax
	je	L271
	call	abort
L271:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	ld2u
	testl	%eax, %eax
	je	L272
	call	abort
L272:
	vmovsd	LC24(%rip), %xmm0
	call	ld2u
	cmpl	$1, %eax
	je	L273
	call	abort
L273:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	ld2u
	cmpl	$1, %eax
	je	L274
	call	abort
L274:
	movabsq	$4751297606873776128, %rax
	vmovq	%rax, %xmm0
	call	ld2u
	cmpl	$-1, %eax
	je	L275
	call	abort
L275:
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm0
	call	ld2u
	cmpl	$2147483647, %eax
	je	L276
	call	abort
L276:
	movabsq	$4746794007248502784, %rax
	vmovq	%rax, %xmm0
	call	ld2u
	cmpl	$-2147483648, %eax
	je	L277
	call	abort
L277:
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2s
	testl	%eax, %eax
	je	L278
	call	abort
L278:
	vmovss	LC20(%rip), %xmm0
	call	f2s
	testl	%eax, %eax
	je	L279
	call	abort
L279:
	vmovss	LC21(%rip), %xmm0
	call	f2s
	cmpl	$1, %eax
	je	L280
	call	abort
L280:
	vmovss	LC22(%rip), %xmm0
	call	f2s
	cmpl	$1, %eax
	je	L281
	call	abort
L281:
	vmovss	LC26(%rip), %xmm0
	call	f2s
	testl	%eax, %eax
	je	L282
	call	abort
L282:
	vmovss	LC10(%rip), %xmm0
	call	f2s
	cmpl	$-1, %eax
	je	L283
	call	abort
L283:
	vmovss	LC27(%rip), %xmm0
	call	f2s
	cmpl	$-1, %eax
	je	L284
	call	abort
L284:
	vmovss	LC11(%rip), %xmm0
	call	f2s
	cmpl	$-2147483648, %eax
	je	L285
	call	abort
L285:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L286
	call	abort
L286:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L287
	call	abort
L287:
	vmovsd	LC24(%rip), %xmm0
	call	d2s
	cmpl	$1, %eax
	je	L288
	call	abort
L288:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$1, %eax
	je	L289
	call	abort
L289:
	movabsq	$-4616198625254013141, %rax
	vmovq	%rax, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L290
	call	abort
L290:
	vmovsd	LC12(%rip), %xmm0
	call	d2s
	cmpl	$-1, %eax
	je	L291
	call	abort
L291:
	movabsq	$-4611731054423661609, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$-1, %eax
	je	L292
	call	abort
L292:
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$2147483647, %eax
	je	L293
	call	abort
L293:
	movabsq	$-4476578029606273024, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$-2147483648, %eax
	je	L294
	call	abort
L294:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	ld2s
	testl	%eax, %eax
	je	L295
	call	abort
L295:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	ld2s
	testl	%eax, %eax
	je	L296
	call	abort
L296:
	vmovsd	LC24(%rip), %xmm0
	call	ld2s
	cmpl	$1, %eax
	je	L297
	call	abort
L297:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	ld2s
	cmpl	$1, %eax
	je	L298
	call	abort
L298:
	movabsq	$-4616198625254013141, %rax
	vmovq	%rax, %xmm0
	call	ld2s
	testl	%eax, %eax
	je	L299
	call	abort
L299:
	vmovsd	LC12(%rip), %xmm0
	call	ld2s
	cmpl	$-1, %eax
	je	L300
	call	abort
L300:
	movabsq	$-4611731054423661609, %rax
	vmovq	%rax, %xmm0
	call	ld2s
	cmpl	$-1, %eax
	je	L301
	call	abort
L301:
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm0
	call	ld2s
	cmpl	$2147483647, %eax
	je	L302
	call	abort
L302:
	movabsq	$-4476578029606273024, %rax
	vmovq	%rax, %xmm0
	call	ld2s
	cmpl	$-2147483648, %eax
	je	L303
	call	abort
L303:
	popq	%rbp
	ret
f2ull:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	LC15(%rip), %xmm1
	jnb	L305
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vcvttss2siq	%xmm2, %rax
	jmp	L306
L305:
	movl	-4(%rbp), %eax
	movl	LC15(%rip), %edx
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vsubss	%xmm4, %xmm3, %xmm0
	vcvttss2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
L306:
	popq	%rbp
	ret
d2ull:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC17(%rip), %xmm1
	jnb	L309
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vcvttsd2siq	%xmm2, %rax
	jmp	L310
L309:
	movq	-8(%rbp), %rax
	movabsq	$4890909195324358656, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm0
	vcvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
L310:
	popq	%rbp
	ret
ld2ull:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC17(%rip), %xmm1
	jnb	L313
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vcvttsd2siq	%xmm2, %rax
	jmp	L314
L313:
	movq	-8(%rbp), %rax
	movabsq	$4890909195324358656, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm0
	vcvttsd2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
L314:
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
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	popq	%rbp
	ret
test_float_to_longlong_integer:
	pushq	%rbp
	movq	%rsp, %rbp
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2ull
	testq	%rax, %rax
	je	L323
	call	abort
L323:
	vmovss	LC20(%rip), %xmm0
	call	f2ull
	testq	%rax, %rax
	je	L324
	call	abort
L324:
	vmovss	LC21(%rip), %xmm0
	call	f2ull
	cmpq	$1, %rax
	je	L325
	call	abort
L325:
	vmovss	LC22(%rip), %xmm0
	call	f2ull
	cmpq	$1, %rax
	je	L326
	call	abort
L326:
	vmovss	LC15(%rip), %xmm0
	call	f2ull
	movq	%rax, %rdx
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	L327
	vmovss	LC15(%rip), %xmm0
	call	f2ull
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L327
	call	abort
L327:
	vmovss	LC15(%rip), %xmm0
	call	f2ull
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L328
	call	abort
L328:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2ull
	testq	%rax, %rax
	je	L329
	call	abort
L329:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	testq	%rax, %rax
	je	L330
	call	abort
L330:
	vmovsd	LC24(%rip), %xmm0
	call	d2ull
	cmpq	$1, %rax
	je	L331
	call	abort
L331:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	cmpq	$1, %rax
	je	L332
	call	abort
L332:
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movq	%rax, %rdx
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	L333
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L333
	call	abort
L333:
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L334
	call	abort
L334:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	ld2ull
	testq	%rax, %rax
	je	L335
	call	abort
L335:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	ld2ull
	testq	%rax, %rax
	je	L336
	call	abort
L336:
	vmovsd	LC24(%rip), %xmm0
	call	ld2ull
	cmpq	$1, %rax
	je	L337
	call	abort
L337:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	ld2ull
	cmpq	$1, %rax
	je	L338
	call	abort
L338:
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	ld2ull
	movq	%rax, %rdx
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, %rdx
	je	L339
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	ld2ull
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L339
	call	abort
L339:
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	ld2ull
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L340
	call	abort
L340:
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L341
	call	abort
L341:
	vmovss	LC20(%rip), %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L342
	call	abort
L342:
	vmovss	LC21(%rip), %xmm0
	call	f2sll
	cmpq	$1, %rax
	je	L343
	call	abort
L343:
	vmovss	LC22(%rip), %xmm0
	call	f2sll
	cmpq	$1, %rax
	je	L344
	call	abort
L344:
	vmovss	LC26(%rip), %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L345
	call	abort
L345:
	vmovss	LC10(%rip), %xmm0
	call	f2sll
	cmpq	$-1, %rax
	je	L346
	call	abort
L346:
	vmovss	LC27(%rip), %xmm0
	call	f2sll
	cmpq	$-1, %rax
	je	L347
	call	abort
L347:
	vmovss	LC18(%rip), %xmm0
	call	f2sll
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L348
	call	abort
L348:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L349
	call	abort
L349:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L350
	call	abort
L350:
	vmovsd	LC24(%rip), %xmm0
	call	d2sll
	cmpq	$1, %rax
	je	L351
	call	abort
L351:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	cmpq	$1, %rax
	je	L352
	call	abort
L352:
	movabsq	$-4616198625254013141, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L353
	call	abort
L353:
	vmovsd	LC12(%rip), %xmm0
	call	d2sll
	cmpq	$-1, %rax
	je	L354
	call	abort
L354:
	movabsq	$-4611731054423661609, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	cmpq	$-1, %rax
	je	L355
	call	abort
L355:
	movabsq	$-4332462841530417152, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L356
	call	abort
L356:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	ld2sll
	testq	%rax, %rax
	je	L357
	call	abort
L357:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	ld2sll
	testq	%rax, %rax
	je	L358
	call	abort
L358:
	vmovsd	LC24(%rip), %xmm0
	call	ld2sll
	cmpq	$1, %rax
	je	L359
	call	abort
L359:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	ld2sll
	cmpq	$1, %rax
	je	L360
	call	abort
L360:
	movabsq	$-4616198625254013141, %rax
	vmovq	%rax, %xmm0
	call	ld2sll
	testq	%rax, %rax
	je	L361
	call	abort
L361:
	vmovsd	LC12(%rip), %xmm0
	call	ld2sll
	cmpq	$-1, %rax
	je	L362
	call	abort
L362:
	movabsq	$-4611731054423661609, %rax
	vmovq	%rax, %xmm0
	call	ld2sll
	cmpq	$-1, %rax
	je	L363
	call	abort
L363:
	movabsq	$-4332462841530417152, %rax
	vmovq	%rax, %xmm0
	call	ld2sll
	movq	%rax, %rdx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %rdx
	je	L364
	call	abort
L364:
	popq	%rbp
	ret
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
LC0:
	.long	0
LC1:
	.long	1232348160
LC3:
	.long	512753664
	.long	1121369284
LC4:
	.long	3037031959
	.long	1184086197
LC5:
	.long	1333788672
LC6:
	.long	1325400064
LC9:
	.long	0
	.long	1105199104
LC10:
	.long	3212836864
LC11:
	.long	3472883712
LC12:
	.long	0
	.long	-1074790400
LC13:
	.long	0
	.long	-1042284544
LC14:
	.long	1602224128
LC15:
	.long	1593835520
LC16:
	.long	0
	.long	1139802112
LC17:
	.long	0
	.long	1138753536
LC18:
	.long	3741319168
LC20:
	.long	1065336439
LC21:
	.long	1065353216
LC22:
	.long	1073657938
LC24:
	.long	0
	.long	1072693248
LC26:
	.long	3212820087
LC27:
	.long	3221141586
