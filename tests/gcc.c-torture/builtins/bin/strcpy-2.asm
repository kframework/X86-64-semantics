	.file	"strcpy-2.c"
	.text
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L2:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L2
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
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
	.comm	buf,32,32
	.comm	p,8,8
	.comm	i,4,4
	.section	.rodata
.LC0:
	.string	"abcdefg"
.LC1:
	.string	"bcdefgh"
.LC2:
	.string	"cdefghi"
.LC3:
	.string	"defghij"
	.text
	.globl	test
	.type	test, @function
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$.LC0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L8
.L12:
	movl	i(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L9
	movq	$.LC1, -8(%rbp)
	jmp	.L10
.L9:
	movl	i(%rip), %eax
	addl	$1, %eax
	cmpl	-12(%rbp), %eax
	jne	.L11
	movq	$.LC2, -8(%rbp)
	jmp	.L10
.L11:
	movl	i(%rip), %eax
	addl	$2, %eax
	cmpl	-12(%rbp), %eax
	jne	.L10
	movq	$.LC3, -8(%rbp)
.L10:
	addl	$1, -12(%rbp)
.L8:
	cmpl	$2, -12(%rbp)
	jle	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$buf, %edi
	call	strcpy
	movq	%rax, p(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$buf+16, %edi
	call	strcpy
	leave
	ret
	.size	test, .-test
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	call	test
	cmpq	$buf+16, %rax
	jne	.L15
	movq	p(%rip), %rax
	cmpq	$buf, %rax
	je	.L14
.L15:
	call	abort
.L14:
	popq	%rbp
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
