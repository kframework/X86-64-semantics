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
	.comm	v,4,4
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$1, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L12:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__builtin_mul_overflow
	testl	%eax, %eax
	je	L11
	movl	v(%rip), %eax
	addl	$1, %eax
	movl	%eax, v(%rip)
L11:
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	L12
	movq	-16(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	$975, -64(%rbp)
	movq	$975, -56(%rbp)
	movq	$975, -48(%rbp)
	movq	$975, -40(%rbp)
	movq	$975, -32(%rbp)
	movq	$975, -24(%rbp)
	movq	$975, -16(%rbp)
	leaq	-64(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	test
	movq	%rax, -8(%rbp)
	movl	v(%rip), %eax
	cmpl	$1, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	leave
	ret
