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
	movq	%rdi, -40(%rbp)
	vmovapd	LC0(%rip), %xmm0
	vmovaps	%xmm0, -16(%rbp)
	vmovdqa	LC1(%rip), %xmm0
	vmovaps	%xmm0, -32(%rbp)
	vmovapd	-16(%rbp), %xmm0
	vpermilpd	$1, %xmm0, %xmm0
	movq	-40(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC2(%rip), %xmm0
	jp	L11
	vmovq	%rax, %xmm1
	vucomisd	LC2(%rip), %xmm1
	jne	L11
	movq	-8(%rbp), %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L11
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L15
L11:
	call	abort
L15:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
LC1:
	.quad	10000000001
	.quad	0
LC2:
	.long	0
	.long	1073741824
