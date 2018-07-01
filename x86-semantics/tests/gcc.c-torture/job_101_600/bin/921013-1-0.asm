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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	jmp	L10
L11:
	movq	-8(%rbp), %rcx
	leaq	4(%rcx), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	leaq	4(%rdx), %rsi
	movq	%rsi, -24(%rbp)
	movl	(%rdx), %edx
	vmovd	%eax, %xmm0
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm0
	setnp	%dil
	movl	$0, %esi
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	movl	%esi, %eax
	cmove	%edi, %eax
	movzbl	%al, %eax
	movl	%eax, (%rcx)
L10:
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	testl	%eax, %eax
	jne	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	LC0(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	LC1(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	LC2(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	LC3(%rip), %eax
	movl	%eax, -64(%rbp)
	movl	LC4(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	LC2(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	LC5(%rip), %eax
	movl	%eax, -52(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	f
	movl	$0, -4(%rbp)
	jmp	L13
L15:
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	-64(%rbp,%rdx,4), %edx
	vmovd	%eax, %xmm0
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm0
	setnp	%sil
	movl	$0, %ecx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	movl	%ecx, %eax
	cmove	%esi, %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	L14
	call	abort
L14:
	addl	$1, -4(%rbp)
L13:
	cmpl	$3, -4(%rbp)
	jle	L15
	movl	$0, %edi
	call	exit
LC0:
	.long	1084227584
LC1:
	.long	1065353216
LC2:
	.long	1077936128
LC3:
	.long	1073741824
LC4:
	.long	1082130432
LC5:
	.long	0
