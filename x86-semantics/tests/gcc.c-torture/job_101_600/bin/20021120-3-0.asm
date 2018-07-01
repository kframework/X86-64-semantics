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
LC0:
	.string	"%d"
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	movl	$0, %edx
	divl	-32(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	movl	-28(%rbp), %eax
	leal	1(%rax), %ebx
	movl	-32(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%ecx
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movl	$-2, %esi
	movq	%rax, %rdi
	call	foo
	cmpl	$858993459, %eax
	je	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
