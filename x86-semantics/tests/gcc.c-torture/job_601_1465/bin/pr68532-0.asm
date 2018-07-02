	.file	"pr68532.c"
	.comm	in,256,16
	.text
	.globl	test
	.type	test, @function
test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movw	%ax, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	movl	-24(%rbp), %eax
	imull	%edx, %eax
	addw	%ax, -20(%rbp)
	addl	$8, -4(%rbp)
.L2:
	cmpl	$127, -4(%rbp)
	jle	.L3
	movzwl	-20(%rbp), %eax
	popq	%rbp
	ret
	.size	test, .-test
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L6
.L7:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movw	%dx, in(%rax,%rax)
	addl	$1, -4(%rbp)
.L6:
	cmpl	$127, -4(%rbp)
	jle	.L7
	movl	$1, %edx
	movl	$in, %esi
	movl	$0, %edi
	call	test
	cmpl	$960, %eax
	je	.L8
	call	abort
.L8:
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
