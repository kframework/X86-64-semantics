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
	.comm	t,16,16
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	t+10(%rip), %eax
	andw	$511, %ax
	movzwl	%ax, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	t+10(%rip), %eax
	andw	$-512, %ax
	orl	$8, %eax
	movw	%ax, t+10(%rip)
	movq	t(%rip), %rdx
	movq	t+8(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movl	$0, %eax
	call	foo
	cmpl	$8, %eax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
