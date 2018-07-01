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
	subq	$120, %rsp
	vmovss	%xmm0, -212(%rbp)
	vmovss	%xmm1, -216(%rbp)
	vmovss	%xmm2, -220(%rbp)
	vmovss	%xmm3, -224(%rbp)
	vmovss	%xmm4, -228(%rbp)
	movq	%rdi, -176(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	vmovss	%xmm5, -232(%rbp)
	movl	$0, -208(%rbp)
	movl	$144, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-204(%rbp), %eax
	cmpl	$176, %eax
	jae	L11
	movq	-192(%rbp), %rdx
	movl	-204(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	addl	$16, %edx
	movl	%edx, -204(%rbp)
	jmp	L12
L11:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
L12:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	vmovq	%rax, %xmm0
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$4619567317775286272, %rax
	vmovq	%rax, %xmm6
	vmovss	LC1(%rip), %xmm5
	vmovss	LC2(%rip), %xmm4
	vmovss	LC3(%rip), %xmm3
	vmovss	LC4(%rip), %xmm2
	vmovss	LC5(%rip), %xmm1
	vmovss	LC6(%rip), %xmm0
	movl	$7, %eax
	call	f
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm7
	vucomisd	LC0(%rip), %xmm7
	jp	L17
	vmovq	%rax, %xmm1
	vucomisd	LC0(%rip), %xmm1
	je	L18
L17:
	call	abort
L18:
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1075576832
LC1:
	.long	1086324736
LC2:
	.long	1084227584
LC3:
	.long	1082130432
LC4:
	.long	1077936128
LC5:
	.long	1073741824
LC6:
	.long	1065353216
