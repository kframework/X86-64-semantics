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
	.comm	v,12,8
	.comm	v0,12,8
	.data
p:
	.quad	v
q:
	 .quad v + 4
	.text
rp:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq $p(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	xorq	$40, %rdx
	je	L12
	call	__stack_chk_fail
L12:
	leave
	ret
rq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq $q(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	xorq	$40, %rdx
	je	L15
	call	__stack_chk_fail
L15:
	leave
	ret
pq:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq $p(%rip), %rbx
	call	rq
	movq	%rax, (%rbx)
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
qp:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	movq $q(%rip), %rbx
	call	rp
	movq	%rax, (%rbx)
	nop
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
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
	cmpl	$7, -4(%rbp)
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
	cmpl	$7, -4(%rbp)
	jle	L24
	nop
	leave
	ret
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $v0(%rip), %rax
	movq	%rax, $v(%rip)
	movl $v0 + 8(%rip), %eax
	movl	%eax, $v + 8(%rip)
	movq $p(%rip), %rax
	movq	%rax, %rdi
	call	init
	call	qp
	movq $q(%rip), %rax
	movq	%rax, %rdi
	call	check
	movq $v0(%rip), %rax
	movq	%rax, $v(%rip)
	movl $v0 + 8(%rip), %eax
	movl	%eax, $v + 8(%rip)
	movq $q(%rip), %rax
	movq	%rax, %rdi
	call	init
	call	pq
	movq $p(%rip), %rax
	movq	%rax, %rdi
	call	check
	movl	$0, %edi
	call	exit
