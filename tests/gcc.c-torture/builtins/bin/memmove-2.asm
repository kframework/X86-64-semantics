	.file	"memmove-2.c"
	.text
	.globl	memmove
	.type	memmove, @function
memmove:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L2
	jmp	.L3
.L4:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L3:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L4
	jmp	.L5
.L2:
	jmp	.L6
.L7:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L6:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L7
.L5:
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memmove, .-memmove
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
	leave
	ret
	.size	bcopy, .-bcopy
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
	.globl	p
	.data
	.align 32
	.type	p, @object
	.size	p, 32
p:
	.string	"abcdefg"
	.zero	24
	.globl	q
	.align 8
	.type	q, @object
	.size	q, 8
q:
	.quad	p+4
	.section	.rodata
.LC0:
	.string	"abddefg"
.LC1:
	.string	"abddeff"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	p+3(%rip), %eax
	movb	%al, p+2(%rip)
	movl	$p+2, %eax
	cmpq	$p+2, %rax
	jne	.L14
	movl	$8, %edx
	movl	$.LC0, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L15
.L14:
	call	abort
.L15:
	movl	$8, %edx
	movl	$.LC0, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L16
	call	abort
.L16:
	movq	q(%rip), %rax
	movzbl	p+4(%rip), %edx
	movb	%dl, (%rax)
	cmpq	$p+4, %rax
	jne	.L17
	movl	$8, %edx
	movl	$.LC0, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L18
.L17:
	call	abort
.L18:
	movzbl	p+5(%rip), %eax
	movb	%al, p+6(%rip)
	movl	$8, %edx
	movl	$.LC1, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L19
	call	abort
.L19:
	movl	$8, %edx
	movl	$.LC1, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L20
	call	abort
.L20:
	movq	q(%rip), %rax
	movzbl	(%rax), %eax
	movb	%al, p+4(%rip)
	movl	$8, %edx
	movl	$.LC1, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L13
	call	abort
.L13:
	popq	%rbp
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
