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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, %rax
	movl	%r8d, %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	-32(%rbp), %eax
	cmpl	$1, %eax
	jne	L10
	movl	-28(%rbp), %eax
	cmpl	$2, %eax
	jne	L10
	movl	-24(%rbp), %eax
	cmpl	$3, %eax
	jne	L10
	cmpl	$4, -4(%rbp)
	jne	L10
	cmpl	$5, -8(%rbp)
	jne	L10
	cmpl	$6, -12(%rbp)
	je	L11
L10:
	call	abort
L11:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%esi, %eax
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	movl	-8(%rbp), %edi
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	bar
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -16(%rbp)
	movl	$2, -12(%rbp)
	movl	$3, -8(%rbp)
	movq	-16(%rbp), %rsi
	movl	-8(%rbp), %eax
	movl	$6, %r8d
	movl	$5, %ecx
	movl	$4, %edx
	movq	%rsi, %rdi
	movl	%eax, %esi
	call	foo
	movl	$0, %edi
	call	exit
