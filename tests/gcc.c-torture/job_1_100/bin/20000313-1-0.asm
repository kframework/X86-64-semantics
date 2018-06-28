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
buggy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	negl	%eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	seta	%al
	movzbl	%al, %eax
	negl	%eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	buggy
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	je	L12
	call	abort
L12:
	cmpl	$-1, -4(%rbp)
	je	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
