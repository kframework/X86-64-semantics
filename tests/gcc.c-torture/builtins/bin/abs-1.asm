	.file	"abs-1.c"
	.text
	.globl	abs
	.type	abs, @function
abs:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	inside_main(%rip), %eax
	testl	%eax, %eax
	je	.L2
	movl	$1, abs_called(%rip)
.L2:
	movl	-4(%rbp), %eax
	cltd
	movl	%edx, %eax
	xorl	-4(%rbp), %eax
	subl	%edx, %eax
	popq	%rbp
	ret
	.size	abs, .-abs
	.globl	labs
	.type	labs, @function
labs:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	inside_main(%rip), %eax
	testl	%eax, %eax
	je	.L5
	call	abort
.L5:
	movq	-8(%rbp), %rax
	cqto
	movq	%rdx, %rax
	xorq	-8(%rbp), %rax
	subq	%rdx, %rax
	leave
	ret
	.size	labs, .-labs
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
	.globl	abs_called
	.bss
	.align 4
	.type	abs_called, @object
	.size	abs_called, 4
abs_called:
	.zero	4
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	abs
	testl	%eax, %eax
	je	.L11
	call	abort
.L11:
	movl	abs_called(%rip), %eax
	testl	%eax, %eax
	jne	.L10
	call	abort
.L10:
	popq	%rbp
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
