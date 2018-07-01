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
	.comm	list,80,64
expect:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.quad	9
	.comm	stack_base,8,8
	.comm	indices,40,32
	.comm	markstack_ptr,8,8
doit:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	stack_base(%rip), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
	movl	$2, -36(%rbp)
	movq	markstack_ptr(%rip), %rax
	subq	$8, %rax
	movl	(%rax), %edx
	movq	markstack_ptr(%rip), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	stack_base(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movl	%eax, %edx
	movq	markstack_ptr(%rip), %rax
	subq	$4, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L10
L11:
	movq	-16(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-8(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
L10:
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, list(,%rax,8)
	addl	$1, -4(%rbp)
L13:
	cmpl	$9, -4(%rbp)
	jle	L14
	movq	$indices+36, markstack_ptr(%rip)
	movq	markstack_ptr(%rip), %rax
	subq	$4, %rax
	movl	$2, (%rax)
	movq	markstack_ptr(%rip), %rax
	subq	$8, %rax
	movl	$1, (%rax)
	movq	$list+16, stack_base(%rip)
	call	doit
	movl	$80, %edx
	movl	$list, %esi
	movl	$expect, %edi
	call	memcmp
	testl	%eax, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	leave
	ret
