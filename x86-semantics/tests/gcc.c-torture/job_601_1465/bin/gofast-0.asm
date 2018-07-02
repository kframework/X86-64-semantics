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
	jp	L150
	vmovd	%eax, %xmm3
	vucomiss	LC4(%rip), %xmm3
	je	L101
L150:
	movl	$LC5, %edi
	call	fail
L101:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC6(%rip), %xmm0
	call	fp_sub
	vmovd	%xmm0, %eax
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L151
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L103
L151:
	movl	$LC7, %edi
	call	fail
L103:
	vmovss	LC6(%rip), %xmm1
	vmovss	LC4(%rip), %xmm0
	call	fp_mul
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm2
	vucomiss	LC8(%rip), %xmm2
	jp	L152
	vmovd	%eax, %xmm3
	vucomiss	LC8(%rip), %xmm3
	je	L105
L152:
	movl	$LC9, %edi
	call	fail
L105:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC6(%rip), %xmm0
	call	fp_div
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm4
	vucomiss	LC10(%rip), %xmm4
	jp	L153
	vmovd	%eax, %xmm5
	vucomiss	LC10(%rip), %xmm5
	je	L107
L153:
	movl	$LC11, %edi
	call	fail
L107:
	vmovss	LC3(%rip), %xmm0
	call	fp_neg
	vmovd	%xmm0, %eax
	movl	LC12(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L154
	movl	LC12(%rip), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L109
L154:
	movl	$LC13, %edi
	call	fail
L109:
	vmovsd	LC14(%rip), %xmm1
	vmovsd	LC14(%rip), %xmm0
	call	dp_add
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm4
	vucomisd	LC15(%rip), %xmm4
	jp	L155
	vmovq	%rax, %xmm5
	vucomisd	LC15(%rip), %xmm5
	je	L111
L155:
	movl	$LC16, %edi
	call	fail
L111:
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
	jp	L156
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L113
L156:
	movl	$LC18, %edi
	call	fail
L113:
	movabsq	$4613937818241073152, %rdx
	movabsq	$4611686018427387904, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dp_mul
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm4
	vucomisd	LC19(%rip), %xmm4
	jp	L157
	vmovq	%rax, %xmm5
	vucomisd	LC19(%rip), %xmm5
	je	L115
L157:
	movl	$LC20, %edi
	call	fail
L115:
	movabsq	$4611686018427387904, %rdx
	movabsq	$4613937818241073152, %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	dp_div
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC21(%rip), %xmm6
	jp	L158
	vmovq	%rax, %xmm7
	vucomisd	LC21(%rip), %xmm7
	je	L117
L158:
	movl	$LC22, %edi
	call	fail
L117:
	vmovsd	LC14(%rip), %xmm0
	call	dp_neg
	vmovq	%xmm0, %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L159
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L119
L159:
	movl	$LC24, %edi
	call	fail
L119:
	vmovss	LC10(%rip), %xmm0
	call	fp_to_dp
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vucomisd	LC21(%rip), %xmm6
	jp	L160
	vmovq	%rax, %xmm7
	vucomisd	LC21(%rip), %xmm7
	je	L121
L160:
	movl	$LC25, %edi
	call	fail
L121:
	movabsq	$4609434218613702656, %rax
	vmovq	%rax, %xmm0
	call	dp_to_fp
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm2
	vucomiss	LC10(%rip), %xmm2
	jp	L161
	vmovd	%eax, %xmm3
	vucomiss	LC10(%rip), %xmm3
	je	L123
L161:
	movl	$LC26, %edi
	call	fail
L123:
	movl	$1, %edi
	call	floatsisf
	vmovd	%xmm0, %eax
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L162
	movl	LC3(%rip), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L125
L162:
	movl	$LC27, %edi
	call	fail
L125:
	movl	$1, %edi
	call	floatsidf
	vmovq	%xmm0, %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L163
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L127
L163:
	movl	$LC28, %edi
	call	fail
L127:
	vmovss	LC29(%rip), %xmm0
	call	fixsfsi
	cmpl	$1, %eax
	je	L129
	movl	$LC30, %edi
	call	fail
L129:
	vmovss	LC29(%rip), %xmm0
	call	fixunssfsi
	cmpl	$1, %eax
	je	L130
	movl	$LC31, %edi
	call	fail
L130:
	movabsq	$4609073930643513016, %rax
	vmovq	%rax, %xmm0
	call	fixdfsi
	cmpl	$1, %eax
	je	L131
	movl	$LC33, %edi
	call	fail
L131:
	movabsq	$4609073930643513016, %rax
	vmovq	%rax, %xmm0
	call	fixunsdfsi
	cmpl	$1, %eax
	je	L132
	movl	$LC34, %edi
	call	fail
L132:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	eqsf2
	testl	%eax, %eax
	jne	L133
	movl	$LC35, %edi
	call	fail
L133:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	eqsf2
	testl	%eax, %eax
	je	L134
	movl	$LC36, %edi
	call	fail
L134:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	nesf2
	testl	%eax, %eax
	jne	L135
	movl	$LC37, %edi
	call	fail
L135:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	nesf2
	testl	%eax, %eax
	je	L136
	movl	$LC37, %edi
	call	fail
L136:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC4(%rip), %xmm0
	call	gtsf2
	testl	%eax, %eax
	jne	L137
	movl	$LC38, %edi
	call	fail
L137:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	gtsf2
	testl	%eax, %eax
	je	L138
	movl	$LC39, %edi
	call	fail
L138:
	vmovss	LC3(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	gtsf2
	testl	%eax, %eax
	je	L139
	movl	$LC41, %edi
	call	fail
L139:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC4(%rip), %xmm0
	call	gesf2
	testl	%eax, %eax
	jne	L140
	movl	$LC42, %edi
	call	fail
L140:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	gesf2
	testl	%eax, %eax
	jne	L141
	movl	$LC43, %edi
	call	fail
L141:
	vmovss	LC3(%rip), %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	call	gesf2
	testl	%eax, %eax
	je	L142
	movl	$LC44, %edi
	call	fail
L142:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	ltsf2
	testl	%eax, %eax
	jne	L143
	movl	$LC45, %edi
	call	fail
L143:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	ltsf2
	testl	%eax, %eax
	je	L144
	movl	$LC46, %edi
	call	fail
L144:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC3(%rip), %xmm0
	call	ltsf2
	testl	%eax, %eax
	je	L145
	movl	$LC47, %edi
	call	fail
L145:
	vmovss	LC4(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	lesf2
	testl	%eax, %eax
	jne	L146
	movl	$LC48, %edi
	call	fail
L146:
	vmovss	LC3(%rip), %xmm1
	vmovss	LC3(%rip), %xmm0
	call	lesf2
	testl	%eax, %eax
	jne	L147
	movl	$LC49, %edi
	call	fail
L147:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	LC3(%rip), %xmm0
	call	lesf2
	testl	%eax, %eax
	je	L148
	movl	$LC50, %edi
	call	fail
L148:
	movl	fail_count(%rip), %eax
	testl	%eax, %eax
	je	L149
	call	abort
L149:
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
