	.file	"fprintf.c"
	.text
	.globl	fprintf
	.type	fprintf, @function
fprintf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
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
	movq	%rsi, -240(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L4
	call	__stack_chk_fail
.L4:
	leave
	ret
	.size	fprintf, .-fprintf
	.globl	fprintf_unlocked
	.type	fprintf_unlocked, @function
fprintf_unlocked:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
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
	movq	%rsi, -240(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-240(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L8
	call	__stack_chk_fail
.L8:
	leave
	ret
	.size	fprintf_unlocked, .-fprintf_unlocked
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
.LC2:
	.string	"hello world\n"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	stdout(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$.LC0, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	leaq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -56(%rbp)
	jne	.L13
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L14
.L13:
	call	abort
.L14:
	leaq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -56(%rbp)
	jne	.L15
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	leaq	-48(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -72(%rbp)
	jne	.L15
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
.L15:
	call	abort
.L16:
	leaq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	leaq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -56(%rbp)
	jne	.L17
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L18
.L17:
	call	abort
.L18:
	leaq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	leaq	-32(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -56(%rbp)
	jne	.L19
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	leaq	-48(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -72(%rbp)
	jne	.L19
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
.L19:
	call	abort
.L20:
	leaq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$11, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	leaq	-48(%rbp), %rax
	addq	$8, %rax
	cmpq	%rax, -72(%rbp)
	jne	.L21
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
.L21:
	call	abort
.L22:
	leaq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$12, %edx
	movl	$1, %esi
	movl	$.LC2, %edi
	call	fwrite
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail
.L23:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
