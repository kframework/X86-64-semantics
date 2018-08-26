	.file	"strcspn.c"
	.text
	.globl	strcspn
strcspn:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L2
L7:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L3
L6:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L9
	addq	$1, -8(%rbp)
L3:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L6
	addq	$1, -16(%rbp)
L2:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L7
	jmp	L5
L9:
	nop
L5:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	ret
	.globl	exit
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	nop
	popq	%rbp
	ret
	.globl	abort
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	nop
	popq	%rbp
	ret
	.comm	inside_main,4,4
	.globl	main
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $inside_main(%rip)
	call	main_test
	movl	$0, $inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.globl	link_error
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.section	.rodata
LC0:
	.string	"hello world"
LC1:
	.string	"hello"
LC2:
	.string	"z"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$LC0, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	strcspn
	testq	%rax, %rax
	je	L16
	call	abort
L16:
	movq	-96(%rbp), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strcspn
	cmpq	$11, %rax
	je	L17
	call	abort
L17:
	movq	-96(%rbp), %rax
	addq	$4, %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strcspn
	cmpq	$7, %rax
	je	L18
	call	abort
L18:
	movq	-96(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	strcspn
	testq	%rax, %rax
	je	L19
	call	abort
L19:
	movq	-96(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	cmpq	$11, %rax
	je	L20
	call	abort
L20:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	cmpq	$11, %rax
	je	L21
	call	abort
L21:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	cmpq	$10, %rax
	jne	L22
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	L23
L22:
	call	abort
L23:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	movq	-88(%rbp), %rax
	addq	$5, %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	cmpq	$5, %rax
	jne	L24
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	L25
L24:
	call	abort
L25:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	L26
	call	abort
L26:
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	addq	$1, -88(%rbp)
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	je	L27
	call	abort
L27:
	movq	-96(%rbp), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strcspn
	cmpq	$11, %rax
	je	L30
	call	abort
L30:
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L29
	call	__stack_chk_fail
L29:
	leave
	ret
