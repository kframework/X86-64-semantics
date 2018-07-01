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
	movl	%edi, -4(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	%xmm1, -24(%rbp)
	vmovsd	%xmm2, -32(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	%xmm1, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm2
	vucomisd	-24(%rbp), %xmm2
	jp	L12
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm3
	vucomisd	-24(%rbp), %xmm3
	jne	L12
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC1(%rip), %xmm4
	jp	L12
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm5
	vucomisd	LC1(%rip), %xmm5
	jne	L12
	cmpl	$3, -36(%rbp)
	jne	L12
	cmpl	$4, -40(%rbp)
	je	L13
L12:
	call	abort
L13:
	leave
	ret
LC3:
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$4, %edi
	movl	$3, %eax
	call	f
	movl	%eax, %ebx
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$3, %edi
	movl	$3, %eax
	call	f
	movl	%eax, %edx
	movabsq	$4611686018427387904, %rax
	movl	%ebx, %ecx
	vmovq	%rax, %xmm1
	vmovsd	LC0(%rip), %xmm0
	movl	$LC3, %esi
	movl	$LC3, %edi
	movl	$2, %eax
	call	g
	movl	$0, %edi
	call	exit
LC0:
	.long	0
	.long	1072693248
LC1:
	.long	0
	.long	1073741824
