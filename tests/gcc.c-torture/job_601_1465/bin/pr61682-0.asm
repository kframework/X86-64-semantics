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
	.quad	b
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$a, -8(%rbp)
	movl	$0, a(%rip)
	jmp	L10
L11:
	movq	c(%rip), %rsi
	movq	c(%rip), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	orl	%edi, %eax
	movl	%eax, (%rsi)
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
L10:
	movl	a(%rip), %eax
	cmpl	$11, %eax
	jle	L11
	movl	b(%rip), %eax
	cmpl	$1, %eax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
