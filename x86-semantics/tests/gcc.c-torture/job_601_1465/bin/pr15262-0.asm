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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	LC0(%rip), %eax
	movl	%eax, (%rdx)
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	cmpl	$0, -44(%rbp)
	je	L11
	leaq	-32(%rbp), %rax
	jmp	L12
L11:
	leaq	-28(%rbp), %rax
L12:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	LC1(%rip), %edx
	vmovd	%eax, %xmm0
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm0
	jbe	L13
	movl	$1, -48(%rbp)
L13:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$2, -12(%rbp)
	leaq	-16(%rbp), %rax
	movl	$3, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	foo
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	L18
	call	abort
L18:
	movl	$0, %eax
	leave
	ret
LC0:
	.long	1084647014
LC1:
	.long	0
