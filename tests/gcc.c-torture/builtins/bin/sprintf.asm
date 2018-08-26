	.file	"sprintf.c"
	.comm	inside_main,4,4
	.text
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
	jne	L12
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L13
L12:
	call	abort
L13:
	movl	$32, %edx
	movl	$65, %esi
	movl	$buffer, %edi
	call	memset
	movl	$0, %eax
	call	test2
	cmpl	$3, %eax
	je	L14
	call	abort
L14:
	movl	$4, %edx
	movl	$LC0, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L15
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L16
L15:
	call	abort
L16:
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
	jne	L17
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L18
L17:
	call	abort
L18:
	movl	$32, %edx
	movl	$65, %esi
	movl	$buffer, %edi
	call	memset
	movl	$0, %eax
	call	test4
	cmpl	$3, %eax
	je	L19
	call	abort
L19:
	movl	$4, %edx
	movl	$LC1, %esi
	movl	$buffer, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L20
	movzbl $buffer + 4(%rip), %eax
	cmpb	$65, %al
	je	L21
L20:
	call	abort
L21:
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
	jne	L22
	movzbl $buffer + 5(%rip), %eax
	cmpb	$65, %al
	je	L24
L22:
	call	abort
L24:
	nop
	popq	%rbp
	ret
