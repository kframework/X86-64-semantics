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
a:
	.long	1
	.comm	b,4,4
	.comm	d,4,4
e:
	.quad	d
	.comm	c,8,8
g:
	.quad	c
	.comm	f,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	g(%rip), %rax
	movl	b(%rip), %edx
	movslq	%edx, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	jne	L10
	movl	-4(%rbp), %eax
	jmp	L11
L10:
	movl	$0, %eax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$16, %rsp
	movl	a(%rip), %eax
	movl	%eax, -12(%rbp)
	jmp	L14
L15:
	movq	f(%rip), %rax
	movq	e(%rip), %rax
	movl	$0, (%rax)
	movq	e(%rip), %rbx
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	foo
	movl	%eax, (%rbx)
	movl	b(%rip), %eax
	subl	$1, %eax
	movl	%eax, b(%rip)
L14:
	movl	b(%rip), %eax
	cmpl	$-20, %eax
	jne	L15
	movl	$0, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%rbp
	ret
