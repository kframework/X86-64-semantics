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
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r10
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r10, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	L11
	movq	-8(%rbp), %rax
	cmpq	$1, %rax
	jne	L11
	movq	-32(%rbp), %rax
	cmpq	$-1, %rax
	jne	L11
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	L11
	movq	-48(%rbp), %rax
	cmpq	$1, %rax
	jne	L11
	movq	-40(%rbp), %rax
	cmpq	$-1, %rax
	jne	L11
	movq	16(%rbp), %rax
	cmpq	$-1, %rax
	jne	L11
	movq	24(%rbp), %rax
	cmpq	$1, %rax
	jne	L11
	movq	32(%rbp), %rax
	testq	%rax, %rax
	jne	L11
	movq	40(%rbp), %rax
	cmpq	$-1, %rax
	jne	L11
	movq	48(%rbp), %rax
	cmpq	$1, %rax
	jne	L11
	movq	56(%rbp), %rax
	testq	%rax, %rax
	je	L10
L11:
	call	abort
L10:
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$104, %rsp
	movl	$0, %eax
	call	bar
	movq	$0, -32(%rbp)
	movq	$1, -24(%rbp)
	movq	$-1, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$1, -64(%rbp)
	movq	$-1, -56(%rbp)
	movq	$-1, -80(%rbp)
	movq	$1, -72(%rbp)
	movq	$0, -96(%rbp)
	movq	$-1, -88(%rbp)
	movq	$1, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	pushq	-104(%rbp)
	pushq	-112(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	pushq	-72(%rbp)
	pushq	-80(%rbp)
	movq	%rcx, %r8
	movq	%rbx, %r9
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	f
	addq	$48, %rsp
	movq	-8(%rbp), %rbx
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	foo
	movl	$0, %edi
	call	exit
