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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	popq	%rbp
	ret
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	%xmm1, -48(%rbp)
	vmovsd	%xmm2, -56(%rbp)
	vmovsd	%xmm3, -64(%rbp)
	movq	-40(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	-48(%rbp), %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm7
	vmulsd	-64(%rbp), %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -16(%rbp)
	movl	$16, %eax
	subq	$1, %rax
	addq	$47, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$31, %rax
	shrq	$5, %rax
	salq	$5, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	f
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vmulsd	-16(%rbp), %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm4
	vmulsd	-40(%rbp), %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm6
	vaddsd	-48(%rbp), %xmm6, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm0
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movabsq	$4607182418800017408, %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	movq	%rax, -16(%rbp)
	movabsq	$4621819117588971520, %rax
	movq	%rax, -24(%rbp)
	movl	$0, %eax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	vmovq	%rsi, %xmm3
	vmovq	%rcx, %xmm2
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	g
	vmovq	%xmm0, %rax
	movl	$0, %edx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L18
	movl	$0, %edx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L19
L18:
	call	abort
L19:
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm1
	vucomisd	-8(%rbp), %xmm1
	jp	L15
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm2
	vucomisd	-8(%rbp), %xmm2
	jne	L15
	movl	$0, %eax
	vmovq	%rax, %xmm3
	vucomisd	-16(%rbp), %xmm3
	jp	L15
	movl	$0, %eax
	vmovq	%rax, %xmm4
	vucomisd	-16(%rbp), %xmm4
	jne	L15
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm5
	vucomisd	LC2(%rip), %xmm5
	jp	L15
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC2(%rip), %xmm6
	jne	L15
	movl	$0, %eax
	vmovq	%rax, %xmm7
	vucomisd	-32(%rbp), %xmm7
	jp	L15
	movl	$0, %eax
	vmovq	%rax, %xmm0
	vucomisd	-32(%rbp), %xmm0
	je	L20
L15:
	call	abort
L20:
	movl	$0, %edi
	call	exit
LC2:
	.long	0
	.long	1076101120
