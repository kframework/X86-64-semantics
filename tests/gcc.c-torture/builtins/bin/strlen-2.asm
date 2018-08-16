	.file	"strlen-2.c"
	.text
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L3:
	addq	$1, -8(%rbp)
.L2:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
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
	.comm	g,8,8
	.comm	h,8,8
	.comm	i,8,8
	.comm	j,8,8
	.comm	k,8,8
	.comm	l,8,8
	.globl	foo
	.type	foo, @function
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	l(%rip), %rax
	testq	%rax, %rax
	je	.L9
	call	abort
.L9:
	movq	l(%rip), %rax
	addq	$1, %rax
	movq	%rax, l(%rip)
	movq	l(%rip), %rax
	popq	%rbp
	ret
	.size	foo, .-foo
	.section	.rodata
.LC0:
	.string	"foo"
.LC1:
	.string	"bar"
.LC2:
	.string	"xfoo"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	g(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, g(%rip)
	testq	%rax, %rax
	je	.L12
	movl	$.LC0, %eax
	jmp	.L13
.L12:
	movl	$.LC1, %eax
.L13:
	movq	%rax, %rdi
	call	strlen
	cmpq	$3, %rax
	jne	.L14
	movq	g(%rip), %rax
	cmpq	$1, %rax
	je	.L15
.L14:
	call	abort
.L15:
	movq	h(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, h(%rip)
	testq	%rax, %rax
	je	.L16
	movl	$.LC2+1, %eax
	jmp	.L17
.L16:
	movl	$.LC1, %eax
.L17:
	movq	%rax, %rdi
	call	strlen
	cmpq	$3, %rax
	jne	.L18
	movq	h(%rip), %rax
	cmpq	$1, %rax
	je	.L19
.L18:
	call	abort
.L19:
	movq	i(%rip), %rax
	addq	$1, %rax
	movq	%rax, i(%rip)
	movq	i(%rip), %rax
	cmpq	$1, %rax
	je	.L20
	call	abort
.L20:
	movl	$0, inside_main(%rip)
	movq	j(%rip), %rax
	testq	%rax, %rax
	je	.L21
	movq	k(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, k(%rip)
	addq	$.LC0, %rax
	jmp	.L22
.L21:
	movq	k(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, k(%rip)
	addq	$.LC1, %rax
.L22:
	movq	%rax, %rdi
	call	strlen
	cmpq	$3, %rax
	jne	.L23
	movq	k(%rip), %rax
	cmpq	$1, %rax
	je	.L24
.L23:
	call	abort
.L24:
	call	foo
	testq	%rax, %rax
	je	.L25
	movl	$.LC0, %eax
	jmp	.L26
.L25:
	movl	$.LC1, %eax
.L26:
	movq	%rax, %rdi
	call	strlen
	cmpq	$3, %rax
	jne	.L27
	movq	l(%rip), %rax
	cmpq	$1, %rax
	je	.L11
.L27:
	call	abort
.L11:
	popq	%rbp
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
