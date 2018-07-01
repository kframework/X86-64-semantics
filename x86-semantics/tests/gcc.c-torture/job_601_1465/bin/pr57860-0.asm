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
	.quad	a
	.comm	c,4,4
	.comm	d,4,4
	.comm	e,4,4
f:
	.quad	e
	.comm	g,4,4
h:
	.quad	d
k:
	.long	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
L14:
	jmp	L10
L11:
	movl	c(%rip), %eax
	subl	$1, %eax
	movl	%eax, c(%rip)
L10:
	movl	c(%rip), %eax
	testl	%eax, %eax
	jne	L11
	movq	f(%rip), %rdx
	movq	h(%rip), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rsi
	movl	a(%rip), %ecx
	movslq	%ecx, %rdi
	movabsq	$8589934591, %rcx
	xorq	%rcx, %rdi
	movq	b(%rip), %rcx
	movl	(%rcx), %ecx
	movslq	%ecx, %rcx
	andq	%rdi, %rcx
	cmpq	%rcx, %rsi
	setg	%cl
	movzbl	%cl, %ecx
	movl	%ecx, (%rax)
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	g(%rip), %eax
	cltq
	movl	k(,%rax,4), %eax
	testl	%eax, %eax
	je	L12
	movl	$0, %eax
	jmp	L15
L12:
	movl	g(%rip), %eax
	addl	$1, %eax
	movl	%eax, g(%rip)
	jmp	L14
L15:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	foo
	movl	d(%rip), %eax
	cmpl	$1, %eax
	je	L17
	call	abort
L17:
	movl	$0, %eax
	popq	%rbp
	ret
