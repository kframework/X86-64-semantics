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
	.comm	x,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	movb	%al, -16(%rbp)
	movl	$48879, x(%rip)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	x(%rip), %eax
	orl	%edx, %eax
	andl	$1, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-16(%rbp), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	L10
	call	abort
L10:
	movl	$0, %edi
	call	exit
