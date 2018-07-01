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
u2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	testq	%rax, %rax
	js	L10
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	jmp	L12
L10:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm2
	vmovd	%xmm2, %eax
L12:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
u2d:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	testq	%rax, %rax
	js	L14
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	jmp	L16
L14:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm2
	vmovq	%xmm2, %rax
L16:
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
	jp	L32
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	je	L26
L32:
	movl	-20(%rbp), %eax
	vmovd	%eax, %xmm7
	vdivss	-4(%rbp), %xmm7, %xmm6
	vmovd	%xmm6, %eax
	vmovd	%eax, %xmm0
	vucomiss	LC2(%rip), %xmm0
	jbe	L33
L26:
	movl	$1, %eax
	jmp	L30
L33:
	movl	$0, %eax
L30:
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
	jp	L41
	movl	$0, %eax
	vmovq	%rax, %xmm5
	vucomisd	-8(%rbp), %xmm5
	je	L35
L41:
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm7
	vdivsd	-8(%rbp), %xmm7, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm0
	vucomisd	LC4(%rip), %xmm0
	jbe	L42
L35:
	movl	$1, %eax
	jmp	L39
L42:
	movl	$0, %eax
L39:
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
	jp	L50
	fldt	-16(%rbp)
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L44
L50:
	fldt	16(%rbp)
	fldt	-16(%rbp)
	fdivrp	%st, %st(1)
	fldt	LC6(%rip)
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jbe	L51
L44:
	movl	$1, %eax
	jmp	L48
L51:
	movl	$0, %eax
L48:
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
	jp	L89
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L101
L89:
	call	abort
L101:
	movl	$-1, %edi
	movl	$0, %eax
	call	u2f
	vmovd	%xmm0, %eax
	vmovss	LC7(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L55
	call	abort
L55:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	u2f
	vmovd	%xmm0, %eax
	vmovss	LC8(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L56
	call	abort
L56:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm6
	vucomiss	LC8(%rip), %xmm6
	jp	L90
	vmovd	%eax, %xmm7
	vucomiss	LC8(%rip), %xmm7
	je	L102
L90:
	call	abort
L102:
	movl	$0, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L91
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L103
L91:
	call	abort
L103:
	movl	$-1, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	movabsq	$4751297606873776128, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L61
	call	abort
L61:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	movabsq	$4746794007244308480, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L62
	call	abort
L62:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC11(%rip), %xmm6
	jp	L92
	vmovq	%rax, %xmm7
	vucomisd	LC11(%rip), %xmm7
	je	L104
L92:
	call	abort
L104:
	movl	$0, %edi
	movl	$0, %eax
	call	u2ld
	fldz
	fucomip	%st(1), %st
	jp	L113
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L105
	jmp	L93
L113:
	fstp	%st(0)
L93:
	call	abort
L105:
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
	jne	L67
	call	abort
L67:
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
	jne	L68
	call	abort
L68:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	u2ld
	fldt	LC14(%rip)
	fucomip	%st(1), %st
	jp	L114
	fldt	LC14(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L106
	jmp	L94
L114:
	fstp	%st(0)
L94:
	call	abort
L106:
	movl	$0, %edi
	movl	$0, %eax
	call	s2f
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L95
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L107
L95:
	call	abort
L107:
	movl	$-1, %edi
	movl	$0, %eax
	call	s2f
	vmovd	%xmm0, %eax
	vmovss	LC15(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L73
	call	abort
L73:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	s2f
	vmovd	%xmm0, %eax
	vmovss	LC8(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L74
	call	abort
L74:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm6
	vucomiss	LC16(%rip), %xmm6
	jp	L96
	vmovd	%eax, %xmm7
	vucomiss	LC16(%rip), %xmm7
	je	L108
L96:
	call	abort
L108:
	movl	$0, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L97
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L109
L97:
	call	abort
L109:
	movl	$-1, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	vmovsd	LC17(%rip), %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L79
	call	abort
L79:
	movl	$2147483647, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	movabsq	$4746794007244308480, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L80
	call	abort
L80:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC18(%rip), %xmm6
	jp	L98
	vmovq	%rax, %xmm7
	vucomisd	LC18(%rip), %xmm7
	je	L110
L98:
	call	abort
L110:
	movl	$0, %edi
	movl	$0, %eax
	call	s2ld
	fldz
	fucomip	%st(1), %st
	jp	L115
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L111
	jmp	L99
L115:
	fstp	%st(0)
L99:
	call	abort
L111:
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
	jne	L85
	call	abort
L85:
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
	jne	L86
	call	abort
L86:
	movl	$-2147483648, %edi
	movl	$0, %eax
	call	s2ld
	fldt	LC20(%rip)
	fucomip	%st(1), %st
	jp	L116
	fldt	LC20(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L112
	jmp	L100
L116:
	fstp	%st(0)
L100:
	call	abort
L112:
	leave
	ret
ull2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L118
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	jmp	L120
L118:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm2
	vmovd	%xmm2, %eax
L120:
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
ull2d:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	js	L122
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vmovq	%xmm1, %rax
	jmp	L124
L122:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm2
	vmovq	%xmm2, %rax
L124:
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
ull2ld:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	fildq	-8(%rbp)
	cmpq	$0, -8(%rbp)
	jns	L127
	fldt	LC21(%rip)
	faddp	%st, %st(1)
L127:
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
	jp	L178
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L197
L178:
	call	abort
L197:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm6
	vucomiss	LC22(%rip), %xmm6
	jp	L179
	vmovd	%eax, %xmm7
	vucomiss	LC22(%rip), %xmm7
	je	L198
L179:
	call	abort
L198:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm2
	vucomiss	LC23(%rip), %xmm2
	jp	L180
	vmovd	%eax, %xmm3
	vucomiss	LC23(%rip), %xmm3
	je	L199
L180:
	call	abort
L199:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm4
	vucomiss	LC23(%rip), %xmm4
	jp	L181
	vmovd	%eax, %xmm5
	vucomiss	LC23(%rip), %xmm5
	je	L200
L181:
	call	abort
L200:
	movl	$0, %edi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L182
	movl	$0, %edx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	je	L201
L182:
	call	abort
L201:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm3
	vucomisd	LC24(%rip), %xmm3
	jp	L183
	vmovq	%rax, %xmm4
	vucomisd	LC24(%rip), %xmm4
	je	L202
L183:
	call	abort
L202:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm5
	vucomisd	LC25(%rip), %xmm5
	jp	L184
	vmovq	%rax, %xmm6
	vucomisd	LC25(%rip), %xmm6
	je	L203
L184:
	call	abort
L203:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2d
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm7
	vucomisd	LC25(%rip), %xmm7
	jp	L185
	vmovq	%rax, %xmm1
	vucomisd	LC25(%rip), %xmm1
	je	L204
L185:
	call	abort
L204:
	movl	$0, %edi
	movl	$0, %eax
	call	ull2ld
	fldz
	fucomip	%st(1), %st
	jp	L216
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L205
	jmp	L186
L216:
	fstp	%st(0)
L186:
	call	abort
L205:
	movq	$-1, %rdi
	movl	$0, %eax
	call	ull2ld
	fldt	LC26(%rip)
	fucomip	%st(1), %st
	jp	L217
	fldt	LC26(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L206
	jmp	L187
L217:
	fstp	%st(0)
L187:
	call	abort
L206:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	ull2ld
	fldt	LC27(%rip)
	fucomip	%st(1), %st
	jp	L218
	fldt	LC27(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L207
	jmp	L188
L218:
	fstp	%st(0)
L188:
	call	abort
L207:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	ull2ld
	fldt	LC28(%rip)
	fucomip	%st(1), %st
	jp	L219
	fldt	LC28(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L208
	jmp	L189
L219:
	fstp	%st(0)
L189:
	call	abort
L208:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2f
	vmovd	%xmm0, %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L190
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L209
L190:
	call	abort
L209:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2f
	vmovd	%xmm0, %eax
	movl	LC15(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L191
	movl	LC15(%rip), %edx
	vmovd	%eax, %xmm1
	vmovd	%edx, %xmm2
	vucomiss	%xmm2, %xmm1
	je	L210
L191:
	call	abort
L210:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	sll2f
	vmovd	%xmm0, %eax
	vmovss	LC23(%rip), %xmm1
	vmovd	%eax, %xmm0
	call	fnear
	testl	%eax, %eax
	jne	L163
	call	abort
L163:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	sll2f
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm3
	vucomiss	LC29(%rip), %xmm3
	jp	L192
	vmovd	%eax, %xmm4
	vucomiss	LC29(%rip), %xmm4
	je	L211
L192:
	call	abort
L211:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	jp	L193
	movl	$0, %edx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm7
	je	L212
L193:
	call	abort
L212:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L194
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L213
L194:
	call	abort
L213:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movabsq	$4890909195324358656, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L170
	call	abort
L170:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	sll2d
	vmovq	%xmm0, %rax
	movabsq	$-4332462841530417152, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dnear
	testl	%eax, %eax
	jne	L171
	call	abort
L171:
	movl	$0, %edi
	movl	$0, %eax
	call	sll2ld
	fldz
	fucomip	%st(1), %st
	jp	L220
	fldz
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L214
	jmp	L195
L220:
	fstp	%st(0)
L195:
	call	abort
L214:
	movq	$-1, %rdi
	movl	$0, %eax
	call	sll2ld
	fld1
	fchs
	fucomip	%st(1), %st
	jp	L221
	fld1
	fchs
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L215
	jmp	L196
L221:
	fstp	%st(0)
L196:
	call	abort
L215:
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
	jne	L176
	call	abort
L176:
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
	jne	L177
	call	abort
L177:
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
	je	L235
	call	abort
L235:
	vmovss	LC32(%rip), %xmm0
	call	f2u
	testl	%eax, %eax
	je	L236
	call	abort
L236:
	vmovss	LC33(%rip), %xmm0
	call	f2u
	cmpl	$1, %eax
	je	L237
	call	abort
L237:
	vmovss	LC34(%rip), %xmm0
	call	f2u
	cmpl	$1, %eax
	je	L238
	call	abort
L238:
	vmovss	LC8(%rip), %xmm0
	call	f2u
	cmpl	$2147483647, %eax
	je	L239
	vmovss	LC8(%rip), %xmm0
	call	f2u
	cmpl	$-2147483648, %eax
	je	L239
	call	abort
L239:
	vmovss	LC8(%rip), %xmm0
	call	f2u
	cmpl	$-2147483648, %eax
	je	L240
	call	abort
L240:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2u
	testl	%eax, %eax
	je	L241
	call	abort
L241:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2u
	testl	%eax, %eax
	je	L242
	call	abort
L242:
	vmovsd	LC36(%rip), %xmm0
	call	d2u
	cmpl	$1, %eax
	je	L243
	call	abort
L243:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$1, %eax
	je	L244
	call	abort
L244:
	movabsq	$4751297606873776128, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$-1, %eax
	je	L245
	call	abort
L245:
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$2147483647, %eax
	je	L246
	call	abort
L246:
	movabsq	$4746794007248502784, %rax
	vmovq	%rax, %xmm0
	call	d2u
	cmpl	$-2147483648, %eax
	je	L247
	call	abort
L247:
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	testl	%eax, %eax
	je	L248
	call	abort
L248:
	movabsq	$-18446744073709568, %rax
	movl	$16382, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	testl	%eax, %eax
	je	L249
	call	abort
L249:
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$1, %eax
	je	L250
	call	abort
L250:
	movabsq	$-92233720368547840, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$1, %eax
	je	L251
	call	abort
L251:
	movabsq	$-4294967296, %rax
	movl	$16414, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$-1, %eax
	je	L252
	call	abort
L252:
	movabsq	$-8589934592, %rax
	movl	$16413, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$2147483647, %eax
	je	L253
	call	abort
L253:
	movabsq	$-9223372036854775808, %rax
	movl	$16414, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2u
	addq	$16, %rsp
	cmpl	$-2147483648, %eax
	je	L254
	call	abort
L254:
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2s
	testl	%eax, %eax
	je	L255
	call	abort
L255:
	vmovss	LC32(%rip), %xmm0
	call	f2s
	testl	%eax, %eax
	je	L256
	call	abort
L256:
	vmovss	LC33(%rip), %xmm0
	call	f2s
	cmpl	$1, %eax
	je	L257
	call	abort
L257:
	vmovss	LC34(%rip), %xmm0
	call	f2s
	cmpl	$1, %eax
	je	L258
	call	abort
L258:
	vmovss	LC41(%rip), %xmm0
	call	f2s
	testl	%eax, %eax
	je	L259
	call	abort
L259:
	vmovss	LC15(%rip), %xmm0
	call	f2s
	cmpl	$-1, %eax
	je	L260
	call	abort
L260:
	vmovss	LC42(%rip), %xmm0
	call	f2s
	cmpl	$-1, %eax
	je	L261
	call	abort
L261:
	vmovss	LC16(%rip), %xmm0
	call	f2s
	cmpl	$-2147483648, %eax
	je	L262
	call	abort
L262:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L263
	call	abort
L263:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L264
	call	abort
L264:
	vmovsd	LC36(%rip), %xmm0
	call	d2s
	cmpl	$1, %eax
	je	L265
	call	abort
L265:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$1, %eax
	je	L266
	call	abort
L266:
	movabsq	$-4616198625254013141, %rax
	vmovq	%rax, %xmm0
	call	d2s
	testl	%eax, %eax
	je	L267
	call	abort
L267:
	vmovsd	LC17(%rip), %xmm0
	call	d2s
	cmpl	$-1, %eax
	je	L268
	call	abort
L268:
	movabsq	$-4611731054423661609, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$-1, %eax
	je	L269
	call	abort
L269:
	movabsq	$4746794007244308480, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$2147483647, %eax
	je	L270
	call	abort
L270:
	movabsq	$-4476578029606273024, %rax
	vmovq	%rax, %xmm0
	call	d2s
	cmpl	$-2147483648, %eax
	je	L271
	call	abort
L271:
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	testl	%eax, %eax
	je	L272
	call	abort
L272:
	movabsq	$-18446744073709568, %rax
	movl	$16382, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	testl	%eax, %eax
	je	L273
	call	abort
L273:
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$1, %eax
	je	L274
	call	abort
L274:
	movabsq	$-92233720368547840, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$1, %eax
	je	L275
	call	abort
L275:
	movabsq	$-18446744073709568, %rax
	movl	$49150, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	testl	%eax, %eax
	je	L276
	call	abort
L276:
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$-1, %eax
	je	L277
	call	abort
L277:
	movabsq	$-92233720368547840, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$-1, %eax
	je	L278
	call	abort
L278:
	movabsq	$-8589934592, %rax
	movl	$16413, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$2147483647, %eax
	je	L279
	call	abort
L279:
	movabsq	$-9223372036854775808, %rax
	movl	$49182, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2s
	addq	$16, %rsp
	cmpl	$-2147483648, %eax
	je	L280
	call	abort
L280:
	leave
	ret
f2ull:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	LC23(%rip), %xmm1
	jae	L282
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vcvttss2siq	%xmm2, %rax
	jmp	L283
L282:
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
L283:
	popq	%rbp
	ret
d2ull:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC25(%rip), %xmm1
	jae	L286
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vcvttsd2siq	%xmm2, %rax
	jmp	L287
L286:
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
L287:
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
	jae	L290
	fldt	16(%rbp)
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	jmp	L291
L290:
	fldt	16(%rbp)
	fldt	LC28(%rip)
	fsubrp	%st, %st(1)
	fisttpq	-8(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
L291:
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
	je	L300
	call	abort
L300:
	vmovss	LC32(%rip), %xmm0
	call	f2ull
	testq	%rax, %rax
	je	L301
	call	abort
L301:
	vmovss	LC33(%rip), %xmm0
	call	f2ull
	cmpq	$1, %rax
	je	L302
	call	abort
L302:
	vmovss	LC34(%rip), %xmm0
	call	f2ull
	cmpq	$1, %rax
	je	L303
	call	abort
L303:
	vmovss	LC23(%rip), %xmm0
	call	f2ull
	movabsq	$9223372036854775807, %rdx
	cmpq	%rdx, %rax
	je	L304
	vmovss	LC23(%rip), %xmm0
	call	f2ull
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L304
	call	abort
L304:
	vmovss	LC23(%rip), %xmm0
	call	f2ull
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L305
	call	abort
L305:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2ull
	testq	%rax, %rax
	je	L306
	call	abort
L306:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	testq	%rax, %rax
	je	L307
	call	abort
L307:
	vmovsd	LC36(%rip), %xmm0
	call	d2ull
	cmpq	$1, %rax
	je	L308
	call	abort
L308:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	cmpq	$1, %rax
	je	L309
	call	abort
L309:
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movabsq	$9223372036854775807, %rdx
	cmpq	%rdx, %rax
	je	L310
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L310
	call	abort
L310:
	movabsq	$4890909195324358656, %rax
	vmovq	%rax, %xmm0
	call	d2ull
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L311
	call	abort
L311:
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	testq	%rax, %rax
	je	L312
	call	abort
L312:
	movabsq	$-18446744073709568, %rax
	movl	$16382, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	testq	%rax, %rax
	je	L313
	call	abort
L313:
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	cmpq	$1, %rax
	je	L314
	call	abort
L314:
	movabsq	$-92233720368547840, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	cmpq	$1, %rax
	je	L315
	call	abort
L315:
	movq	$-2, %rax
	movl	$16445, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	movabsq	$9223372036854775807, %rdx
	cmpq	%rdx, %rax
	je	L316
	movq	$-2, %rax
	movl	$16445, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L316
	call	abort
L316:
	movabsq	$-9223372036854775808, %rax
	movl	$16446, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2ull
	addq	$16, %rsp
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L317
	call	abort
L317:
	vxorps	%xmm0, %xmm0, %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L318
	call	abort
L318:
	vmovss	LC32(%rip), %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L319
	call	abort
L319:
	vmovss	LC33(%rip), %xmm0
	call	f2sll
	cmpq	$1, %rax
	je	L320
	call	abort
L320:
	vmovss	LC34(%rip), %xmm0
	call	f2sll
	cmpq	$1, %rax
	je	L321
	call	abort
L321:
	vmovss	LC41(%rip), %xmm0
	call	f2sll
	testq	%rax, %rax
	je	L322
	call	abort
L322:
	vmovss	LC15(%rip), %xmm0
	call	f2sll
	cmpq	$-1, %rax
	je	L323
	call	abort
L323:
	vmovss	LC42(%rip), %xmm0
	call	f2sll
	cmpq	$-1, %rax
	je	L324
	call	abort
L324:
	vmovss	LC29(%rip), %xmm0
	call	f2sll
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L325
	call	abort
L325:
	vxorpd	%xmm0, %xmm0, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L326
	call	abort
L326:
	movabsq	$4607173411600762667, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L327
	call	abort
L327:
	vmovsd	LC36(%rip), %xmm0
	call	d2sll
	cmpq	$1, %rax
	je	L328
	call	abort
L328:
	movabsq	$4611640982431114199, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	cmpq	$1, %rax
	je	L329
	call	abort
L329:
	movabsq	$-4616198625254013141, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	testq	%rax, %rax
	je	L330
	call	abort
L330:
	vmovsd	LC17(%rip), %xmm0
	call	d2sll
	cmpq	$-1, %rax
	je	L331
	call	abort
L331:
	movabsq	$-4611731054423661609, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	cmpq	$-1, %rax
	je	L332
	call	abort
L332:
	movabsq	$-4332462841530417152, %rax
	vmovq	%rax, %xmm0
	call	d2sll
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L333
	call	abort
L333:
	movl	$0, %eax
	movl	$0, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	testq	%rax, %rax
	je	L334
	call	abort
L334:
	movabsq	$-18446744073709568, %rax
	movl	$16382, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	testq	%rax, %rax
	je	L335
	call	abort
L335:
	movabsq	$-9223372036854775808, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	cmpq	$1, %rax
	je	L336
	call	abort
L336:
	movabsq	$-92233720368547840, %rax
	movl	$16383, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	cmpq	$1, %rax
	je	L337
	call	abort
L337:
	movabsq	$-18446744073709568, %rax
	movl	$49150, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	testq	%rax, %rax
	je	L338
	call	abort
L338:
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	cmpq	$-1, %rax
	je	L339
	call	abort
L339:
	movabsq	$-92233720368547840, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	cmpq	$-1, %rax
	je	L340
	call	abort
L340:
	movabsq	$-9223372036854775808, %rax
	movl	$49214, %edx
	pushq	%rdx
	pushq	%rax
	call	ld2sll
	addq	$16, %rsp
	movabsq	$-9223372036854775808, %rdx
	cmpq	%rdx, %rax
	je	L341
	call	abort
L341:
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
