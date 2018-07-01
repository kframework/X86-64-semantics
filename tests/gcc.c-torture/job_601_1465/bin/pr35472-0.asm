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
	.comm	p,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, p(%rip)
	popq	%rbp
	ret
test:
	pushq	%rbp
	movq	%rsp, %rbp
	addq	$-128, %rsp
	leaq	-64(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-128(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-128(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	foo
	movq	p(%rip), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	p(%rip), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-112(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-104(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-88(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-80(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-72(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	-128(%rbp), %eax
	cmpl	$-1, %eax
	je	L10
	call	abort
L10:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	test
	movl	$0, %eax
	popq	%rbp
	ret
