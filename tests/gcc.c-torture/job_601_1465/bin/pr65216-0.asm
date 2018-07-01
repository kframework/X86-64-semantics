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
	.comm	a,4,4
b:
	.long	62
	.comm	e,4,4
	.comm	c,4,4
	.comm	d,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, a(%rip)
	jmp	L10
L14:
	movl	-4(%rbp), %eax
	xorl	$8, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	b(%rip), %eax
	andl	%edx, %eax
	movl	%eax, b(%rip)
	movl	$0, e(%rip)
	jmp	L11
L13:
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L12
	movl	d(%rip), %eax
	movl	%eax, -4(%rbp)
L12:
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L11:
	movl	e(%rip), %eax
	cmpl	$5, %eax
	jle	L13
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L10:
	movl	a(%rip), %eax
	cmpl	$1, %eax
	jle	L14
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	leave
	ret
