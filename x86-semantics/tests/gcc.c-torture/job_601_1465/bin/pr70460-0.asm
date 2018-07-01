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
	.comm	c,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movl	b.2257(,%rax,4), %eax
	cltq
	addq	$L10, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	nop
	jmp	*%rax
L12:
	movl	c(%rip), %eax
	addl	$2, %eax
	movl	%eax, c(%rip)
L13:
	movl	c(%rip), %eax
	addl	$1, %eax
	movl	%eax, c(%rip)
L10:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	foo
	movl	c(%rip), %eax
	cmpl	$3, %eax
	je	L15
	call	abort
L15:
	movl	$1, %edi
	call	foo
	movl	c(%rip), %eax
	cmpl	$4, %eax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	popq	%rbp
	ret
b.2257:
	.long	.L12-L10
	.long	.L13-L10
