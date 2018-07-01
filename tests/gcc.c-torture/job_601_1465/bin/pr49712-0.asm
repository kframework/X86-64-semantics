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
	.comm	a,8,4
	.comm	b,4,4
	.comm	c,4,4
	.comm	d,4,4
	.comm	e,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L11
L16:
	movl	$0, -4(%rbp)
	jmp	L12
L15:
	movl	$0, e(%rip)
	jmp	L13
L14:
	movl	$1, e(%rip)
L13:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jne	L14
	addl	$1, -4(%rbp)
L12:
	cmpl	$3, -4(%rbp)
	jle	L15
	movl	$1, d(%rip)
L11:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jle	L16
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, b(%rip)
	jmp	L19
L22:
	jmp	L20
L21:
	call	bar
	movl	%eax, %edx
	movl	b(%rip), %eax
	movslq	%eax, %rcx
	movl	$0, a(,%rcx,4)
	cltq
	movl	a(,%rax,4), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
L20:
	movl	c(%rip), %eax
	testl	%eax, %eax
	jne	L21
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L19:
	movl	b(%rip), %eax
	cmpl	$1, %eax
	jle	L22
	movl	$0, %eax
	popq	%rbp
	ret
