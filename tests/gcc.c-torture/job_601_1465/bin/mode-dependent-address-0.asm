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
f883b:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movl	$1, %ecx
	testw	%ax, %ax
	cmovg	%ecx, %eax
	movswl	%ax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movl	(%rax), %eax
	andl	$31, %eax
	sarx	%eax, %ecx, %eax
	xorl	$1, %eax
	addl	$32, %eax
	sarl	$7, %eax
	orl	$-5, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-48(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	andl	%ecx, %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
L10:
	cmpl	$95, -4(%rbp)
	jle	L11
	popq	%rbp
	ret
	.comm	result,96,64
	.comm	arg1,192,64
	.comm	arg2,384,64
	.comm	arg3,768,64
	.comm	arg4,96,64
LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	0
	.long	1
	.long	2
	.long	3
	.long	8
	.long	9
	.long	10
	.long	11
	.long	8
	.long	9
	.long	10
	.long	11
	.long	16
	.long	17
	.long	18
	.long	19
	.long	16
	.long	17
	.long	18
	.long	19
	.long	24
	.long	25
	.long	26
	.long	27
	.long	24
	.long	25
	.long	26
	.long	27
	.long	32
	.long	33
	.long	34
	.long	35
	.long	32
	.long	33
	.long	34
	.long	35
	.long	40
	.long	41
	.long	42
	.long	43
	.long	40
	.long	41
	.long	42
	.long	43
	.long	48
	.long	49
	.long	50
	.long	51
	.long	48
	.long	49
	.long	50
	.long	51
	.long	56
	.long	57
	.long	58
	.long	59
	.long	56
	.long	57
	.long	58
	.long	59
	.long	64
	.long	65
	.long	66
	.long	67
	.long	64
	.long	65
	.long	66
	.long	67
	.long	72
	.long	73
	.long	74
	.long	75
	.long	72
	.long	73
	.long	74
	.long	75
	.long	80
	.long	81
	.long	82
	.long	83
	.long	80
	.long	81
	.long	82
	.long	83
	.long	88
	.long	89
	.long	90
	.long	91
	.long	88
	.long	89
	.long	90
	.long	91
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$400, %rsp
	leaq	-400(%rbp), %rax
	movl	$LC0, %ecx
	movl	$384, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, arg4(%rax)
	movl	-4(%rbp), %eax
	cltq
	movzbl	arg4(%rax), %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	cltq
	movw	%dx, arg1(%rax,%rax)
	movl	-4(%rbp), %eax
	cltq
	movzwl	arg1(%rax,%rax), %eax
	movswl	%ax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, arg2(,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	movl	arg2(,%rax,4), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, arg3(,%rax,8)
	addl	$1, -4(%rbp)
L13:
	cmpl	$95, -4(%rbp)
	jle	L14
	movl	$arg4, %r8d
	movl	$arg3, %ecx
	movl	$arg2, %edx
	movl	$arg1, %esi
	movl	$result, %edi
	call	f883b
	movl	$0, -4(%rbp)
	jmp	L15
L17:
	movl	-4(%rbp), %eax
	cltq
	movzbl	result(%rax), %eax
	movsbl	%al, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-400(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	L16
	call	abort
L16:
	addl	$1, -4(%rbp)
L15:
	cmpl	$95, -4(%rbp)
	jle	L17
	movl	$0, %eax
	leave
	ret
