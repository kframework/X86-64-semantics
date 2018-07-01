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
	.comm	b,16,16
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r10
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r10, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -56(%rbp)
	movq	48(%rbp), %rax
	movq	56(%rbp), %rdx
	movzbl	%al, %eax
	leaq	48(%rbp), %rdx
	movl	$-16, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	__builtin_mul_overflow
	movq	b(%rip), %rcx
	movq	b+8(%rip), %rbx
	movq	48(%rbp), %rax
	movq	56(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %esi
	movl	$0, %eax
	pushq	$0
	pushq	$4
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r8d
	movl	$0, %r9d
	movl	$0, %edx
	movl	$0, %ecx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	foo
	addq	$48, %rsp
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rax
	xorq	$-1, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	xorq	$-64, %rax
	orq	%rdx, %rax
	testq	%rax, %rax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
