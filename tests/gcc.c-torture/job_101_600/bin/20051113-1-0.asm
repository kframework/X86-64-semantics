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
Sum:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	L10
L11:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movq	10(%rax), %rax
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
L10:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	L11
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
Sum2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	L14
L15:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movq	18(%rax), %rax
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
L14:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	L15
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$94, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$94, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-8(%rbp), %rax
	movl	$3, (%rax)
	movq	-8(%rbp), %rax
	movq	$555, 10(%rax)
	movq	-8(%rbp), %rax
	movq	$999, 40(%rax)
	movq	-8(%rbp), %rax
	movabsq	$4311810305, %rcx
	movq	%rcx, 70(%rax)
	movq	-8(%rbp), %rax
	movq	$555, 18(%rax)
	movq	-8(%rbp), %rax
	movq	$999, 48(%rax)
	movq	-8(%rbp), %rax
	movabsq	$4311810305, %rsi
	movq	%rsi, 78(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Sum
	movabsq	$4311811859, %rdx
	cmpq	%rdx, %rax
	je	L18
	call	abort
L18:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	Sum2
	movabsq	$4311811859, %rdx
	cmpq	%rdx, %rax
	je	L19
	call	abort
L19:
	movl	$0, %eax
	leave
	ret
