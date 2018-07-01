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
dummy:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
	.comm	a,4,4
	.comm	g,4,4
	.comm	i,4,4
	.comm	k,4,4
	.comm	p,8,8
	.comm	b,1,1
	.comm	e,1,1
	.comm	c,2,2
	.comm	h,2,2
d:
	.quad	c
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$c, -8(%rbp)
	movq	-8(%rbp), %rax
	movw	$1, (%rax)
	movq	p(%rip), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$-22, b(%rip)
	jmp	L15
L21:
	movq	$h, -8(%rbp)
	movq	$e, -16(%rbp)
	movl	a(%rip), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movl	i(%rip), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %edx
	movl	k(%rip), %eax
	testl	%eax, %eax
	je	L16
	movq	d(%rip), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	L16
	movl	$1, %eax
	jmp	L17
L16:
	movl	$0, %eax
L17:
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	foo
	testb	%al, %al
	jne	L18
	movl	$0, %eax
	call	bar
	testl	%eax, %eax
	je	L19
L18:
	movl	$1, %eax
	jmp	L20
L19:
	movl	$0, %eax
L20:
	movl	%eax, g(%rip)
	movzbl	b(%rip), %eax
	subl	$1, %eax
	movb	%al, b(%rip)
L15:
	movzbl	b(%rip), %eax
	cmpb	$-29, %al
	jge	L21
	movl	$0, %eax
	call	dummy
	movl	$0, %eax
	leave
	ret
