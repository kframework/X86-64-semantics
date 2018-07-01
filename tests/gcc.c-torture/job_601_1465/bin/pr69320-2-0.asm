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
	.comm	c,8,8
	.comm	d,4,4
	.comm	e,4,4
	.comm	g,4,4
	.comm	f,4,4
	.comm	b,2,2
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	d(%rip), %eax
	cmpl	$10, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	g(%rip), %eax
	cmpl	%eax, %edx
	jle	L10
L10:
	movl	-12(%rbp), %eax
	cmpl	$10, %eax
	jne	L11
	movq	$0, -8(%rbp)
	movl	$0, a(%rip)
	jmp	L12
L14:
	nop
L13:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	L13
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L12:
	movl	a(%rip), %eax
	cmpl	$6, %eax
	jle	L14
	leaq	-12(%rbp), %rax
	movq	%rax, c(%rip)
	call	abort
L11:
	movl	e(%rip), %eax
	movl	-12(%rbp), %ecx
	cltd
	idivl	%ecx
	movw	%ax, b(%rip)
	movl	f(%rip), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn1
	movl	$0, %edi
	call	exit
