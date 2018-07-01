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
	.comm	a,36,32
	.comm	b,36,32
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	n.2264(%rip), %eax
	addl	$1, %eax
	movl	%eax, n.2264(%rip)
	movl	n.2264(%rip), %eax
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %rax
	addq	$4, %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movl	-60(%rbp), %eax
	movb	%al, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	-16(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	-56(%rbp), %rax
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
foo:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	pushq	%rbx
	subq	$96, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$6, -28(%rbp)
	jne	L13
	leaq	-112(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	bar
	movq	-112(%rbp), %rax
	movq	%rax, a(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, a+8(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, a+16(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, a+24(%rip)
	movl	-80(%rbp), %eax
	movl	%eax, a+32(%rip)
	jmp	L14
L13:
	movq	-24(%rbp), %rbx
	leaq	-112(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	bar
	movq	-112(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-96(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	-88(%rbp), %rax
	movq	%rax, 24(%rbx)
	movl	-80(%rbp), %eax
	movl	%eax, 32(%rbx)
L14:
	call	baz
	addq	$96, %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
.globl _start
_start:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$72, %rsp
	leaq	-80(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	bar
	movq	-80(%rbp), %rax
	movq	%rax, a(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, a+8(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, a+16(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, a+24(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, a+32(%rip)
	leaq	-80(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	bar
	movq	-80(%rbp), %rax
	movq	%rax, b(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, b+8(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, b+16(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, b+24(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, b+32(%rip)
	movl	a(%rip), %eax
	cmpl	$1, %eax
	jne	L16
	movzbl	a+4(%rip), %eax
	cmpb	$3, %al
	jne	L16
	movl	b(%rip), %eax
	cmpl	$2, %eax
	jne	L16
	movzbl	b+4(%rip), %eax
	cmpb	$4, %al
	je	L17
L16:
	call	abort
L17:
	movl	$0, %esi
	movl	$b, %edi
	call	foo
	movl	a(%rip), %eax
	cmpl	$1, %eax
	jne	L18
	movzbl	a+4(%rip), %eax
	cmpb	$3, %al
	jne	L18
	movl	b(%rip), %eax
	cmpl	$3, %eax
	jne	L18
	movzbl	b+4(%rip), %eax
	cmpb	$7, %al
	je	L19
L18:
	call	abort
L19:
	movl	$6, %esi
	movl	$b, %edi
	call	foo
	movl	a(%rip), %eax
	cmpl	$4, %eax
	jne	L20
	movzbl	a+4(%rip), %eax
	cmpb	$7, %al
	jne	L20
	movl	b(%rip), %eax
	cmpl	$3, %eax
	jne	L20
	movzbl	b+4(%rip), %eax
	cmpb	$7, %al
	je	L21
L20:
	call	abort
L21:
	movl	$0, %eax
	addq	$72, %rsp
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
	.local	n.2264
	.comm	n.2264,4,4
