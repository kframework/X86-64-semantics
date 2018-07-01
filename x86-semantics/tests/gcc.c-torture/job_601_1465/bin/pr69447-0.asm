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
	movq	%rdx, -16(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %ecx
	movq	%r9, -32(%rbp)
	movl	24(%rbp), %edx
	movb	%dil, -4(%rbp)
	movw	%si, -8(%rbp)
	movb	%al, -20(%rbp)
	movw	%cx, -24(%rbp)
	movb	%dl, -36(%rbp)
	movq	-32(%rbp), %rax
	imulq	$30512, %rax, %rax
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	imulq	32(%rbp), %rax
	movq	%rax, 32(%rbp)
	movq	32(%rbp), %rax
	orw	%ax, -24(%rbp)
	subq	$2, 32(%rbp)
	movzbl	-36(%rbp), %eax
	movl	$0, %edx
	divq	16(%rbp)
	movb	%al, -36(%rbp)
	orb	$3, -4(%rbp)
	movzbl	-4(%rbp), %ecx
	movq	32(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, 32(%rbp)
	subb	$1, -4(%rbp)
	movzbl	-4(%rbp), %edx
	movzwl	-8(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-20(%rbp), %eax
	addq	%rax, %rdx
	movzwl	-24(%rbp), %eax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-36(%rbp), %eax
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	pushq	$1
	pushq	$1
	pushq	$1
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	foo
	addq	$24, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$30519, -4(%rbp)
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
