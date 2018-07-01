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
c:
	.long	1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L10
L11:
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L10:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	L11
	movl	a(%rip), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %edx
	movl	c(%rip), %eax
	imull	%edx, %eax
	testl	%eax, %eax
	jne	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
