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
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -48(%rbp)
	movq	%rax, -40(%rbp)
	vmovq	%xmm2, %rdx
	vmovq	%xmm3, %rax
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm5
	vaddsd	-24(%rbp), %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm7
	vaddsd	-32(%rbp), %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
ag:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
bg:
	.long	0
	.long	-1073741824
	.long	0
	.long	1073741824
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	ag(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	ag+8(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movabsq	$-4611686018427387904, %rax
	movq	%rax, -32(%rbp)
	movabsq	$4611686018427387904, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rsi, %xmm2
	vmovq	%rcx, %xmm3
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	f
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm4
	vucomisd	-56(%rbp), %xmm4
	setp	%cl
	movl	$1, %edx
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm5
	vucomisd	-56(%rbp), %xmm5
	cmovne	%edx, %ecx
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm6
	vucomisd	-64(%rbp), %xmm6
	setp	%sil
	movl	$1, %edx
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm7
	vucomisd	-64(%rbp), %xmm7
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L12
	call	abort
L12:
	movabsq	$-4616189618054758400, %rax
	vmovq	%rax, %xmm2
	vucomisd	-72(%rbp), %xmm2
	setp	%cl
	movl	$1, %edx
	movabsq	$-4616189618054758400, %rax
	vmovq	%rax, %xmm3
	vucomisd	-72(%rbp), %xmm3
	cmovne	%edx, %ecx
	movq	-80(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC4(%rip), %xmm4
	setp	%sil
	movl	$1, %edx
	movq	-80(%rbp), %rax
	vmovq	%rax, %xmm5
	vucomisd	LC4(%rip), %xmm5
	movl	%edx, %eax
	cmove	%esi, %eax
	orl	%ecx, %eax
	cmpb	$1, %al
	jne	L13
	call	abort
L13:
	movl	$0, %edi
	call	exit
LC4:
	.long	0
	.long	1074266112
