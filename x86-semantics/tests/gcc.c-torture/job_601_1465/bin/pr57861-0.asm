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
	.value	1
	.comm	f,2,2
	.comm	b,4,4
	.comm	c,4,4
	.comm	d,4,4
g:
	.quad	b
	.comm	h,4,4
	.comm	i,4,4
	.comm	j,4,4
	.comm	e,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$0, c(%rip)
	jmp	L10
L17:
	movl	$0, j(%rip)
	movl	j(%rip), %eax
	testl	%eax, %eax
	jne	L11
	cmpb	$0, -20(%rbp)
	je	L12
L11:
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	movl	%eax, i(%rip)
	movsbl	-20(%rbp), %edx
	movl	i(%rip), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	e(%rip), %eax
	cmpl	%eax, %edx
	jbe	L14
	movq	$f, -16(%rbp)
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L15
	movl	h(%rip), %eax
	testl	%eax, %eax
	je	L15
	movl	$1, %eax
	jmp	L16
L15:
	movl	$0, %eax
L16:
	movw	%ax, a(%rip)
	movq	-16(%rbp), %rax
	movw	$0, (%rax)
L14:
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
L10:
	movl	c(%rip), %eax
	cmpl	$1, %eax
	jle	L17
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	g(%rip), %rbx
	movzwl	a(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	foo
	movl	%eax, (%rbx)
	movzwl	a(%rip), %eax
	testw	%ax, %ax
	je	L20
	call	abort
L20:
	movl	$0, %eax
	popq	%rbx
	popq	%rbp
	ret
