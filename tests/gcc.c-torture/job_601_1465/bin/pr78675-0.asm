strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
	.comm	a,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	jmp	L10
L13:
	movq	a(%rip), %rax
	testq	%rax, %rax
	je	L11
	cmpq	$0, -24(%rbp)
	je	L11
	movl	$1, %eax
	jmp	L12
L11:
	movl	$0, %eax
L12:
	cltq
	movq	%rax, -8(%rbp)
	movq	a(%rip), %rax
	addq	$1, %rax
	movq	%rax, a(%rip)
L10:
	movq	a(%rip), %rax
	testq	%rax, %rax
	jle	L13
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	foo
	testq	%rax, %rax
	je	L16
	call	abort
L16:
	movq	$0, a(%rip)
	movl	$1, %edi
	call	foo
	testq	%rax, %rax
	je	L17
	call	abort
L17:
	movq	$0, a(%rip)
	movl	$25, %edi
	call	foo
	testq	%rax, %rax
	je	L18
	call	abort
L18:
	movq	$-64, a(%rip)
	movl	$0, %edi
	call	foo
	testq	%rax, %rax
	je	L19
	call	abort
L19:
	movq	$-64, a(%rip)
	movl	$1, %edi
	call	foo
	testq	%rax, %rax
	je	L20
	call	abort
L20:
	movq	$-64, a(%rip)
	movl	$25, %edi
	call	foo
	testq	%rax, %rax
	je	L21
	call	abort
L21:
	movl	$0, %eax
	popq	%rbp
	ret
