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
a:
	.long	1
	.comm	b,8,8
	.comm	c,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	%rdi, -312(%rbp)
	movq	-312(%rbp), %rax
	movl	(%rax), %edx
	movl	a(%rip), %eax
	cmpl	%eax, %edx
	jne	L10
	leaq	-304(%rbp), %rsi
	movl	$0, %eax
	movl	$35, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	leaq	-304(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	b(%rip), %rax
	movq	c(%rip), %rcx
	leaq	-312(%rbp), %rdx
	cmpq	%rdx, %rcx
	setne	%dl
	movzbl	%dl, %edx
	movl	%edx, (%rax)
L10:
	movl	$0, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movl	$0, %eax
	leave
	ret
