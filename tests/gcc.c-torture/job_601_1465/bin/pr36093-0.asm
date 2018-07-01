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
	.comm	foo,2560,128
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$foo, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L13:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	L11
L12:
	movl	-4(%rbp), %eax
	addl	$97, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -8(%rbp)
L11:
	cmpl	$128, -8(%rbp)
	jle	L12
	addl	$1, -4(%rbp)
L10:
	cmpl	$3, -4(%rbp)
	jle	L13
	movzbl	foo+515(%rip), %eax
	cmpb	$100, %al
	je	L14
	call	abort
L14:
	movl	$0, %eax
	leave
	ret
