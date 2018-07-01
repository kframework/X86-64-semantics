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
	.comm	i,9,1
	.comm	g,4,4
	.comm	j,4,4
	.comm	k,4,4
	.local	h
	.comm	h,9,1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, j(%rip)
	jmp	L10
L11:
	movl	$0, k(%rip)
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
L10:
	movl	j(%rip), %eax
	cmpl	$5, %eax
	jle	L11
	jmp	L12
L14:
	movl	-16(%rbp), %eax
	andl	$-262144, %eax
	orl	$5, %eax
	movl	%eax, -16(%rbp)
	movzbl	-14(%rbp), %eax
	andl	$-5, %eax
	movb	%al, -14(%rbp)
	movq	-16(%rbp), %rdx
	movabsq	$-8796092497921, %rax
	andq	%rax, %rdx
	movabsq	$8796090400768, %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-12(%rbp), %eax
	andl	$-67106817, %eax
	orb	$72, %ah
	movl	%eax, -12(%rbp)
	movzbl	-9(%rbp), %eax
	andl	$3, %eax
	orl	$20, %eax
	movb	%al, -9(%rbp)
	movzbl	-8(%rbp), %eax
	andl	$0, %eax
	movb	%al, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, h(%rip)
	movzbl	-8(%rbp), %eax
	movb	%al, h+8(%rip)
	movl	g(%rip), %eax
	testl	%eax, %eax
	je	L13
	movq	-16(%rbp), %rax
	movq	%rax, i(%rip)
	movzbl	-8(%rbp), %eax
	movb	%al, i+8(%rip)
L13:
	movzbl	h+5(%rip), %eax
	andl	$7, %eax
	movb	%al, h+5(%rip)
	movzbl	h+6(%rip), %eax
	andl	$0, %eax
	movb	%al, h+6(%rip)
	movzbl	h+7(%rip), %eax
	andl	$-4, %eax
	movb	%al, h+7(%rip)
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
L12:
	movl	k(%rip), %eax
	cmpl	$2, %eax
	jle	L14
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	foo
	movzbl	h+5(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	h+6(%rip), %edx
	salq	$5, %rdx
	orq	%rax, %rdx
	movzbl	h+7(%rip), %eax
	andl	$3, %eax
	salq	$13, %rax
	orq	%rdx, %rax
	salq	$49, %rax
	sarq	$49, %rax
	testw	%ax, %ax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	popq	%rbp
	ret
