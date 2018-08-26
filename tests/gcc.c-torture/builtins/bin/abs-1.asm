	.file	"abs-1.c"
	.text
	.globl	abs
abs:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl $inside_main(%rip), %eax
	testl	%eax, %eax
	je	L2
	movl	$1, $abs_called(%rip)
L2:
	movl	-4(%rbp), %eax
	cltd
	movl	%edx, %eax
	xorl	-4(%rbp), %eax
	subl	%edx, %eax
	popq	%rbp
	ret
	.globl	labs
labs:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl $inside_main(%rip), %eax
	testl	%eax, %eax
	je	L5
	call	abort
L5:
	movq	-8(%rbp), %rax
	cqto
	movq	%rdx, %rax
	xorq	-8(%rbp), %rax
	subq	%rdx, %rax
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
	.globl	abs_called
	.bss
abs_called:
	.zero	4
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	abs
	testl	%eax, %eax
	je	L11
	call	abort
L11:
	movl $abs_called(%rip), %eax
	testl	%eax, %eax
	jne	L13
	call	abort
L13:
	nop
	popq	%rbp
	ret
