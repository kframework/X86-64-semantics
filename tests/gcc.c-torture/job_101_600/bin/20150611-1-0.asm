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
	.comm	b,2,2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L10
L14:
	movl	$0, a(%rip)
	movzwl	b(%rip), %eax
	cmpw	$28378, %ax
	jne	L11
	movzwl	b(%rip), %eax
	cwtl
	cltq
	movl	-16(%rbp,%rax,4), %eax
	movl	%eax, a(%rip)
L11:
	movl	d(%rip), %eax
	testl	%eax, %eax
	jne	L12
	movzwl	b(%rip), %eax
	testw	%ax, %ax
	jne	L12
	nop
L13:
	movl	c(%rip), %eax
	testl	%eax, %eax
	jne	L13
L12:
	movzwl	b(%rip), %eax
	addl	$1, %eax
	movw	%ax, b(%rip)
L10:
	movzwl	b(%rip), %eax
	cmpw	$1, %ax
	jle	L14
	movl	$0, %eax
	popq	%rbp
	ret
