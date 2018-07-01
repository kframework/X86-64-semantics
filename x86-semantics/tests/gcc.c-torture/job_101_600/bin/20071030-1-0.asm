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
CalcPing:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	L10
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	jmp	L11
L10:
	movl	LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rbx
	movl	$0, -20(%rbp)
	jmp	L12
L15:
	movl	8(%rbx), %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm1
	vmovd	%edx, %xmm2
	vucomiss	%xmm2, %xmm1
	jbe	L13
	movl	8(%rbx), %eax
	movl	-12(%rbp), %edx
	vmovd	%edx, %xmm4
	vmovd	%eax, %xmm5
	vaddss	%xmm5, %xmm4, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, -12(%rbp)
	addl	$1, -16(%rbp)
L13:
	addl	$1, -20(%rbp)
	addq	$32, %rbx
L12:
	cmpl	$63, -20(%rbp)
	jle	L15
	cmpl	$0, -16(%rbp)
	jne	L16
	movl	$9999, %eax
	jmp	L11
L16:
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-16(%rbp), %xmm0, %xmm0
	movl	-12(%rbp), %eax
	vmovd	%eax, %xmm7
	vdivss	%xmm0, %xmm7, %xmm6
	vmovd	%xmm6, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	LC1(%rip), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm2
	vmulss	%xmm2, %xmm1, %xmm0
	vmovd	%xmm0, %eax
	vmovd	%eax, %xmm3
	vcvttss2si	%xmm3, %eax
L11:
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$2064, %rsp
	leaq	-2064(%rbp), %rax
	movl	$2056, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	LC2(%rip), %eax
	movl	%eax, -2048(%rbp)
	leaq	-2064(%rbp), %rax
	movq	%rax, %rdi
	call	CalcPing
	cmpl	$1000, %eax
	je	L19
	call	abort
L19:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	0
LC1:
	.long	1148846080
LC2:
	.long	1065353216
