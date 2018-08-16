	.file	"strrchr.c"
	.text
	.globl	strrchr
	.type	strrchr, @function
strrchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
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
.L6:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-28(%rbp), %eax
	jne	.L4
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
.L5:
	popq	%rbp
	ret
	.size	strrchr, .-strrchr
	.globl	rindex
	.type	rindex, @function
rindex:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strrchr
	leave
	ret
	.size	rindex, .-rindex
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
	.globl	bar
	.section	.rodata
.LC0:
	.string	"hi world"
	.data
	.align 8
	.type	bar, @object
	.size	bar, 8
bar:
	.quad	.LC0
	.globl	x
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.long	7
	.section	.rodata
.LC1:
	.string	"hello world"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$.LC1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	strrchr
	testq	%rax, %rax
	je	.L13
	call	abort
.L13:
	movq	-8(%rbp), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	cmpq	%rax, %rdx
	je	.L14
	call	abort
.L14:
	movq	-8(%rbp), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L15
	call	abort
.L15:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	strrchr
	testq	%rax, %rax
	je	.L16
	call	abort
.L16:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	cmpq	%rax, %rdx
	je	.L17
	call	abort
.L17:
	movq	bar(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	bar(%rip), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L18
	call	abort
.L18:
	movq	bar(%rip), %rax
	addq	$4, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	bar(%rip), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L19
	call	abort
.L19:
	movq	bar(%rip), %rcx
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$3, %eax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	bar(%rip), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L20
	call	abort
.L20:
	movl	x(%rip), %eax
	cmpl	$8, %eax
	je	.L21
	call	abort
.L21:
	movq	-8(%rbp), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	cmpq	%rax, %rdx
	je	.L22
	call	abort
.L22:
	movq	-8(%rbp), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	rindex
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	cmpq	%rax, %rdx
	je	.L12
	call	abort
.L12:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
