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
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sd	-20(%rbp), %xmm1, %xmm1
	vmovq	%xmm1, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	-24(%rbp), %xmm0, %xmm0
	vmovq	%rax, %xmm3
	vdivsd	%xmm0, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, -8(%rbp)
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sd	-28(%rbp), %xmm4, %xmm4
	vmovq	%xmm4, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	-32(%rbp), %xmm0, %xmm0
	vmovq	%rax, %xmm6
	vdivsd	%xmm0, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm7
	vucomisd	-8(%rbp), %xmm7
	seta	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$4, %ecx
	movl	$3, %edx
	movl	$24, %esi
	movl	$2, %edi
	call	foo
	testl	%eax, %eax
	jne	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
