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
sub:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rdx
	movabsq	$4607182418800017408, %rax
	vmovq	%rdx, %xmm2
	vmovq	%rax, %xmm3
	vaddsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$4611686018427387904, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	call	sub
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC2(%rip), %xmm1
	jp	L14
	vmovq	%rax, %xmm2
	vucomisd	LC2(%rip), %xmm2
	je	L15
L14:
	call	abort
L15:
	movl	$0, %edi
	call	exit
LC2:
	.long	0
	.long	1074266112
