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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	%xmm1, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	$1, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm0
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm0
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm7
	vmulsd	-48(%rbp), %xmm7, %xmm1
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm2
	vmulsd	-56(%rbp), %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, (%rcx)
	addl	$1, -4(%rbp)
L10:
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	-4(%rbp), %eax
	jg	L11
	popq	%rbp
	ret
expected:
	.long	0
	.long	0
	.long	0
	.long	1076101120
	.long	0
	.long	1078329344
	.long	0
	.long	1079738368
	.long	0
	.long	1080885248
	.long	0
	.long	1082040320
	.long	0
	.long	1083170816
	.long	0
	.long	1084242944
	.long	0
	.long	1085290496
	.long	0
	.long	1086340352
	.long	0
	.long	1087390464
	.long	0
	.long	1088439744
	.long	0
	.long	1089488512
	.long	0
	.long	1090537296
	.long	0
	.long	1091586032
	.long	0
	.long	1092634684
	.long	0
	.long	1093683256
	.long	0
	.long	1094731837
	.long	0
	.long	1095780419
	.long	3221225472
	.long	1096828997
	.long	2147483648
	.long	1097877574
	.long	1342177280
	.long	1098926151
	.long	4026531840
	.long	1099974727
	.long	1006632960
	.long	1101023304
	.long	939524096
	.long	1102071880
	.long	1023410176
	.long	1103120456
	.long	1124073472
	.long	1104169032
	.long	1170210816
	.long	1105217608
	.long	1182793728
	.long	1106266184
	.long	1196425216
	.long	1107314760
	.long	1206910976
	.long	1108363336
	.long	0
	.long	1075314688
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$784, %rsp
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	movl	-4(%rbp), %eax
	andl	$3, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -272(%rbp,%rdx,8)
	movl	-4(%rbp), %eax
	andl	$7, %eax
	subl	$4, %eax
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sd	%eax, %xmm3, %xmm3
	vmovq	%xmm3, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -528(%rbp,%rdx,8)
	movl	-4(%rbp), %eax
	andl	$7, %eax
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sd	%eax, %xmm4, %xmm4
	vmovq	%xmm4, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -784(%rbp,%rdx,8)
	addl	$1, -4(%rbp)
L13:
	cmpl	$31, -4(%rbp)
	jle	L14
	movabsq	$4613937818241073152, %rdx
	movabsq	$4611686018427387904, %rax
	leaq	-784(%rbp), %r8
	leaq	-528(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	movl	$32, %ecx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	movq	%r8, %rdx
	call	foo
	movl	$0, -4(%rbp)
	jmp	L15
L18:
	movl	-4(%rbp), %eax
	cltq
	movq	-272(%rbp,%rax,8), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	expected(,%rdx,8), %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	jp	L20
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm7
	je	L21
L20:
	call	abort
L21:
	addl	$1, -4(%rbp)
L15:
	cmpl	$31, -4(%rbp)
	jle	L18
	movl	$0, %eax
	leave
	ret
