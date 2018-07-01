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
	.comm	d,1,1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L10
L15:
	jmp	L11
L14:
	movzbl	d(%rip), %eax
	notl	%eax
	movb	%al, -1(%rbp)
	movzbl	d(%rip), %eax
	testb	%al, %al
	jg	L12
	movzbl	d(%rip), %eax
	movb	%al, -1(%rbp)
L12:
	movzbl	-1(%rbp), %eax
	movb	%al, d(%rip)
	movl	c(%rip), %eax
	testl	%eax, %eax
	jne	L13
	call	abort
L13:
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L11:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	L14
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L10:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jle	L15
	movzbl	d(%rip), %eax
	testb	%al, %al
	je	L16
	call	abort
L16:
	movl	$0, %eax
	leave
	ret
