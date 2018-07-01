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
	.comm	cp,8,8
	.comm	m,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
L11:
	movl	-20(%rbp), %eax
	shrl	$23, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	shrl	$9, %eax
	andl	$511, %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	andl	$511, %eax
	movl	%eax, -12(%rbp)
	movq	cp(%rip), %rax
	movq	$1, (%rax)
	movl	-8(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, m(%rip)
	movq	cp(%rip), %rax
	movq	$2, (%rax)
	call	foo
	cmpl	$0, -12(%rbp)
	jne	L12
	jmp	L11
L12:
	movl	-12(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	$1, (%rax)
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rax, cp(%rip)
	movq	$47, r.2274+32(%rip)
	movq	$11, r.2274+64(%rip)
	movl	$r.2274, %esi
	movl	$67110927, %edi
	call	bar
	movq	m(%rip), %rax
	cmpq	$58, %rax
	je	L14
	call	abort
L14:
	movl	$0, %edi
	call	exit
	.local	r.2274
	.comm	r.2274,512,64
