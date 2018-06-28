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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L10
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$250000, %rax
	jne	L10
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	L10
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$250000, %rax
	je	L11
L10:
	call	abort
L11:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$0, -32(%rbp)
	movq	$250000, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	bar
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movl	$0, %edi
	call	exit
