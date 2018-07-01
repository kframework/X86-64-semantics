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
g:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$400016, %rsp
	movl	$0, -4(%rbp)
	jmp	L11
L12:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sd	-4(%rbp), %xmm2, %xmm2
	vmovq	%xmm2, %rax
	movabsq	$4611686018427387904, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vdivsd	%xmm4, %xmm3, %xmm0
	movabsq	$4613937818241073152, %rax
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm0, %xmm0
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm1
	vmovsd	LC2(%rip), %xmm0
	movl	$2, %eax
	call	g
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	-4(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	movabsq	$4611686018427387904, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vdivsd	%xmm3, %xmm2, %xmm0
	movabsq	$4613937818241073152, %rax
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm0, %xmm0
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm6
	vaddsd	%xmm6, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	movabsq	$4611686018427387904, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm0
	movl	$2, %eax
	call	g
	addl	$1, -4(%rbp)
L11:
	cmpl	$0, -4(%rbp)
	jle	L12
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	f
	movl	$0, %edi
	call	exit
LC2:
	.long	0
	.long	1072693248
