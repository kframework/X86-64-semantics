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
nested_0.2272:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	cmpq	-8(%rbp), %rax
	jge	L10
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	jmp	L11
L10:
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	leaq	-64(%rbp), %rdx
	movl	$nested_2.2280, %ecx
	movw	$-17599, (%rax)
	movl	%ecx, 2(%rax)
	movw	$-17847, 6(%rax)
	movq	%rdx, 8(%rax)
	movl	$-1864106167, 16(%rax)
	movl	$0, %eax
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	jmp	L13
L20:
	movq	$0, -16(%rbp)
	jmp	L14
L19:
	movq	$0, -24(%rbp)
	jmp	L15
L18:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	L16
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	jmp	L17
L16:
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
L17:
	leaq	-64(%rbp), %rdx
	addq	$8, %rdx
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	foo
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	addq	$1, -24(%rbp)
L15:
	cmpq	$9, -24(%rbp)
	jle	L18
	addq	$1, -16(%rbp)
L14:
	cmpq	$9, -16(%rbp)
	jle	L19
	addq	$1, -8(%rbp)
L13:
	cmpq	$9, -8(%rbp)
	jle	L20
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	$3201289205, %eax
	cmpq	%rax, %rdx
	je	L21
	call	abort
L21:
	movl	$0, %edi
	call	exit
nested_1.2276:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%r10, %rbx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$nested_0.2272, %edi
	call	use
	movq	(%rbx), %rdx
	addq	%rdx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
nested_2.2280:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r10, %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r10
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nested_1.2276
	leave
	ret
use:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	leave
	ret
