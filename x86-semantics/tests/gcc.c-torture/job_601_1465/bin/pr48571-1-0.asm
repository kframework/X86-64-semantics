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
	.comm	c,2496,64
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	salq	$2, %rax
	addq	$c, %rax
	movl	-4(%rbp), %edx
	salq	$2, %rdx
	subq	$4, %rdx
	addq	$c, %rdx
	movl	(%rdx), %edx
	addl	%edx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
L10:
	cmpl	$623, -4(%rbp)
	jbe	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L13
L14:
	movl	-4(%rbp), %eax
	movl	$1, c(,%rax,4)
	addl	$1, -4(%rbp)
L13:
	cmpl	$623, -4(%rbp)
	jbe	L14
	call	bar
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L15
L17:
	movl	-4(%rbp), %eax
	movl	c(,%rax,4), %eax
	cmpl	-8(%rbp), %eax
	je	L16
	call	abort
L16:
	sall	-8(%rbp)
	addl	$1, -4(%rbp)
L15:
	cmpl	$623, -4(%rbp)
	jbe	L17
	movl	$0, %eax
	leave
	ret
