	.file	"sprintf.c"
	.text
	.globl	sprintf
sprintf:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L2
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L2:
	movq	$40, %rax
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
	call	vsprintf
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	movq	-184(%rbp), %rsi
	xorq	$40, %rsi
	je	L4
	call	__stack_chk_fail
L4:
	leave
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
	.comm	buffer,32,32
	.globl	test1
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$7303014, $buffer(%rip)
	nop
	popq	%rbp
	ret
	.globl	test2
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$7303014, $buffer(%rip)
	movl	$3, %eax
	popq	%rbp
	ret
	.globl	test3
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$7496034, $buffer(%rip)
	nop
	popq	%rbp
	ret
	.globl	test4
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$7496034, $buffer(%rip)
	movl	$3, %eax
	popq	%rbp
	ret
	.globl	test5
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$buffer, %edi
	call	strcpy
	nop
	leave
	ret
	.section	.rodata
LC0:
	.string	"foo"
LC1:
	.string	"bar"
LC2:
	.string	"barf"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$32, %edx
	movl	$65, %esi
	movl	$buffer, %edi
	call	memset
	movl	$0, %eax
	call	test1
	movl	$4, %edx
	movl	$LC0, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L16
	movzbl $buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L17
L16:
	call	abort
L17:
	movl	$32, %edx
	movl	$65, %esi
	movl	$buffer, %edi
	call	memset
	movl	$0, %eax
	call	test2
	cmpl	$3, %eax
	je	L18
	call	abort
L18:
	movl	$4, %edx
	movl	$LC0, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L19
	movzbl $buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L20
L19:
	call	abort
L20:
	movl	$32, %edx
	movl	$65, %esi
	movl	$buffer, %edi
	call	memset
	movl	$0, %eax
	call	test3
	movl	$4, %edx
	movl	$LC1, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L21
	movzbl $buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L22
L21:
	call	abort
L22:
	movl	$32, %edx
	movl	$65, %esi
	movl	$buffer, %edi
	call	memset
	movl	$0, %eax
	call	test4
	cmpl	$3, %eax
	je	L23
	call	abort
L23:
	movl	$4, %edx
	movl	$LC1, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L24
	movzbl $buffer+4(%rip), %eax
	cmpb	$65, %al
	je	L25
L24:
	call	abort
L25:
	movl	$32, %edx
	movl	$65, %esi
	movl	$buffer, %edi
	call	memset
	movl	$LC2, %edi
	call	test5
	movl	$5, %edx
	movl	$LC2, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L26
	movzbl $buffer+5(%rip), %eax
	cmpb	$65, %al
	je	L28
L26:
	call	abort
L28:
	nop
	popq	%rbp
	ret
