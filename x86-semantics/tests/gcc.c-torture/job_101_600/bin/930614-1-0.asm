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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movabsq	$-4616189618054758400, %rax
	movq	%rax, (%rdx)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	$0, %eax
	movq	%rax, -8(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	f
	movq	-72(%rbp), %rdx
	movl	$0, %eax
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	jbe	L11
	movq	-72(%rbp), %rax
	vmovsd	LC2(%rip), %xmm0
	btcq	$63, %rax
	movq	%rax, -72(%rbp)
L11:
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	jbe	L21
	movq	-8(%rbp), %rax
	jmp	L15
L21:
	movq	-72(%rbp), %rax
L15:
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	vmovq	%rax, %xmm5
	vucomisd	-16(%rbp), %xmm5
	jp	L20
	vmovq	%rax, %xmm6
	vucomisd	-16(%rbp), %xmm6
	je	L22
L20:
	call	abort
L22:
	movl	$0, %edi
	call	exit
LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
