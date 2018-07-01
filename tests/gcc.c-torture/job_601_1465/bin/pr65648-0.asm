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
	.bss
a:
	.zero	4
b:
	.zero	8
c:
	.zero	4
	.local	d
	.comm	d,4,4
e:
	.value	1
	.local	f
	.comm	f,8,8
i:
	.quad	f
	.bss
j:
	.zero	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rdx
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	L10
	call	abort
L10:
	leave
	ret
LC0:
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, b(%rip)
	movl	a(%rip), %eax
	testl	%eax, %eax
	sete	%al
	movl	%eax, %edx
	movzwl	e(%rip), %eax
	movswl	%ax, %ecx
	movl	c(%rip), %eax
	cmpl	%eax, %ecx
	setge	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, j(%rip)
	movq	i(%rip), %rax
	movzbl	j(%rip), %edx
	movzbl	%dl, %edx
	movq	%rdx, (%rax)
	movl	a(%rip), %eax
	leaq	-4(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	foo
	movq	f(%rip), %rax
	movq	%rax, %rsi
	movl	$LC0, %edi
	call	bar
	movl	$0, %eax
	leave
	ret
