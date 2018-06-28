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
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$12, -8(%rbp)
	jne	L10
	cmpq	$1, -16(%rbp)
	jne	L10
	cmpq	$11, -24(%rbp)
	je	L11
L10:
	call	abort
L11:
	movl	$0, %eax
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	bar
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	foo
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$12, %edx
	movl	$11, %esi
	movl	$10, %edi
	call	baz
	movl	$0, %edi
	call	exit
