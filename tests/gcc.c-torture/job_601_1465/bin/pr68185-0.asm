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
d:
	.long	1
	.comm	e,4,4
	.comm	f,4,4
	.comm	o,4,4
	.comm	u,4,4
w:
	.long	1
	.comm	z,4,4
	.comm	c,2,2
	.comm	q,2,2
	.comm	t,2,2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L10
L21:
	jmp	L11
L17:
	jmp	L12
L16:
	movl	b(%rip), %eax
	movw	%ax, c(%rip)
	movl	z(%rip), %eax
	movl	%eax, o(%rip)
	movl	o(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	L13
L15:
	nop
L14:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jne	L14
L13:
	movl	u(%rip), %eax
	testl	%eax, %eax
	jne	L15
L12:
	movl	e(%rip), %eax
	testl	%eax, %eax
	jne	L16
L11:
	movl	o(%rip), %eax
	testl	%eax, %eax
	jne	L17
	movzwl	t(%rip), %eax
	testw	%ax, %ax
	jg	L18
	movl	w(%rip), %eax
	movb	%al, -1(%rbp)
L18:
	movsbl	-1(%rbp), %eax
	movl	%eax, f(%rip)
	cmpb	$0, -1(%rbp)
	je	L20
	movw	$1, q(%rip)
	nop
L20:
	movl	d(%rip), %eax
	subl	$1, %eax
	movl	%eax, d(%rip)
L10:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jne	L21
	movzwl	q(%rip), %eax
	cmpw	$1, %ax
	je	L22
	call	abort
L22:
	movl	$0, %eax
	leave
	ret
