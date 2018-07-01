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
	.comm	t,664,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$t, -16(%rbp)
	addq	$8, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$656, %rax
	movq	%rax, -8(%rbp)
	jmp	L10
L11:
	movq	-8(%rbp), %rax
	movq	$-1, (%rax)
L10:
	subq	$8, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	L11
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	L12
	call	abort
L12:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$7, %rax
	jle	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
