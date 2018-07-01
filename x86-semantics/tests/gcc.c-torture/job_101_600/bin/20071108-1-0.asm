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
	movl	$s.2264, %eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	foo
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L14
	leaq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
L14:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	-32(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jne	L15
	movq	$0, -8(%rbp)
L15:
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L18
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-12(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jne	L18
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %eax
	testb	%al, %al
	jne	L18
	movq	-8(%rbp), %rax
	movzbl	17(%rax), %eax
	testb	%al, %al
	je	L19
L18:
	call	abort
L19:
	movl	$0, %eax
	leave
	ret
	.local	s.2264
	.comm	s.2264,24,16
