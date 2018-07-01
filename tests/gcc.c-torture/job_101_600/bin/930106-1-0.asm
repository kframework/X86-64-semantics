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
	movabsq	$4607182418800017408, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$400032, %rsp
	movl	$0, %eax
	call	g
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	call	g
	vmovq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	$0, %eax
	call	g
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vaddsd	-16(%rbp), %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovq	%rax, %xmm4
	vaddsd	-24(%rbp), %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vcvttsd2si	%xmm5, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	f
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sd	%eax, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm1
	vucomisd	LC1(%rip), %xmm1
	jp	L16
	vmovq	%rax, %xmm2
	vucomisd	LC1(%rip), %xmm2
	je	L17
L16:
	call	abort
L17:
	movl	$0, %edi
	call	exit
LC1:
	.long	0
	.long	1074266112
