	.file	"strstr-asm.c"
	.text
	.globl	my_strstr
	.type	my_strstr, @function
my_strstr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movq	-24(%rbp), %rax
	jmp	.L3
.L2:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -24(%rbp)
	jmp	.L4
.L6:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L5
	movq	-24(%rbp), %rax
	jmp	.L3
.L5:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	strchr
	movq	%rax, -24(%rbp)
.L4:
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$0, %eax
.L3:
	leave
	ret
	.size	my_strstr, .-my_strstr
	.globl	my_strstr
	.type	my_strstr, @function
my_strstr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	inside_main(%rip), %eax
	testl	%eax, %eax
	je	.L8
	call	abort
.L8:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	my_strstr
	leave
	ret
	.size	my_strstr, .-my_strstr
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
	.section	.rodata
.LC0:
	.string	"rld"
	.data
	.align 8
	.type	p, @object
	.size	p, 8
p:
	.quad	.LC0
	.globl	q
	.section	.rodata
.LC1:
	.string	"hello world"
	.data
	.align 8
	.type	q, @object
	.size	q, 8
q:
	.quad	.LC1
	.section	.rodata
.LC2:
	.string	"world"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$.LC1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	strchr
	cmpq	-8(%rbp), %rax
	je	.L14
	call	abort
.L14:
	movq	-8(%rbp), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	je	.L15
	call	abort
.L15:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	cmpq	%rax, %rdx
	je	.L16
	call	abort
.L16:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	my_strstr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	je	.L17
	call	abort
.L17:
	movq	p(%rip), %rax
	movq	-8(%rbp), %rdx
	addq	$2, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	my_strstr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L18
	call	abort
.L18:
	movq	q(%rip), %rax
	addq	$1, %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, %rdx
	movq	q(%rip), %rax
	addq	$4, %rax
	cmpq	%rax, %rdx
	je	.L19
	call	abort
.L19:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	my_strstr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	je	.L13
	call	abort
.L13:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
