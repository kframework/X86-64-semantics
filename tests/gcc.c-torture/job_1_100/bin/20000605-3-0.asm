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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
L14:
	movq	$0, -16(%rbp)
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jle	L10
	movl	$0, %eax
	jmp	L15
L10:
	addl	$1, -4(%rbp)
	cmpl	$5, -4(%rbp)
	jle	L12
L13:
	call	abort
L12:
	jmp	L14
L15:
	leave
	ret
