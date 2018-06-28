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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	$1, -16(%rbp)
	movw	$4, -14(%rbp)
	movw	$16, -12(%rbp)
	movw	$64, -10(%rbp)
	movw	$256, -8(%rbp)
	leaq	-16(%rbp), %rax
	leaq	6(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$512, %edi
	call	bug
	cmpl	$491, %eax
	je	L10
	call	abort
L10:
	movl	$0, %edi
	call	exit
bug:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movw	%ax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L12
L13:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	subw	%ax, -20(%rbp)
	addq	$2, -8(%rbp)
L12:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	L13
	movzwl	-20(%rbp), %eax
	popq	%rbp
	ret
