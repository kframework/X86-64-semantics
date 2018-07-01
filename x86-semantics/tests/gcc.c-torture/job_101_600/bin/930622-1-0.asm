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
	.long	1
	.comm	b,4,4
g:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
h:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	g
	cmpl	$-1, %eax
	jne	L13
	movl	$0, %eax
	jmp	L14
L13:
	movl	$0, %eax
	call	g
	movl	%eax, a(%rip)
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	L15
	movl	a(%rip), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	h
L15:
	movl	$0, %eax
L14:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	f
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L17
	call	abort
L17:
	movl	$0, %edi
	call	exit
