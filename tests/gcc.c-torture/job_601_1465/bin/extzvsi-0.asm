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
	.comm	x,8,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x(%rip), %eax
	shrw	%ax
	andw	$2047, %ax
	movzwl	%ax, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L10
	movl	$1, %eax
	jmp	L11
L10:
	cmpl	$1, -4(%rbp)
	jbe	L12
	movl	$2, %eax
	jmp	L11
L12:
	movl	$0, %eax
L11:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x(%rip), %eax
	andw	$-4095, %ax
	orl	$2, %eax
	movw	%ax, x(%rip)
	call	foo
	testl	%eax, %eax
	je	L14
	call	abort
L14:
	movl	$0, %eax
	popq	%rbp
	ret
