	.file	"printf.c"
	.text
	.globl	printf
	.type	printf, @function
printf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L2:
	movq	%rdi, -232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L4
	call	__stack_chk_fail
.L4:
	leave
	ret
	.size	printf, .-printf
	.globl	printf_unlocked
	.type	printf_unlocked, @function
printf_unlocked:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L6
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
.L6:
	movq	%rdi, -232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vprintf
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	call	__stack_chk_fail
.L8:
	leave
	ret
	.size	printf_unlocked, .-printf_unlocked
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
	.string	"hello"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$.LC0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$.LC1, %edi
	call	puts
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	puts
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -40(%rbp)
	jne	.L13
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L14
.L13:
	call	abort
.L14:
	movl	$10, %edi
	call	putchar
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	leaq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -40(%rbp)
	jne	.L15
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
.L15:
	call	abort
.L16:
	movl	$10, %edi
	call	putchar
	movl	$10, %edi
	call	putchar
	movl	$.LC0, %edi
	call	puts
	movl	$.LC0, %edi
	call	puts
	movl	$.LC1, %edi
	call	puts
	movl	$10, %edi
	call	putchar
	movl	$.LC1, %edi
	call	puts
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L17
	call	__stack_chk_fail
.L17:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
