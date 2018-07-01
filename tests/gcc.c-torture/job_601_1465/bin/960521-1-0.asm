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
	.comm	a,8,8
	.comm	b,8,8
	.comm	n,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movq	a(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-1, (%rax)
	addl	$1, -4(%rbp)
L10:
	movl	n(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	L11
	movl	$0, -4(%rbp)
	jmp	L12
L13:
	movq	b(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-1, (%rax)
	addl	$1, -4(%rbp)
L12:
	cmpl	$32766, -4(%rbp)
	jle	L13
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$32768, n(%rip)
	movl	n(%rip), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, a(%rip)
	movl	n(%rip), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, b(%rip)
	movq	b(%rip), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, b(%rip)
	movl	$0, (%rax)
	movl	$0, %eax
	call	foo
	movq	b(%rip), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L15
	call	abort
L15:
	movl	$0, %edi
	call	exit
