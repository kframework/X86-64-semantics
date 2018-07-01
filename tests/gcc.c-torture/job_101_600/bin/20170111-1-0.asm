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
	movq	%rdi, -24(%rbp)
	movq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	$1, -8(%rbp)
	movw	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movw	$0, -32(%rbp)
	movb	$0, -30(%rbp)
	movw	$2, -28(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
