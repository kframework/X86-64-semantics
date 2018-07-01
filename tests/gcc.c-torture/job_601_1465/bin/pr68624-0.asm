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
	.comm	c,4,4
	.comm	d,4,4
e:
	.long	1
	.comm	f,4,4
	.comm	g,4,4
	.comm	h,4,4
	.comm	j,4,4
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	c(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	h(%rip), %eax
	testl	%eax, %eax
	je	L10
	movl	$9, %eax
	jmp	L11
L10:
	movl	c(%rip), %eax
	testl	%eax, %eax
	jne	L12
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L13
L12:
	movl	$1, %eax
	jmp	L14
L13:
	movl	$0, %eax
L14:
	movl	e(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, g(%rip)
	movl	g(%rip), %eax
	testl	%eax, %eax
	jne	L15
	movl	f(%rip), %eax
	testl	%eax, %eax
	je	L16
L15:
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L16
	movl	$9, %eax
	jmp	L11
L16:
	movl	d(%rip), %eax
	movl	%eax, e(%rip)
	movl	$0, c(%rip)
	jmp	L17
L18:
	movl	c(%rip), %eax
	subl	$1, %eax
	movl	%eax, c(%rip)
L17:
	movl	c(%rip), %eax
	cmpl	$-3, %eax
	jge	L18
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L19
	movl	c(%rip), %eax
	subl	$1, %eax
	movl	%eax, c(%rip)
L19:
	movl	c(%rip), %eax
	movl	%eax, j(%rip)
	movl	d(%rip), %eax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn1
	movl	c(%rip), %eax
	cmpl	$-4, %eax
	je	L21
	call	abort
L21:
	movl	$0, %eax
	popq	%rbp
	ret
