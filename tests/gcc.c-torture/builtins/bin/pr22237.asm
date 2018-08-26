	.file	"pr22237.c"
	.text
	.globl	memcpy
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
	jnb	L2
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jbe	L4
	call	abort
L2:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jbe	L4
	call	abort
L5:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L4:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L5
	movq	-24(%rbp), %rax
	leave
	ret
	.comm	inside_main,4,4
	.globl	main
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $inside_main(%rip)
	call	main_test
	movl	$0, $inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.globl	link_error
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.comm	v,260,32
	.comm	v0,260,32
	.data
p:
	.quad	v
q:
	.quad	v+4
	.text
rp:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq $p(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	leave
	ret
rq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq $q(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	leave
	ret
pq:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	pushq	%rbx
	subq	$288, %rsp
	movq	$40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq $p(%rip), %rbx
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	rq
	movq	%rbx, %rcx
	leaq	-304(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	nop
	movq	-24(%rbp), %rax
	xorq	$40, %rax
	je	L15
	call	__stack_chk_fail
L15:
	addq	$288, %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
qp:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	pushq	%rbx
	subq	$288, %rsp
	movq	$40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq $q(%rip), %rbx
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	rp
	movq	%rbx, %rcx
	leaq	-304(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	nop
	movq	-24(%rbp), %rax
	xorq	$40, %rax
	je	L17
	call	__stack_chk_fail
L17:
	addq	$288, %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	leaq	-8(%r10), %rsp
	ret
init:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L19
L20:
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -4(%rbp)
L19:
	cmpl	$255, -4(%rbp)
	jle	L20
	nop
	popq	%rbp
	ret
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L22
L24:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	-4(%rbp), %eax
	je	L23
	call	abort
L23:
	addl	$1, -4(%rbp)
L22:
	cmpl	$255, -4(%rbp)
	jle	L24
	nop
	leave
	ret
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$v, %eax
	movl	$v0, %ecx
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq $p(%rip), %rax
	movq	%rax, %rdi
	call	init
	call	qp
	movq $q(%rip), %rax
	movq	%rax, %rdi
	call	check
	movl	$v, %eax
	movl	$v0, %ecx
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq $q(%rip), %rax
	movq	%rax, %rdi
	call	init
	call	pq
	movq $p(%rip), %rax
	movq	%rax, %rdi
	call	check
	movl	$0, %edi
	call	exit
