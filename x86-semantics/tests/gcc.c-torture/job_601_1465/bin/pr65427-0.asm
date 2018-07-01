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
	.comm	a,32,32
	.comm	b,32,32
	.comm	c,32,32
	.comm	d,32,32
	.comm	e,32,32
	.comm	f,32,32
foo:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
L12:
	cmpl	$0, -20(%rbp)
	je	L10
	vmovdqa	a(%rip), %ymm1
	vmovdqa	c(%rip), %ymm0
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, d(%rip)
	jmp	L11
L10:
	vmovdqa	a(%rip), %ymm1
	vmovdqa	b(%rip), %ymm0
	vpxor	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, d(%rip)
L11:
	cmpl	$0, -24(%rbp)
	jne	L12
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$8, %rsp
	leaq	16(%rbp), %r10
	vmovdqa	LC0(%rip), %ymm0
	vmovdqa	%ymm0, a(%rip)
	vmovdqa	LC1(%rip), %ymm0
	vmovdqa	%ymm0, b(%rip)
	vmovdqa	LC2(%rip), %ymm0
	vmovdqa	%ymm0, e(%rip)
	movl	$0, %esi
	movl	$0, %edi
	call	foo
	movl	$32, %edx
	movl	$e, %esi
	movl	$d, %edi
	call	memcmp
	testl	%eax, %eax
	je	L14
	call	abort
L14:
	vmovdqa	LC3(%rip), %ymm0
	vmovdqa	%ymm0, c(%rip)
	vmovdqa	LC4(%rip), %ymm0
	vmovdqa	%ymm0, f(%rip)
	movl	$0, %esi
	movl	$1, %edi
	call	foo
	movl	$32, %edx
	movl	$f, %esi
	movl	$d, %edi
	call	memcmp
	testl	%eax, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	addq	$8, %rsp
	popq	%r10
	popq	%rbp
	ret
LC0:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
LC1:
	.long	64
	.long	128
	.long	64
	.long	128
	.long	64
	.long	128
	.long	64
	.long	128
LC2:
	.long	65
	.long	130
	.long	67
	.long	132
	.long	69
	.long	134
	.long	71
	.long	136
LC3:
	.long	128
	.long	64
	.long	128
	.long	64
	.long	128
	.long	64
	.long	128
	.long	64
LC4:
	.long	129
	.long	66
	.long	131
	.long	68
	.long	133
	.long	70
	.long	135
	.long	72
