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
g:
	.long	0
	.long	0
	.long	1
	.long	2
	.bss
k:
	.zero	4
b:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L11
L12:
	movl	-4(%rbp), %eax
	cltq
	movl	g+8(,%rax,4), %edx
	movl	k(%rip), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, k(%rip)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
L11:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jle	L12
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	b
	movl	$0, %eax
	leave
	ret
