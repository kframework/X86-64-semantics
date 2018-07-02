LCOLDB0:
LHOTB0:
	.p2align 4,,15
test:
	leaq	256(%rsi), %rcx
	.p2align 4,,10
	.p2align 3
L2:
	movl	%edx, %eax
	addq	$16, %rsi
	imulw	-16(%rsi), %ax
	addl	%eax, %edi
	cmpq	%rcx, %rsi
	jne	L2
	movzwl	%di, %eax
	ret
LCOLDE0:
LHOTE0:
LCOLDB6:
LHOTB6:
	.p2align 4,,15
.globl _start
_start:
	leaq	8(%rsp), %r10
	movl	$in, %eax
	andq	$-32, %rsp
	pushq	-8(%r10)
	andl	$31, %eax
	pushq	%rbp
	shrq	%rax
	movq	%rsp, %rbp
	negq	%rax
	pushq	%r10
	movl	%eax, %edi
	subq	$8, %rsp
	andl	$15, %edi
	je	L13
	leal	-1(%rdi), %esi
	xorl	%eax, %eax
	movl	$127, %r8d
	addq	$1, %rsi
	.p2align 4,,10
	.p2align 3
L7:
	movw	%ax, in(%rax,%rax)
	leal	1(%rax), %edx
	movl	%r8d, %ecx
	subl	%eax, %ecx
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	L7
	movl	$128, %r8d
	movl	%edi, %eax
	movl	$112, %r9d
	subl	%edi, %r8d
	movl	$7, %edi
L6:
	vmovdqa	LC2(%rip), %ymm6
	vmovd	%edx, %xmm7
	vmovdqa	LC3(%rip), %ymm5
	vbroadcastss	%xmm7, %ymm2
	vpaddd	LC1(%rip), %ymm2, %ymm2
	vmovdqa	LC4(%rip), %ymm4
	leaq	in(%rax,%rax), %rsi
	xorl	%eax, %eax
	vmovdqa	LC5(%rip), %ymm3
	.p2align 4,,10
	.p2align 3
L8:
	vpaddd	%ymm5, %ymm2, %ymm0
	addl	$1, %eax
	vpshufb	%ymm4, %ymm2, %ymm1
	addq	$32, %rsi
	vpshufb	%ymm3, %ymm0, %ymm0
	vpaddd	%ymm6, %ymm2, %ymm2
	vpor	%ymm0, %ymm1, %ymm0
	vpermq	$216, %ymm0, %ymm0
	vmovdqa	%ymm0, -32(%rsi)
	cmpl	%eax, %edi
	ja	L8
	leal	(%rdx,%r9), %eax
	subl	%r9d, %ecx
	cmpl	%r9d, %r8d
	je	L11
	leal	(%rax,%rcx), %edx
	.p2align 4,,10
	.p2align 3
L10:
	movslq	%eax, %rcx
	movw	%ax, in(%rcx,%rcx)
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	L10
L11:
	movl	$1, %edx
	movl	$in, %esi
	xorl	%edi, %edi
	vzeroupper
	call	test
	cmpl	$960, %eax
	jne	L21
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
L13:
	movl	$128, %r9d
	movl	$8, %edi
	movl	$128, %r8d
	xorl	%eax, %eax
	movl	$128, %ecx
	xorl	%edx, %edx
	jmp	L6
L21:
	call	abort
LCOLDE6:
LHOTE6:
	.comm	in,256,16
LC1:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
LC2:
	.long	16
	.long	16
	.long	16
	.long	16
	.long	16
	.long	16
	.long	16
	.long	16
LC3:
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
LC4:
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	8
	.byte	9
	.byte	12
	.byte	13
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	8
	.byte	9
	.byte	12
	.byte	13
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
LC5:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	8
	.byte	9
	.byte	12
	.byte	13
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	8
	.byte	9
	.byte	12
	.byte	13
