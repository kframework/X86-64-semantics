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
l:
	.long	0
	.long	1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$l, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	(%rax), %eax
	cmpl	$4, %eax
	ja	L10
	movl	%eax, %eax
	movq	L12(,%rax,8), %rax
	jmp	*%rax
L12:
	.quad	L11
	.quad	L16
	.quad	L16
	.quad	L16
	.quad	L16
L11:
	movl	$0, %edi
	call	exit
L16:
	nop
L10:
	call	abort
