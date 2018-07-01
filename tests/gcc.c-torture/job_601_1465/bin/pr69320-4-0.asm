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
	.comm	b,1,1
	.comm	d,1,1
	.comm	c,2,2
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jg	L10
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setg	%al
	movzbl	%al, %eax
	jmp	L11
L10:
	movl	-4(%rbp), %eax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$a, -8(%rbp)
	movq	$a, -16(%rbp)
	movb	$1, b(%rip)
	jmp	L14
L21:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	L15
	movzbl	d(%rip), %eax
	testb	%al, %al
	je	L16
L15:
	movl	$1, %eax
	jmp	L17
L16:
	movl	$0, %eax
L17:
	movw	%ax, c(%rip)
	movl	a(%rip), %edx
	movzwl	c(%rip), %eax
	testw	%ax, %ax
	jne	L18
	movzbl	b(%rip), %eax
	testb	%al, %al
	je	L19
L18:
	movl	$1, %eax
	jmp	L20
L19:
	movl	$0, %eax
L20:
	movl	%edx, %esi
	movl	%eax, %edi
	call	fn1
	movswl	%ax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movzbl	b(%rip), %eax
	addl	$1, %eax
	movb	%al, b(%rip)
L14:
	movzbl	b(%rip), %eax
	cmpb	$9, %al
	jle	L21
	movl	a(%rip), %eax
	cmpl	$1, %eax
	je	L22
	call	abort
L22:
	movl	$0, %edi
	call	exit
