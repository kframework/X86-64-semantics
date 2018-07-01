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
	.comm	d,4,4
	.comm	c,28,16
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, b(%rip)
	movl	b(%rip), %eax
	movl	%eax, d(%rip)
	jmp	L10
L11:
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movzwl	-12(%rbp), %eax
	andw	$-32768, %ax
	movw	%ax, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	$32767, %eax
	orb	$128, %ah
	movl	%eax, -12(%rbp)
	movzbl	-8(%rbp), %eax
	andl	$-4, %eax
	movb	%al, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	$3, %eax
	orl	$4, %eax
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, c(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, c+8(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, c+16(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, c+24(%rip)
	movl	c+20(%rip), %eax
	orl	$-32768, %eax
	movl	%eax, c+20(%rip)
	movl	a(%rip), %eax
	movl	%eax, b(%rip)
L10:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jne	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	fn1
	movzbl	c+24(%rip), %eax
	andl	$3, %eax
	testb	%al, %al
	je	L13
	call	abort
L13:
	movl	$0, %eax
	popq	%rbp
	ret
