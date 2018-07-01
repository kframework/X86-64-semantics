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
	.comm	b,2,2
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movw	%ax, b(%rip)
	movl	a(%rip), %edx
	movzwl	b(%rip), %eax
	movzwl	%ax, %eax
	andl	$1, %eax
	shrx	%eax, %edx, %eax
	movl	%eax, a(%rip)
	movzwl	b(%rip), %eax
	movzwl	%ax, %eax
	sall	$5, %eax
	orl	$1, %eax
	movw	%ax, b(%rip)
	movzwl	b(%rip), %eax
	shrw	$15, %ax
	movw	%ax, b(%rip)
	movzwl	b(%rip), %eax
	movzbl	%al, %eax
	movzwl	b(%rip), %edx
	movzbl	%dl, %edx
	negl	%edx
	andl	$1, %edx
	cmpl	%edx, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movw	$0, b(%rip)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$12345, %edi
	call	foo
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
