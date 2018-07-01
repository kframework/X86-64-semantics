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
	.comm	c,4,4
fn1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	a(%rip), %edx
	movl	c(%rip), %eax
	andl	%eax, %edx
	movl	a(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	b(%rip), %eax
	orl	%edx, %eax
	cmpl	$1, %eax
	jne	L10
	call	abort
L10:
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, a(%rip)
	movl	$1, c(%rip)
	movl	$6, b(%rip)
	movl	$0, %eax
	call	fn1
	popq	%rbp
	ret
