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
	.comm	v,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	f
	movl	$0, %edi
	call	exit
h1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
h2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$v, -8(%rbp)
	je	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
g:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
L19:
	movl	$0, %eax
	call	h1
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	L16
	movl	$0, %eax
	jmp	L17
L16:
	cmpl	$1, -4(%rbp)
	jne	L18
	movl	$0, %eax
	call	h1
L18:
	cmpl	$1, -4(%rbp)
	je	L19
L20:
	movl	$v, %edi
	movl	$0, %eax
	call	h2
	movl	%eax, -8(%rbp)
	cmpl	$5, -4(%rbp)
	je	L20
	cmpl	$2, -4(%rbp)
	je	L21
	movl	-8(%rbp), %eax
	jmp	L17
L21:
	movq	-24(%rbp), %rax
	movb	$97, (%rax)
	movl	$0, %eax
L17:
	leave
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-1(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	g
	leave
	ret
