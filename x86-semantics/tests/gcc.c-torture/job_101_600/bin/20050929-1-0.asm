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
__compound_literal.0:
	.long	1
	.long	2
__compound_literal.1:
	.long	3
	.long	4
__compound_literal.2:
	.quad	__compound_literal.0
	.quad	__compound_literal.1
__compound_literal.3:
	.long	5
	.long	6
e:
	.quad	__compound_literal.2
	.quad	__compound_literal.3
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	e(%rip), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	L10
	movq	e(%rip), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	je	L11
L10:
	call	abort
L11:
	movq	e(%rip), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	L12
	movq	e(%rip), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$4, %eax
	je	L13
L12:
	call	abort
L13:
	movq	e+8(%rip), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	L14
	movq	e+8(%rip), %rax
	movl	4(%rax), %eax
	cmpl	$6, %eax
	je	L15
L14:
	call	abort
L15:
	movl	$0, %eax
	popq	%rbp
	ret
