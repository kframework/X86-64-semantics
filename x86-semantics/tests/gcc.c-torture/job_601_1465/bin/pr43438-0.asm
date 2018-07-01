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
g_2:
	.byte	1
	.local	g_9
	.comm	g_9,4,4
l_8:
	.quad	g_9
func_12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movq	$g_9, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	cmpl	$0, -20(%rbp)
	setg	%al
	movzbl	%al, %eax
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$-2, -1(%rbp)
	movq	l_8(%rip), %rax
	movq	l_8(%rip), %rdx
	movl	(%rdx), %ecx
	movzbl	g_2(%rip), %edx
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	%edx, (%rax)
	movq	l_8(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	orl	%edx, %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	func_12
	movl	g_9(%rip), %eax
	cmpl	$1, %eax
	je	L11
	call	abort
L11:
	movl	$0, %eax
	leave
	ret
