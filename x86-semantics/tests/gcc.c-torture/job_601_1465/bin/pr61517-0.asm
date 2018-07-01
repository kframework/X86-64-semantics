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
	.quad	a
	.comm	d,2,2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	a(%rip), %eax
	movl	%eax, -4(%rbp)
	movq	c(%rip), %rax
	movl	$1, (%rax)
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L10
	movl	-4(%rbp), %eax
	movw	%ax, d(%rip)
	movq	c(%rip), %rax
	movzwl	d(%rip), %edx
	movzwl	%dx, %edx
	orl	-4(%rbp), %edx
	movl	%edx, (%rax)
L10:
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L11
	call	abort
L11:
	movl	$0, %eax
	leave
	ret
