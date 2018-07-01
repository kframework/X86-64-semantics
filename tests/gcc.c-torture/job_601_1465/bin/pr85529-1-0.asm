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
	.comm	b,4,4
c:
	.long	1
	.comm	d,4,4
	.comm	e,4,4
	.comm	f,4,4
	.local	g
	.comm	g,4,4
	.comm	s,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movl	%esi, -8(%rbp)
	movb	%al, -4(%rbp)
	cmpb	$0, -4(%rbp)
	js	L10
	movsbl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	shlx	%eax, %edx, %eax
	jmp	L11
L10:
	movzbl	-4(%rbp), %eax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$-83, -1(%rbp)
	movl	d(%rip), %eax
	testl	%eax, %eax
	jne	L14
	jmp	L15
L14:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jne	L16
	movl	f(%rip), %eax
	testl	%eax, %eax
	je	L17
L16:
	movl	$1, %eax
	jmp	L18
L17:
	movl	$0, %eax
L18:
	movb	%al, -1(%rbp)
L15:
	jmp	L19
L22:
	movl	s(%rip), %eax
	movsbl	-1(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	foo
	cmpb	-1(%rbp), %al
	jle	L21
	movl	g(%rip), %eax
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, c(%rip)
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L21
	nop
L21:
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L19:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	L22
	movl	c(%rip), %eax
	cmpl	$1, %eax
	je	L23
	call	abort
L23:
	movl	$0, %eax
	leave
	ret
