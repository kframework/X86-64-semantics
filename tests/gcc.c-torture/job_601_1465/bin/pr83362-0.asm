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
	.comm	b,4,4
	.comm	d,4,4
	.comm	e,4,4
	.comm	c,1,1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
L11:
	movl	e(%rip), %edx
	movl	%edx, %ecx
	movq	%rcx, %rax
	salq	$8, %rax
	movq	%rax, %rsi
	salq	$12, %rsi
	addq	%rsi, %rax
	addq	%rcx, %rax
	shrq	$32, %rax
	subl	%eax, %edx
	shrl	%edx
	addl	%edx, %eax
	shrl	$11, %eax
	movl	%eax, e(%rip)
	movzbl	c(%rip), %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	jae	L10
	movl	$0, d(%rip)
L10:
	movl	e(%rip), %eax
	subl	$3, %eax
	movl	%eax, e(%rip)
	movl	b(%rip), %edx
	movl	a(%rip), %eax
	cmpl	%eax, %edx
	setbe	%al
	movzbl	%al, %edx
	movl	e(%rip), %eax
	imull	%edx, %eax
	movl	%eax, e(%rip)
	movl	e(%rip), %eax
	cmpl	$88029, %eax
	ja	L11
	movl	e(%rip), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1164, %edi
	call	foo
	movl	%eax, -4(%rbp)
	cmpl	$253, -4(%rbp)
	je	L14
	call	abort
L14:
	movl	$0, %eax
	leave
	ret
