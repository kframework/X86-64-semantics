	.file	"strcmp.c"
	.text
	.globl	strcmp
	.type	strcmp, @function
strcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L2
.L4:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L3
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L4
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
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
.L7:
	popq	%rbp
	ret
	.size	strcmp, .-strcmp
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
	.globl	x
	.data
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.long	7
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
	.section	.rodata
.LC1:
	.string	"hello world"
.LC2:
	.string	"hello"
.LC3:
	.string	"llo"
.LC4:
	.string	"hello world "
.LC5:
	.string	"dx"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$.LC1, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jg	.L12
	call	abort
.L12:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jg	.L13
	call	abort
.L13:
	movq	-8(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	js	.L14
	call	abort
.L14:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	js	.L15
	call	abort
.L15:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	js	.L16
	call	abort
.L16:
	movq	bar(%rip), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jg	.L17
	call	abort
.L17:
	movq	bar(%rip), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	negl	%eax
	testl	%eax, %eax
	js	.L18
	call	abort
.L18:
	movq	bar(%rip), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L19
	call	abort
.L19:
	movq	bar(%rip), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L20
	call	abort
.L20:
	movq	bar(%rip), %rdx
	movl	x(%rip), %eax
	subl	$1, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jle	.L21
	movl	x(%rip), %eax
	cmpl	$6, %eax
	je	.L22
.L21:
	call	abort
.L22:
	movq	bar(%rip), %rdx
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	negl	%eax
	testl	%eax, %eax
	jns	.L23
	movl	x(%rip), %eax
	cmpl	$7, %eax
	je	.L24
.L23:
	call	abort
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$.LC2, %eax
	movl	$6, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	jg	.L11
	call	abort
.L11:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
