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
	.comm	a,4,4
	.comm	b,4,4
c:
	.long	1
d:
	.long	1
	.comm	e,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$4195552, %eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	L11
	call	abort
L11:
	leave
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	call	foo
L20:
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L14
	movl	d(%rip), %eax
	movb	%al, -1(%rbp)
L14:
	movsbl	-1(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	L15
	movzbl	-1(%rbp), %eax
	jmp	L16
L15:
	movl	$0, %eax
L16:
	movb	%al, -2(%rbp)
	movzbl	-2(%rbp), %eax
	subl	$120, %eax
	xorl	$1, %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$97, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	a(%rip), %eax
	cmpl	-12(%rbp), %eax
	je	L17
	movl	$0, %esi
	movl	$1193046, %edi
	call	bar
L17:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L18
	movl	e(%rip), %eax
	jmp	L21
L18:
	jmp	L20
L21:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %edi
	call	baz
	movl	$0, %eax
	popq	%rbp
	ret
