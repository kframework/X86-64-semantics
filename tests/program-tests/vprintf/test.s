	.file	"test.c"
	.text
	.globl	WriteFormatted
	.type	WriteFormatted, @function
WriteFormatted:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rdi, -216(%rbp)

	movl	$8, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf
	movq	-184(%rbp), %rax
	xorq	$40, %rax
	je	.L3
.L3:
	leave
	ret
	.size	WriteFormatted, .-WriteFormatted
	.section	.rodata
	.align 8
.LC0:
	.string	"Call with %d variable argument.\n"
.LC1:
	.string	"arguments"
.LC2:
	.string	"Call with %d variable %s.\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	WriteFormatted
	movl	$.LC1, %edx
	movl	$2, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	WriteFormatted
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
