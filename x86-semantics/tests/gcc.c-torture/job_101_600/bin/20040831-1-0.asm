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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$-4600427019358961664, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC1(%rip), %xmm0
	jbe	L17
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm1
	vucomisd	LC2(%rip), %xmm1
	jae	L12
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm2
	vcvttsd2siq	%xmm2, %rax
	jmp	L14
L12:
	movq	-8(%rbp), %rax
	movabsq	$4890909195324358656, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm6
	vcvttsd2siq	%xmm6, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
	jmp	L14
L17:
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm7
	vcvttsd2siq	%xmm7, %rax
L14:
	movq	%rax, -16(%rbp)
	cmpq	$-12, -16(%rbp)
	je	L15
	call	abort
L15:
	movl	$0, %edi
	call	exit
LC1:
	.long	0
	.long	1086556160
LC2:
	.long	0
	.long	1138753536
