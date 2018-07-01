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
	.comm	s,32,32
	.comm	i,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$-1220975898975746, %rax
	cmpq	%rax, -8(%rbp)
	je	L10
	call	abort
L10:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movzbl	-9(%rbp), %eax
	andl	$7, %eax
	orl	$-16, %eax
	movb	%al, -9(%rbp)
	movl	-8(%rbp), %eax
	andl	$0, %eax
	orl	$992614671, %eax
	movl	%eax, -8(%rbp)
	movzwl	-4(%rbp), %eax
	andl	$0, %eax
	orw	$-8884, %ax
	movw	%ax, -4(%rbp)
	movzbl	-2(%rbp), %eax
	orl	$1, %eax
	movb	%al, -2(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, s+16(%rip)
	movq	%rdx, s+24(%rip)
	jmp	L12
L13:
	movzbl	s+23(%rip), %eax
	shrb	$3, %al
	movzbl	%al, %edx
	movabsq	$562949953421311, %rax
	andq	s+24(%rip), %rax
	salq	$5, %rax
	orq	%rdx, %rax
	salq	$10, %rax
	sarq	$10, %rax
	movq	%rax, %rdi
	call	foo
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
L12:
	movl	i(%rip), %eax
	testl	%eax, %eax
	jle	L13
	movl	$0, %eax
	leave
	ret
