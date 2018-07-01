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
	.comm	c,4,4
	.comm	d,4,4
	.comm	e,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
b:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.zero	1
a:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.zero	1
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	a+3(%rip), %eax
	orl	$-128, %eax
	movb	%al, a+3(%rip)
	movzbl	a+4(%rip), %eax
	andl	$-32, %eax
	movb	%al, a+4(%rip)
	movl	$0, -16(%rbp)
	movb	$0, -12(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, b(%rip)
	movzbl	-12(%rbp), %eax
	movb	%al, b+4(%rip)
	movl	$0, e(%rip)
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L10
	movzbl	a(%rip), %eax
	movzbl	a+1(%rip), %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	a+2(%rip), %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movzbl	a+3(%rip), %eax
	andl	$127, %eax
	salq	$24, %rax
	orq	%rdx, %rax
	salq	$33, %rax
	sarq	$33, %rax
	movl	%eax, c(%rip)
L10:
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	call	bar
	movl	b(%rip), %eax
	movl	%eax, a(%rip)
	movzbl	b+4(%rip), %eax
	movb	%al, a+4(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	baz
	movzbl	a(%rip), %eax
	movzbl	a+1(%rip), %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movzbl	a+2(%rip), %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movzbl	a+3(%rip), %eax
	andl	$127, %eax
	salq	$24, %rax
	orq	%rdx, %rax
	salq	$33, %rax
	sarq	$33, %rax
	testl	%eax, %eax
	je	L14
	call	abort
L14:
	movl	$0, %eax
	popq	%rbp
	ret
