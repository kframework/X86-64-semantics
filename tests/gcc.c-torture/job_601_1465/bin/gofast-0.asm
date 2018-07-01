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
fp_add:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vaddss	-8(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
fp_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vsubss	-8(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
fp_mul:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vmulss	-8(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
fp_div:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vdivss	-8(%rbp), %xmm3, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
fp_neg:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovss	LC0(%rip), %xmm0
	xorl	$-2147483648, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
dp_add:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vaddsd	-16(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
dp_sub:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vsubsd	-16(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
dp_mul:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vmulsd	-16(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
dp_div:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vdivsd	-16(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
dp_neg:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovsd	LC1(%rip), %xmm0
	btcq	$63, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
fp_to_dp:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vcvtss2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
dp_to_fp:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vcvtsd2ss	-8(%rbp), %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
eqsf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	setnp	%cl
	movl	$0, %edx
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	movl	%edx, %eax
	cmove	%ecx, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
nesf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	setp	%cl
	movl	$1, %edx
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	-8(%rbp), %xmm3
	movl	%edx, %eax
	cmove	%ecx, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
gtsf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
gesf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-8(%rbp), %xmm2
	setae	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
ltsf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
lesf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	setae	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
eqdf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	-16(%rbp), %xmm2
	setnp	%cl
	movl	$0, %edx
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vucomisd	-16(%rbp), %xmm3
	movl	%edx, %eax
	cmove	%ecx, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
nedf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	-16(%rbp), %xmm2
	setp	%cl
	movl	$1, %edx
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vucomisd	-16(%rbp), %xmm3
	movl	%edx, %eax
	cmove	%ecx, %eax
	movzbl	%al, %eax
	popq	%rbp
	ret
gtdf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	-16(%rbp), %xmm2
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
gedf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	-16(%rbp), %xmm2
	setae	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
ltdf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	-8(%rbp), %xmm2
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
ledf2:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	%xmm1, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	-8(%rbp), %xmm2
	setae	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
floatsisf:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	-4(%rbp), %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
floatsidf:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
fixsfsi:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vcvttss2si	%xmm1, %eax
	popq	%rbp
	ret
fixdfsi:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2si	%xmm1, %eax
	popq	%rbp
	ret
fixunssfsi:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm1
	vcvttss2siq	%xmm1, %rax
	popq	%rbp
	ret
fixunsdfsi:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vcvttsd2siq	%xmm1, %rax
	popq	%rbp
	ret
	.bss
fail_count:
	.zero	4
LC2:
	.string	"Test failed: %s\n"
fail:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	fail_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, fail_count(%rip)
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	leave
	ret
LC5:
	.string	"fp_add 1+1"
LC7:
	.string	"fp_sub 3-2"
LC9:
	.string	"fp_mul 2*3"
LC11:
	.string	"fp_div 3/2"
LC13:
	.string	"fp_neg 1"
LC16:
	.string	"dp_add 1+1"
LC18:
	.string	"dp_sub 3-2"
LC20:
	.string	"dp_mul 2*3"
LC22:
	.string	"dp_div 3/2"
LC24:
	.string	"dp_neg 1"
LC25:
	.string	"fp_to_dp 1.5"
LC26:
	.string	"dp_to_fp 1.5"
LC27:
	.string	"floatsisf 1"
LC28:
	.string	"floatsidf 1"
LC30:
	.string	"fixsfsi 1.42"
LC31:
	.string	"fixunssfsi 1.42"
LC33:
	.string	"fixdfsi 1.42"
LC34:
	.string	"fixunsdfsi 1.42"
LC35:
	.string	"eqsf2 1==1"
LC36:
	.string	"eqsf2 1==2"
LC37:
	.string	"nesf2 1!=1"
LC38:
	.string	"gtsf2 2>1"
LC39:
	.string	"gtsf2 1>1"
LC41:
	.string	"gtsf2 0>1"
LC42:
	.string	"gesf2 2>=1"
LC43:
	.string	"gesf2 1>=1"
LC44:
	.string	"gesf2 0>=1"
LC45:
	.string	"ltsf2 1<2"
LC46:
	.string	"ltsf2 1<1"
LC47:
	.string	"ltsf2 1<0"
LC48:
	.string	"lesf2 1<=2"
LC49:
	.string	"lesf2 1<=1"
LC50:
	.string	"lesf2 1<=0"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	fp_add
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm2
	vucomiss	LC4(%rip), %xmm2
	jp	L120
	vmovd	%eax, %xmm3
	vucomiss	LC4(%rip), %xmm3
	je	L71
L120:
	movl	$LC5, %edi
	call	fail
L71:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC6(%rip), %xmm0
	call	fp_sub
	vmovd	%xmm0, %eax
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L121
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L73
L121:
	movl	$LC7, %edi
	call	fail
L73:
	vmovss	LC6(%rip), %xmm1
	vmovss	LC4(%rip), %xmm0
	call	fp_mul
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm2
	vucomiss	LC8(%rip), %xmm2
	jp	L122
	vmovd	%eax, %xmm3
	vucomiss	LC8(%rip), %xmm3
	je	L75
L122:
	movl	$LC9, %edi
	call	fail
L75:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC6(%rip), %xmm0
	call	fp_div
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm4
	vucomiss	LC10(%rip), %xmm4
	jp	L123
	vmovd	%eax, %xmm5
	vucomiss	LC10(%rip), %xmm5
	je	L77
L123:
	movl	$LC11, %edi
	call	fail
L77:
	vmovss	LC3(%rip), %xmm0
	call	fp_neg
	vmovd	%xmm0, %eax
	movl	LC12(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L124
	movl	LC12(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L79
L124:
	movl	$LC13, %edi
	call	fail
L79:
	vmovsd	LC14(%rip), %xmm1
	vmovsd	LC14(%rip), %xmm0
	call	dp_add
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm4
	vucomisd	LC15(%rip), %xmm4
	jp	L125
	vmovq	%rax, %xmm5
	vucomisd	LC15(%rip), %xmm5
	je	L81
L125:
	movl	$LC16, %edi
	call	fail
L81:
	movabsq	$4611686018427387904, %rdx
	movabsq	$4613937818241073152, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dp_sub
	vmovq	%xmm0, %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L126
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L83
L126:
	movl	$LC18, %edi
	call	fail
L83:
	movabsq	$4613937818241073152, %rdx
	movabsq	$4611686018427387904, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dp_mul
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm4
	vucomisd	LC19(%rip), %xmm4
	jp	L127
	vmovq	%rax, %xmm5
	vucomisd	LC19(%rip), %xmm5
	je	L85
L127:
	movl	$LC20, %edi
	call	fail
L85:
	movabsq	$4611686018427387904, %rdx
	movabsq	$4613937818241073152, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dp_div
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC21(%rip), %xmm6
	jp	L128
	vmovq	%rax, %xmm7
	vucomisd	LC21(%rip), %xmm7
	je	L87
L128:
	movl	$LC22, %edi
	call	fail
L87:
	vmovsd	LC14(%rip), %xmm0
	call	dp_neg
	vmovq	%xmm0, %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L129
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L89
L129:
	movl	$LC24, %edi
	call	fail
L89:
	vmovss	LC10(%rip), %xmm0
	call	fp_to_dp
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC21(%rip), %xmm6
	jp	L130
	vmovq	%rax, %xmm7
	vucomisd	LC21(%rip), %xmm7
	je	L91
L130:
	movl	$LC25, %edi
	call	fail
L91:
	movabsq	$4609434218613702656, %rax
	vmovq	%rax, %xmm0
	call	dp_to_fp
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm2
	vucomiss	LC10(%rip), %xmm2
	jp	L131
	vmovd	%eax, %xmm3
	vucomiss	LC10(%rip), %xmm3
	je	L93
L131:
	movl	$LC26, %edi
	call	fail
L93:
	movl	$1, %edi
	call	floatsisf
	vmovd	%xmm0, %eax
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L132
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L95
L132:
	movl	$LC27, %edi
	call	fail
L95:
	movl	$1, %edi
	call	floatsidf
	vmovq	%xmm0, %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L133
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L97
L133:
	movl	$LC28, %edi
	call	fail
L97:
	vmovss	LC29(%rip), %xmm0
	call	fixsfsi
	cmpl	$1, %eax
	je	L99
	movl	$LC30, %edi
	call	fail
L99:
	vmovss	LC29(%rip), %xmm0
	call	fixunssfsi
	cmpl	$1, %eax
	je	L100
	movl	$LC31, %edi
	call	fail
L100:
	movabsq	$4609073930643513016, %rax
	vmovq	%rax, %xmm0
	call	fixdfsi
	cmpl	$1, %eax
	je	L101
	movl	$LC33, %edi
	call	fail
L101:
	movabsq	$4609073930643513016, %rax
	vmovq	%rax, %xmm0
	call	fixunsdfsi
	cmpl	$1, %eax
	je	L102
	movl	$LC34, %edi
	call	fail
L102:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	eqsf2
	testl	%eax, %eax
	jne	L103
	movl	$LC35, %edi
	call	fail
L103:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	eqsf2
	testl	%eax, %eax
	je	L104
	movl	$LC36, %edi
	call	fail
L104:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	nesf2
	testl	%eax, %eax
	jne	L105
	movl	$LC37, %edi
	call	fail
L105:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	nesf2
	testl	%eax, %eax
	je	L106
	movl	$LC37, %edi
	call	fail
L106:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC4(%rip), %xmm0
	call	gtsf2
	testl	%eax, %eax
	jne	L107
	movl	$LC38, %edi
	call	fail
L107:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	gtsf2
	testl	%eax, %eax
	je	L108
	movl	$LC39, %edi
	call	fail
L108:
	vmovss	LC3(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	gtsf2
	testl	%eax, %eax
	je	L109
	movl	$LC41, %edi
	call	fail
L109:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC4(%rip), %xmm0
	call	gesf2
	testl	%eax, %eax
	jne	L110
	movl	$LC42, %edi
	call	fail
L110:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	gesf2
	testl	%eax, %eax
	jne	L111
	movl	$LC43, %edi
	call	fail
L111:
	vmovss	LC3(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	gesf2
	testl	%eax, %eax
	je	L112
	movl	$LC44, %edi
	call	fail
L112:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	ltsf2
	testl	%eax, %eax
	jne	L113
	movl	$LC45, %edi
	call	fail
L113:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	ltsf2
	testl	%eax, %eax
	je	L114
	movl	$LC46, %edi
	call	fail
L114:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC3(%rip), %xmm0
	call	ltsf2
	testl	%eax, %eax
	je	L115
	movl	$LC47, %edi
	call	fail
L115:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	lesf2
	testl	%eax, %eax
	jne	L116
	movl	$LC48, %edi
	call	fail
L116:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	lesf2
	testl	%eax, %eax
	jne	L117
	movl	$LC49, %edi
	call	fail
L117:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC3(%rip), %xmm0
	call	lesf2
	testl	%eax, %eax
	je	L118
	movl	$LC50, %edi
	call	fail
L118:
	movl	fail_count(%rip), %eax
	testl	%eax, %eax
	je	L119
	call	abort
L119:
	movl	$0, %edi
	call	exit
LC0:
	.long	2147483648
	.long	0
	.long	0
	.long	0
LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
LC3:
	.long	1065353216
LC4:
	.long	1073741824
LC6:
	.long	1077936128
LC8:
	.long	1086324736
LC10:
	.long	1069547520
LC12:
	.long	3212836864
LC14:
	.long	0
	.long	1072693248
LC15:
	.long	0
	.long	1073741824
LC19:
	.long	0
	.long	1075314688
LC21:
	.long	0
	.long	1073217536
LC29:
	.long	1068876431
