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
test:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	%xmm1, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm3
	vsubsd	-24(%rbp), %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	-24(%rbp), %rcx
	movabsq	$4607182418800017408, %rdx
	vmovq	%rcx, %xmm5
	vmovq	%rdx, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm4
	vmovq	%xmm4, %rdx
	vmovq	%rdx, %xmm7
	vmulsd	-32(%rbp), %xmm7, %xmm0
	vmovq	%rax, %xmm2
	vdivsd	%xmm0, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$4611686018427387904, %rax
	vmovq	%rax, %xmm1
	vmovsd	LC0(%rip), %xmm0
	call	test
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movabsq	$4597814931575086776, %rax
	vmovq	%rax, %xmm2
	vucomisd	-8(%rbp), %xmm2
	ja	L12
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vucomisd	LC3(%rip), %xmm3
	jbe	L15
L12:
	call	abort
L15:
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1072693248
LC3:
	.long	171798692
	.long	1070638039
