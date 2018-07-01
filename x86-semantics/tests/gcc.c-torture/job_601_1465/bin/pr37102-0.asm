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
	.long	1
	.comm	c,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
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
	movl	$1, -4(%rbp)
	jmp	L12
L14:
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L13
	movl	b(%rip), %eax
	movl	%eax, a(%rip)
L13:
	addl	$1, -4(%rbp)
L12:
	cmpl	$4, -4(%rbp)
	jbe	L14
	movl	b(%rip), %eax
	movl	%eax, a(%rip)
	movl	a(%rip), %eax
	addl	%eax, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	L15
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	xorl	$1, %eax
	movl	%eax, -8(%rbp)
L15:
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	foo
	movl	$0, %eax
	leave
	ret
