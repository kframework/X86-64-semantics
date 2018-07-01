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
	.comm	p,4,4
	.comm	k,4,4
n:
	.long	30
x:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	n(%rip), %eax
	cmpl	$30, %eax
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L10
	movl	$1, p(%rip)
	jmp	L11
L10:
	movl	$0, p(%rip)
L11:
	cmpl	$0, -4(%rbp)
	je	L12
	movl	$1, k(%rip)
	jmp	L9
L12:
	movl	$0, k(%rip)
L9:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	x
	movl	p(%rip), %eax
	cmpl	$1, %eax
	jne	L15
	movl	k(%rip), %eax
	cmpl	$1, %eax
	je	L16
L15:
	call	abort
L16:
	movl	$0, %edi
	call	exit
