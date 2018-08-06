u2f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
f2u:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	popq	%rbp
	ret
ok:
	.long	1
tstmul:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	u2f
	vmovd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	u2f
	vmovd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm1
	vmulss	-4(%rbp), %xmm1, %xmm0
	call	f2u
	cmpl	-28(%rbp), %eax
	je	L5
	movl	$0, ok(%rip)
L5:
	leave
	ret
expected:
	.long	4095
	.long	1065354240
	.long	4095
	.long	15
	.long	1070106760
	.long	23
	.long	15
	.long	1065632836
	.long	15
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L8
L9:
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$expected, %rax
	movl	8(%rax), %esi
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$expected, %rax
	movl	4(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$expected, %rax
	movl	(%rax), %eax
	movl	%esi, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	tstmul
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$expected, %rax
	movl	8(%rax), %esi
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$expected, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$expected, %rax
	movl	4(%rax), %eax
	movl	%esi, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	tstmul
	addl	$1, -4(%rbp)
L8:
	cmpl	$2, -4(%rbp)
	jbe	L9
	movl	ok(%rip), %eax
	testl	%eax, %eax
	jne	L10
	call	abort
L10:
	movl	$0, %edi
	call	exit
