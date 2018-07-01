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
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movl	$0, %eax
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L12
L15:
	movl	$3, %eax
	subl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	cltq
	movl	t16.2265(,%rax,4), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	L13
L14:
	movl	-8(%rbp), %eax
	leal	0(,%rax,4), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	movl	t16.2265(,%rax,4), %eax
	vmovd	%eax, %xmm1
	vmulss	-16(%rbp), %xmm1, %xmm0
	vmovd	%xmm0, %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, tmp.2266(,%rdx,4)
	addl	$1, -8(%rbp)
L13:
	cmpl	$3, -8(%rbp)
	jle	L14
	addl	$1, -4(%rbp)
L12:
	cmpl	$3, -4(%rbp)
	jle	L15
	movl	tmp.2266(%rip), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	tmp.2266+4(%rip), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	tmp.2266+8(%rip), %eax
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	leaq	12(%rax), %rdx
	movl	tmp.2266+12(%rip), %eax
	movl	%eax, (%rdx)
	popq	%rbp
	ret
t16.2265:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.long	1090519040
	.long	1091567616
	.long	1092616192
	.long	1093664768
	.long	1094713344
	.long	1095761920
	.long	1096810496
	.long	1097859072
	.long	1098907648
	.local	tmp.2266
	.comm	tmp.2266,16,16
