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
	.comm	c,4,4
	.comm	d,4,4
	.comm	e,4,4
	.comm	f,4,4
	.comm	g,4,4
	.comm	h,4,4
	.comm	i,4,4
	.comm	b,2,2
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movw	$0, b(%rip)
L21:
	movl	f(%rip), %eax
	cltq
	movl	$0, -16(%rbp,%rax,4)
	movl	h(%rip), %eax
	testl	%eax, %eax
	je	L10
	movl	$0, d(%rip)
	jmp	L11
L10:
	jmp	L12
L13:
	movl	f(%rip), %eax
	addl	$1, %eax
	movl	%eax, f(%rip)
L12:
	movl	f(%rip), %eax
	testl	%eax, %eax
	jne	L13
	movl	$0, a(%rip)
	jmp	L14
L20:
	movzwl	b(%rip), %eax
	cwtl
	movzwl	b(%rip), %edx
	xorl	$1, %edx
	movswl	%dx, %edx
	andl	$83647, %edx
	andl	%edx, %eax
	testl	%eax, %eax
	je	L15
	movzwl	b(%rip), %eax
	cwtl
	jmp	L16
L15:
	movzwl	b(%rip), %eax
	cwtl
	subl	$1, %eax
L16:
	movl	%eax, i(%rip)
	movl	i(%rip), %eax
	movl	%eax, g(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, e(%rip)
	movl	c(%rip), %eax
	testl	%eax, %eax
	je	L17
	jmp	L22
L17:
	movl	$0, %eax
	jmp	L23
L22:
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L14:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jle	L20
L11:
	jmp	L21
L23:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn1
	movl	g(%rip), %eax
	cmpl	$-1, %eax
	je	L25
	call	abort
L25:
	movl	$0, %eax
	popq	%rbp
	ret
