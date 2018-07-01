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
b:
	.long	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L12
L15:
	jmp	L13
L14:
	movl	a(%rip), %eax
	subl	$1, %eax
	movl	%eax, a(%rip)
L13:
	movl	a(%rip), %eax
	testl	%eax, %eax
	jne	L14
	addl	$1, -4(%rbp)
L12:
	cmpl	$55, -4(%rbp)
	jle	L15
	movq	$b, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L16
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	orl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
L16:
	movl	b(%rip), %eax
	movl	%eax, %edi
	call	foo
	movl	$0, %eax
	leave
	ret
