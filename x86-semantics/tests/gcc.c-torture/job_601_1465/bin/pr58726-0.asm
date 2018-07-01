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
	.comm	b,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	cmpw	$0, -4(%rbp)
	js	L10
	movl	a(%rip), %eax
	jmp	L11
L10:
	movzwl	-4(%rbp), %eax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$56374, b(%rip)
	movzbl	b(%rip), %eax
	sall	$7, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L14
	movl	b(%rip), %eax
	jmp	L15
L14:
	movl	$0, %eax
L15:
	movw	%ax, -6(%rbp)
	movzwl	-6(%rbp), %eax
	cwtl
	movl	%eax, %edi
	call	foo
	cwtl
	movl	%eax, c(%rip)
	movl	c(%rip), %eax
	cmpl	$-9162, %eax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	leave
	ret
