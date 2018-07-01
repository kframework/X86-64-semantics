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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	popq	%rbp
	ret
	.local	a
	.comm	a,4,4
	.local	b
	.comm	b,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$1, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L12
	movl	a(%rip), %eax
	cltq
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	foo
	cmpq	$1, %rax
	je	L12
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movl	b(%rip), %edx
	xorl	%edx, %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	cmpl	$1, %eax
	je	L14
	call	abort
L14:
	movl	$0, %eax
	leave
	ret
