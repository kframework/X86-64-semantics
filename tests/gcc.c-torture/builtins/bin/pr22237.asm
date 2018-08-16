	.file	"pr22237.c"
	.text
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L2
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jbe	.L3
	call	abort
.L2:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jbe	.L3
	call	abort
.L3:
	jmp	.L4
.L5:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L4:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L5
	movq	-24(%rbp), %rax
	leave
	ret
	.size	memcpy, .-memcpy
	.comm	inside_main,4,4
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, inside_main(%rip)
	call	main_test
	movl	$0, inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.globl	link_error
	.type	link_error, @function
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.size	link_error, .-link_error
	.local	v
	.comm	v,260,64
	.local	v0
	.comm	v0,260,64
	.data
	.align 8
	.type	p, @object
	.size	p, 8
p:
	.quad	v
	.align 8
	.type	q, @object
	.size	q, 8
q:
	.quad	v+4
	.text
	.type	rp, @function
rp:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	p(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	leave
	ret
	.size	rp, .-rp
	.type	rq, @function
rq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	q(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	leave
	ret
	.size	rq, .-rq
	.type	pq, @function
pq:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	pushq	%rbx
	subq	$256, %rsp
	movq	p(%rip), %rbx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	rq
	movq	%rbx, %rcx
	leaq	-272(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	addq	$256, %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
	.size	pq, .-pq
	.type	qp, @function
qp:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	pushq	%rbx
	subq	$256, %rsp
	movq	q(%rip), %rbx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	rp
	movq	%rbx, %rcx
	leaq	-272(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	addq	$256, %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
	.size	qp, .-qp
	.type	init, @function
init:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -4(%rbp)
.L17:
	cmpl	$255, -4(%rbp)
	jle	.L18
	popq	%rbp
	ret
	.size	init, .-init
	.type	check, @function
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L20
.L22:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	je	.L21
	call	abort
.L21:
	addl	$1, -4(%rbp)
.L20:
	cmpl	$255, -4(%rbp)
	jle	.L22
	leave
	ret
	.size	check, .-check
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$v, %eax
	movl	$v0, %ecx
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	p(%rip), %rax
	movq	%rax, %rdi
	call	init
	call	qp
	movq	q(%rip), %rax
	movq	%rax, %rdi
	call	check
	movl	$v, %eax
	movl	$v0, %ecx
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	q(%rip), %rax
	movq	%rax, %rdi
	call	init
	call	pq
	movq	p(%rip), %rax
	movq	%rax, %rdi
	call	check
	movl	$0, %edi
	call	exit
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
