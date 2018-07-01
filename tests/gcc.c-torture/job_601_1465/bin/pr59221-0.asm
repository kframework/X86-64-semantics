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
	.comm	e,2,2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	L10
L11:
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L10:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L11
	movl	a(%rip), %eax
	movw	%ax, -2(%rbp)
	movl	$15, -8(%rbp)
	cmpw	$0, -2(%rbp)
	jne	L12
	movl	-8(%rbp), %eax
	movl	$1, %edx
	shlx	%eax, %edx, %eax
	jmp	L13
L12:
	movzwl	-2(%rbp), %eax
L13:
	movw	%ax, e(%rip)
	movzwl	e(%rip), %eax
	cwtl
	movl	%eax, -12(%rbp)
	cmpl	$83647, -12(%rbp)
	je	L14
	movl	-12(%rbp), %eax
	jmp	L15
L14:
	movl	$0, %eax
L15:
	movl	%eax, d(%rip)
	movl	d(%rip), %eax
	cmpl	$1, %eax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	leave
	ret
