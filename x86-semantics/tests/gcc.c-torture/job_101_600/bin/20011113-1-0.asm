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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	%eax, %edi
	call	bar
	addq	$32, %rsp
	leave
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movabsq	$4886718345, %rax
	movq	%rax, -32(%rbp)
	movabsq	$68414056839, %rax
	movq	%rax, -24(%rbp)
	movabsq	$46118400291, %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-64(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	%eax, %edi
	call	bar
	addq	$32, %rsp
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movq	16(%rbp), %rax
	cmpq	$21, %rax
	jne	L14
	movq	24(%rbp), %rax
	cmpq	$22, %rax
	jne	L14
	movq	32(%rbp), %rax
	cmpq	$23, %rax
	je	L15
L14:
	call	abort
L15:
	movl	$0, %eax
	leave
	ret
t:
	.value	26
	.byte	0
	.byte	0
	.zero	4
	.quad	0
	.quad	21
	.quad	22
	.quad	23
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$t, %edi
	call	baz
	movl	$t, %edi
	call	foo
	movl	$0, %edi
	call	exit
