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
	.local	u
	.comm	u,96,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	jmp	L10
L20:
	movq	$0, -16(%rbp)
	jmp	L11
L19:
	movq	$u, -32(%rbp)
	movq	$0, -24(%rbp)
	jmp	L12
L13:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$0, (%rax)
	addq	$1, -24(%rbp)
L12:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	L13
	movq	$0, -24(%rbp)
	jmp	L14
L15:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$97, (%rax)
	addq	$1, -24(%rbp)
L14:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	L15
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$0, (%rax)
	movq	$0, -24(%rbp)
	jmp	L16
L17:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$98, (%rax)
	addq	$1, -24(%rbp)
L16:
	cmpq	$7, -24(%rbp)
	jbe	L17
	movq	-8(%rbp), %rax
	addq	$u, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	L18
	call	abort
L18:
	addq	$1, -16(%rbp)
L11:
	cmpq	$63, -16(%rbp)
	jbe	L19
	addq	$1, -8(%rbp)
L10:
	cmpq	$7, -8(%rbp)
	jbe	L20
	movl	$0, %edi
	call	exit
