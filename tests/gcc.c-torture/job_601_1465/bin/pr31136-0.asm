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
	.comm	s,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	s(%rip), %eax
	andw	$-1009, %ax
	orw	$496, %ax
	movw	%ax, s(%rip)
	movzwl	s(%rip), %eax
	shrw	$4, %ax
	andl	$63, %eax
	andl	$15, %eax
	andl	$15, %eax
	movl	%eax, %edx
	movzbl	s(%rip), %eax
	andl	$-16, %eax
	orl	%edx, %eax
	movb	%al, s(%rip)
	movzbl	s(%rip), %eax
	andl	$15, %eax
	andl	$63, %eax
	movzbl	%al, %eax
	andl	$63, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	s(%rip), %eax
	andw	$-1009, %ax
	orl	%edx, %eax
	movw	%ax, s(%rip)
	movzwl	s(%rip), %eax
	andw	$1008, %ax
	cmpw	$240, %ax
	je	L10
	call	abort
L10:
	movl	$0, %eax
	popq	%rbp
	ret
