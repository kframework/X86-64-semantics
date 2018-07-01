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
	movl	LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	vmovss	LC1(%rip), %xmm0
	xorl	$-2147483648, %eax
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, -24(%rbp)
	movl	%eax, -20(%rbp)
	movq	-24(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	call	foo
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %ecx
	vmovd	%eax, %xmm2
	vcvtss2sd	%xmm2, %xmm1, %xmm1
	vmovq	%xmm1, %rdx
	movl	%ecx, %eax
	vmovd	%eax, %xmm4
	vcvtss2sd	%xmm4, %xmm3, %xmm3
	vmovq	%xmm3, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	jp	L12
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm0
	vucomisd	%xmm0, %xmm7
	jne	L12
	movq	-8(%rbp), %rax
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	jp	L12
	movabsq	$-4616189618054758400, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	je	L15
L12:
	call	abort
L15:
	movl	$0, %edi
	call	exit
LC0:
	.long	1065353216
LC1:
	.long	2147483648
	.long	0
	.long	0
	.long	0
