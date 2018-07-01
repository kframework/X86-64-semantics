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
bar.2258:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%r10, %rax
	movl	$0, -4(%rbp)
	movl	(%rax), %edx
	cmpl	$45, %edx
	je	L10
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %r10
	call	bar.2258
	testl	%eax, %eax
	jne	L13
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
