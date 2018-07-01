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
	.comm	i,4,4
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1, i(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-17(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movb	%al, -2(%rbp)
	cmpb	$0, -2(%rbp)
	je	L12
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
L12:
	movb	$0, -3(%rbp)
	movzbl	-3(%rbp), %eax
	movb	%al, -16(%rbp)
	movzbl	-1(%rbp), %eax
	movb	%al, -15(%rbp)
	movl	-16(%rbp), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	foo
	movl	%eax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	testb	%al, %al
	je	L15
	call	abort
L15:
	movl	$0, %eax
	leave
	ret
