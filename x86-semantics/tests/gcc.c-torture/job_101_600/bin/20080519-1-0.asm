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
	.comm	reg_class_contents,32,32
merge_overlapping_regs:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	jne	L10
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$-1, %rax
	je	L9
L10:
	call	abort
L9:
	leave
	ret
regrename_optimize:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L13
L14:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$4, %rax
	addq	$reg_class_contents, %rax
	movq	%rax, -24(%rbp)
	addl	$1, -4(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	notq	%rax
	orq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rdx), %rdx
	notq	%rdx
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
L13:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L14
	cmpl	$0, -4(%rbp)
	jle	L12
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$4, %rax
	addq	$reg_class_contents, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	notq	%rax
	orq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rdx), %rdx
	notq	%rdx
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	merge_overlapping_regs
L12:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -8(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -24(%rbp)
	movq	$-1, reg_class_contents(%rip)
	movq	$-1, reg_class_contents+8(%rip)
	movq	$0, reg_class_contents+16(%rip)
	movq	$0, reg_class_contents+24(%rip)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	regrename_optimize
	movl	$0, %eax
	leave
	ret
