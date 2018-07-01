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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L12:
	movq	$a, -16(%rbp)
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L11
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movsbl	-20(%rbp), %eax
	andl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
L11:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	b(%rip), %eax
	addl	$1, %eax
	movl	%eax, b(%rip)
L10:
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	L12
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	foo
	movl	a(%rip), %eax
	testl	%eax, %eax
	je	L14
	call	abort
L14:
	movl	$0, %eax
	popq	%rbp
	ret
