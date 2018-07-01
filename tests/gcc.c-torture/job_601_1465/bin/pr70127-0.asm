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
	.comm	a,8,4
c:
	.long	5
	.byte	1
	.zero	3
	.comm	d,8,4
	.comm	b,2,2
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L12
L13:
	movl	$1, -16(%rbp)
	movzbl	-12(%rbp), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movb	%al, -12(%rbp)
	movq	c(%rip), %rax
	movq	%rax, a(%rip)
	movq	a(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, d(%rip)
L12:
	movzwl	b(%rip), %eax
	leal	1(%rax), %edx
	movw	%dx, b(%rip)
	testw	%ax, %ax
	jle	L13
	movzbl	a+4(%rip), %eax
	sall	$6, %eax
	sarb	$6, %al
	movsbl	%al, %eax
	movl	%eax, %edi
	call	foo
	movl	$0, %eax
	leave
	ret
