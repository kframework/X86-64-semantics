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
init:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %edi
	call	malloc
	popq	%rbp
	ret
inlined_wrong:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -28(%rbp)
	jne	L12
	call	abort
L12:
	movb	$0, -1(%rbp)
	jmp	L13
L14:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
L13:
	cmpb	$0, -1(%rbp)
	je	L14
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L11
	call	abort
L11:
	leave
	ret
expect_func:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L17
	call	abort
L17:
	cmpq	$0, -16(%rbp)
	jne	L16
	call	abort
L16:
	leave
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, -9(%rbp)
	movl	$0, %eax
	call	init
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	inlined_wrong
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	expect_func
	leaq	-10(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	inlined_wrong
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	leave
	ret
