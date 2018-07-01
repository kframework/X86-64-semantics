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
u:
	.long	-2147483519
	.comm	f1,4,4
	.comm	f2,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	u(%rip), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	L10
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ssq	%rax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	jmp	L11
L10:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ssq	%rdx, %xmm0, %xmm0
	vaddss	%xmm0, %xmm0, %xmm2
	vmovd	%xmm2, %eax
L11:
	movl	%eax, f1(%rip)
	movl	LC0(%rip), %eax
	movl	%eax, f2(%rip)
	movl	f1(%rip), %eax
	movl	f2(%rip), %edx
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vucomiss	%xmm4, %xmm3
	jp	L14
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	je	L15
L14:
	call	abort
L15:
	movl	$0, %edi
	call	exit
LC0:
	.long	1325400065
