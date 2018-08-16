	.file	"strstr.c"
	.text
	.globl	strstr
	.type	strstr, @function
strstr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L2
.L9:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L3
.L6:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L4
	jmp	.L5
.L4:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L3:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L5
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
.L5:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L7
	movq	-24(%rbp), %rax
	jmp	.L8
.L7:
	addq	$1, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movl	$0, %eax
.L8:
	popq	%rbp
	ret
	.size	strstr, .-strstr
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
	.section	.rodata
.LC0:
	.string	"hello world"
.LC1:
	.string	"world"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$.LC0, -8(%rbp)
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
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	cmpq	%rax, %rdx
	je	.L17
	call	abort
.L17:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strstr
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
