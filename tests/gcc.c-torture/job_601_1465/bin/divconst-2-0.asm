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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	2147483647(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$31, %rax
	negq	%rax
	popq	%rbp
	ret
r:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cqto
	shrq	$33, %rdx
	addq	%rdx, %rax
	andl	$2147483647, %eax
	subq	%rdx, %rax
	popq	%rbp
	ret
std_eqn:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	$0, %eax
	subq	%rdx, %rax
	salq	$31, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
nums:
	.quad	-1
	.quad	2147483647
	.quad	-2147483648
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	L16
L18:
	movl	-12(%rbp), %eax
	cltq
	movq	nums(,%rax,8), %rax
	movq	%rax, %rdi
	call	r
	movq	%rax, %rbx
	movl	-12(%rbp), %eax
	cltq
	movq	nums(,%rax,8), %rax
	movq	%rax, %rdi
	call	f
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movq	nums(,%rax,8), %rax
	movq	%rbx, %rcx
	movq	$-2147483648, %rsi
	movq	%rax, %rdi
	call	std_eqn
	testq	%rax, %rax
	jne	L17
	call	abort
L17:
	addl	$1, -12(%rbp)
L16:
	movl	-12(%rbp), %eax
	cmpl	$2, %eax
	jbe	L18
	movl	$0, %edi
	call	exit
