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
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	LC0(%rip), %eax
	movl	%eax, -52(%rbp)
	movl	LC1(%rip), %eax
	movl	%eax, -56(%rbp)
	movl	$0, %eax
	call	foo
	testl	%eax, %eax
	je	L12
	leaq	-56(%rbp), %rax
	jmp	L13
L12:
	leaq	-52(%rbp), %rax
L13:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm0
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	L14
	movl	LC3(%rip), %eax
	movl	%eax, -56(%rbp)
L14:
	movl	$8, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$10, 4(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	L16
	call	abort
L16:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	1077936128
LC1:
	.long	1073741824
LC2:
	.long	0
LC3:
	.long	1065353216
