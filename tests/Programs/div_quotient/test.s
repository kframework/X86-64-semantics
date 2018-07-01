foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-40(%rbp), %rax
	orq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	xorq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 12 "test.c" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
.globl	_start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edx
	movl	$7, %esi
	movl	$64, %edi
	call	foo
	cmpq	$10, %rax
	jne	L5
	movl	$2, %edx
	movl	$3, %esi
	movl	$28, %edi
	call	foo
	cmpq	$14, %rax
	je	L6
L5:
	call	abort
L6:
	movl	$0, %eax
	popq	%rbp
	ret
