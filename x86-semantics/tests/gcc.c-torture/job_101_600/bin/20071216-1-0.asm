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
	.local	x
	.comm	x,4,4
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	x(%rip), %eax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	bar
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$-4096, %rax
	ja	L12
	movq	-8(%rbp), %rax
	jmp	L13
L12:
	cmpq	$-38, -8(%rbp)
	je	L14
	movq	$-2, -8(%rbp)
L14:
	movq	-8(%rbp), %rax
	addl	$1, %eax
L13:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$26, x(%rip)
	call	foo
	cmpl	$26, %eax
	je	L16
	call	abort
L16:
	movl	$-39, x(%rip)
	call	foo
	cmpl	$-1, %eax
	je	L17
	call	abort
L17:
	movl	$-38, x(%rip)
	call	foo
	cmpl	$-37, %eax
	je	L18
	call	abort
L18:
	movl	$0, %eax
	popq	%rbp
	ret
