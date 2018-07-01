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
	.comm	b,4,4
	.comm	c,4,4
d:
	.long	1
	.comm	e,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	a(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	L10
L24:
	jmp	L11
L23:
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L12
	movl	$0, c(%rip)
	jmp	L13
L20:
	movl	$0, -4(%rbp)
	jmp	L14
L19:
	movl	$0, e(%rip)
	jmp	L15
L16:
	movl	-8(%rbp), %eax
	movl	%eax, a(%rip)
	movl	e(%rip), %eax
	addl	$1, %eax
	movl	%eax, e(%rip)
L15:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jle	L16
	cmpl	$0, -4(%rbp)
	je	L17
	jmp	L18
L17:
	addl	$1, -4(%rbp)
L14:
	cmpl	$2, -4(%rbp)
	jle	L19
L18:
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
L13:
	movl	c(%rip), %eax
	cmpl	$3, %eax
	jle	L20
	jmp	L21
L12:
	cmpl	$0, -4(%rbp)
	je	L21
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
	jmp	L11
L21:
	movl	$0, %eax
	jmp	L22
L11:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	L23
	addl	$1, -4(%rbp)
L10:
	cmpl	$2, -4(%rbp)
	jle	L24
	movl	$0, %eax
L22:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	foo
	movl	$0, %edi
	call	exit
