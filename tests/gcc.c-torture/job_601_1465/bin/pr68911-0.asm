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
	.comm	a,1,1
	.comm	b,4,4
	.comm	c,4,4
	.comm	d,2,2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$2, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	L10
L17:
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	L11
	movl	b(%rip), %eax
	testl	%eax, %eax
	je	L12
	movzwl	d(%rip), %eax
	testw	%ax, %ax
	je	L12
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	notl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movb	%al, a(%rip)
L11:
	jmp	L14
L16:
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
	cmpl	$100, -8(%rbp)
	jbe	L14
	nop
L15:
	call	abort
L14:
	cmpl	$93, -4(%rbp)
	jbe	L16
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
L10:
	movl	c(%rip), %eax
	cmpl	$1, %eax
	jle	L17
	movl	$0, %eax
	leave
	ret
