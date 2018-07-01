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
	.long	2
	.comm	b,4,4
	.comm	c,4,4
	.comm	d,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
L12:
	movl	b(%rip), %eax
	testl	%eax, %eax
	setg	%dl
	movl	a(%rip), %eax
	andl	$1, %eax
	andl	$1, %eax
	orl	%edx, %eax
	testb	%al, %al
	jne	L10
	movl	a(%rip), %eax
	movl	%eax, d(%rip)
	movl	$0, %eax
	jmp	L13
L10:
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
	jmp	L12
L13:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	foo
	movl	d(%rip), %eax
	cmpl	$2, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	popq	%rbp
	ret
