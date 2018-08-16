	.file	"strncmp.c"
	.text
	.globl	strncmp
	.type	strncmp, @function
strncmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L6:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -18(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	cmpb	$0, -18(%rbp)
	je	.L3
	movzbl	-18(%rbp), %eax
	cmpb	-17(%rbp), %al
	je	.L4
.L3:
	movzbl	-18(%rbp), %edx
	movzbl	-17(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L5
.L4:
	subq	$1, -56(%rbp)
.L2:
	cmpq	$0, -56(%rbp)
	jne	.L6
	movzbl	-18(%rbp), %edx
	movzbl	-17(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
.L5:
	popq	%rbp
	ret
	.size	strncmp, .-strncmp
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
	.string	"d"
.LC2:
	.string	"ozz"
.LC3:
	.string	"rzz"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$.LC0, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$12, %edx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L11
	call	abort
.L11:
	movq	-24(%rbp), %rax
	movl	$12, %edx
	movq	%rax, %rsi
	movl	$.LC0, %edi
	call	strncmp
	testl	%eax, %eax
	je	.L12
	call	abort
.L12:
	movq	-24(%rbp), %rax
	addq	$10, %rax
	movl	$100, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L13
	call	abort
.L13:
	movq	-24(%rbp), %rax
	addq	$10, %rax
	movl	$100, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L14
	call	abort
.L14:
	movl	$.LC1, %eax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L15
	call	abort
.L15:
	movl	$.LC1, %eax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L16
	call	abort
.L16:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	-16(%rbp), %rax
	jne	.L17
	movq	-24(%rbp), %rax
	addq	$5, %rax
	cmpq	-8(%rbp), %rax
	je	.L18
.L17:
	call	abort
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jle	.L19
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	-16(%rbp), %rax
	je	.L20
.L19:
	call	abort
.L20:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	negl	%eax
	testl	%eax, %eax
	jns	.L21
	movq	-24(%rbp), %rax
	addq	$2, %rax
	cmpq	-16(%rbp), %rax
	je	.L22
.L21:
	call	abort
.L22:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jle	.L23
	movq	-24(%rbp), %rax
	addq	$3, %rax
	cmpq	-16(%rbp), %rax
	je	.L24
.L23:
	call	abort
.L24:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	negl	%eax
	testl	%eax, %eax
	jns	.L25
	movq	-24(%rbp), %rax
	addq	$4, %rax
	cmpq	-16(%rbp), %rax
	je	.L26
.L25:
	call	abort
.L26:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L27
	movq	-24(%rbp), %rax
	addq	$5, %rax
	cmpq	-16(%rbp), %rax
	je	.L28
.L27:
	call	abort
.L28:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L29
	movq	-24(%rbp), %rax
	addq	$6, %rax
	cmpq	-16(%rbp), %rax
	je	.L30
.L29:
	call	abort
.L30:
	movl	$.LC2, %eax
	movzbl	(%rax), %edx
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L31
	movq	-24(%rbp), %rax
	addq	$7, %rax
	cmpq	-16(%rbp), %rax
	je	.L32
.L31:
	call	abort
.L32:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movl	$.LC3, %eax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L33
	movq	-24(%rbp), %rax
	addq	$8, %rax
	cmpq	-16(%rbp), %rax
	je	.L34
.L33:
	call	abort
.L34:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jns	.L35
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	-16(%rbp), %rax
	jne	.L35
	movq	-24(%rbp), %rax
	addq	$5, %rax
	cmpq	-8(%rbp), %rax
	je	.L10
.L35:
	call	abort
.L10:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
