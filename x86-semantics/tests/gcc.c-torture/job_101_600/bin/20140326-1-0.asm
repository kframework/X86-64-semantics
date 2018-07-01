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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, -16(%rbp)
	movb	$0, -15(%rbp)
	movb	$0, -1(%rbp)
	movl	a(%rip), %eax
	cmpl	$131072, %eax
	jne	L10
	movl	a(%rip), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movb	%al, -1(%rbp)
L10:
	movsbl	-1(%rbp), %eax
	popq	%rbp
	ret
