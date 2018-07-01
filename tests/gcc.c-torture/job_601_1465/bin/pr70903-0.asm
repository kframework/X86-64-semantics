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
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$16, %rsp
	vmovdqa	%ymm0, -144(%rbp)
	movq	-144(%rbp), %rax
	vmovdqa	LC0(%rip), %ymm0
	vmovdqa	%xmm0, %xmm1
	vpinsrq	$1, %rax, %xmm1, %xmm1
	vinserti128	$0x0, %xmm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -48(%rbp)
	movzbl	-47(%rbp), %eax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	vpinsrb	$0, %eax, %xmm1, %xmm1
	vinserti128	$0x0, %xmm1, %ymm0, %ymm0
	vmovdqa	%ymm0, -80(%rbp)
	vmovdqa	-80(%rbp), %ymm0
	vmovdqa	%ymm0, -112(%rbp)
	movq	-112(%rbp), %rax
	vmovdqa	LC1(%rip), %ymm0
	vmovdqa	%xmm0, %xmm1
	vpinsrd	$0, %eax, %xmm1, %xmm1
	vinserti128	$0x0, %xmm1, %ymm0, %ymm0
	addq	$16, %rsp
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
.globl _start
_start:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$40, %rsp
	vpxor	%xmm0, %xmm0, %xmm0
	call	foo
	vmovdqa	%ymm0, -48(%rbp)
	movl	-44(%rbp), %eax
	cmpl	$255, %eax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
LC0:
	.quad	65535
	.quad	0
	.quad	0
	.quad	0
LC1:
	.long	0
	.long	255
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
