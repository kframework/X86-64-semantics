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
	.local	tok
	.comm	tok,4,4
atom:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	tok(%rip), %eax
	testl	%eax, %eax
	js	L10
	movl	tok(%rip), %eax
	cmpl	$255, %eax
	jle	L11
L10:
	movl	tok(%rip), %eax
	cmpl	$272, %eax
	jg	L11
	movl	tok(%rip), %eax
	cmpl	$257, %eax
	je	L11
	movl	tok(%rip), %eax
	cmpl	$258, %eax
	je	L11
	movl	tok(%rip), %eax
	cmpl	$259, %eax
	je	L11
	movl	tok(%rip), %eax
	cmpl	$260, %eax
	je	L11
	movl	tok(%rip), %eax
	cmpl	$261, %eax
	je	L11
	movl	tok(%rip), %eax
	cmpl	$262, %eax
	je	L11
	movl	tok(%rip), %eax
	cmpl	$263, %eax
	jne	L12
L11:
	movl	$1, %eax
	jmp	L13
L12:
	movl	$0, %eax
L13:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, tok(%rip)
	movl	$0, %eax
	call	atom
	cmpl	$1, %eax
	je	L15
	call	abort
L15:
	movl	$0, %edi
	call	exit
