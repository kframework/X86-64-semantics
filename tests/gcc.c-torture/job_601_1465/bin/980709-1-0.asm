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
	movabsq	$4629700416936869888, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$4599676419421066581, %rdx
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	pow
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$4591870180066957722, %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vaddsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm5
	vucomisd	LC3(%rip), %xmm5
	jbe	L10
	movq	-8(%rbp), %rax
	movabsq	$4591870180066957722, %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm0
	movabsq	$4614331437352104961, %rax
	vmovq	%rax, %xmm1
	vucomisd	%xmm0, %xmm1
	jbe	L10
	movl	$0, %edi
	call	exit
L10:
	call	abort
LC3:
	.long	2538222593
	.long	1074357758
