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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	L10
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	jne	L10
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	jne	L10
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$4, %eax
	jne	L10
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$5, %eax
	jne	L10
	cmpl	$6, -12(%rbp)
	jne	L10
	cmpl	$7, -16(%rbp)
	jne	L10
	cmpl	$8, -20(%rbp)
	jne	L10
	cmpl	$9, -24(%rbp)
	jne	L10
	cmpl	$10, -28(%rbp)
	je	L9
L10:
	call	abort
L9:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$10, %r9d
	movl	$9, %r8d
	movl	$8, %ecx
	movl	$7, %edx
	movl	$6, %esi
	leaq	16(%rbp), %rdi
	call	bar
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$1, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$4, -20(%rbp)
	movl	$5, -16(%rbp)
	subq	$24, %rsp
	movq	%rsp, %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	-16(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$0, %edi
	call	foo
	addq	$24, %rsp
	movl	$0, %edi
	call	exit
