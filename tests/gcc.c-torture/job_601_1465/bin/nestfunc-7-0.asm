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
Foo.2265:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movq	%r10, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movl	(%rax), %edx
	addl	$2, %edx
	movl	%edx, -28(%rbp)
	movl	(%rax), %edx
	addl	$3, %edx
	movl	%edx, -24(%rbp)
	movl	(%rax), %edx
	addl	$4, %edx
	movl	%edx, -20(%rbp)
	movl	(%rax), %edx
	addl	$5, %edx
	movl	%edx, -16(%rbp)
	movl	(%rax), %eax
	addl	$6, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	popq	%rbp
	ret
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$10, %eax
	movl	%eax, -48(%rbp)
	leaq	-32(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %r10
	movq	%rax, %rdi
	call	Foo.2265
	movl	-32(%rbp), %eax
	cmpl	$11, %eax
	jne	L12
	movl	-28(%rbp), %eax
	cmpl	$12, %eax
	jne	L12
	movl	-24(%rbp), %eax
	cmpl	$13, %eax
	jne	L12
	movl	-20(%rbp), %eax
	cmpl	$14, %eax
	jne	L12
	movl	-16(%rbp), %eax
	cmpl	$15, %eax
	jne	L12
	movl	-12(%rbp), %eax
	cmpl	$16, %eax
	jne	L12
	movl	$1, %eax
	jmp	L14
L12:
	movl	$0, %eax
L14:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	test
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
