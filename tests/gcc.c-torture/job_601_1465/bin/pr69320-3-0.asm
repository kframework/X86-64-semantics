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
a:
	.long	7
	.long	5
	.long	3
	.long	3
	.long	0
	.long	0
	.long	3
	.zero	132
	.comm	b,2,2
c:
	.long	5
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movw	$0, b(%rip)
	jmp	L10
L13:
	movzwl	b(%rip), %eax
	cwtl
	addl	$6, %eax
	cltq
	movl	a(,%rax,4), %edx
	movl	c(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	cmpl	%eax, %edx
	jne	L11
	jmp	L12
L11:
	movzwl	b(%rip), %eax
	addl	$1, %eax
	movw	%ax, b(%rip)
L10:
	movzwl	b(%rip), %eax
	cmpw	$3, %ax
	jle	L13
L12:
	movzwl	b(%rip), %eax
	cmpw	$4, %ax
	je	L14
	call	abort
L14:
	movl	$0, %edi
	call	exit
