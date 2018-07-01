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
	pushq	%rbx
	movl	%edi, %eax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -48(%rbp)
	movq	%rdi, -40(%rbp)
	movl	%edx, %eax
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rbx
	cqto
	idivq	%rbx
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movl	%ecx, %eax
	popq	%rbx
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$32, -8(%rbp)
	movq	$4, -24(%rbp)
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	%esi, %edi
	movq	%rax, %rsi
	call	foo
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	cmpq	$8, %rax
	je	L12
	call	abort
L12:
	movq	$-8, -8(%rbp)
	movq	$-2, -24(%rbp)
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	%esi, %edi
	movq	%rax, %rsi
	call	foo
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	cmpq	$4, %rax
	je	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
