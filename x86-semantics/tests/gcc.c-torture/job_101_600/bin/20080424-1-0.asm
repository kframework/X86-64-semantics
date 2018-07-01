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
	.comm	g,1728,64
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	i.2260(%rip), %eax
	addl	$8, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$g, %rax
	cmpq	-8(%rbp), %rax
	jne	L10
	movl	i.2260(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, i.2260(%rip)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$g, %rax
	cmpq	-16(%rbp), %rax
	je	L9
L10:
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$g, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	L13
L14:
	movl	-12(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	-288(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bar
	addl	$1, -12(%rbp)
L13:
	cmpl	$7, -12(%rbp)
	jle	L14
	movl	$0, %eax
	leave
	ret
	.local	i.2260
	.comm	i.2260,4,4
