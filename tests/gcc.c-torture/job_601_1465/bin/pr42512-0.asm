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
	.comm	g_3,2,2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$-1, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movzwl	g_3(%rip), %eax
	orl	%edx, %eax
	movw	%ax, g_3(%rip)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
L10:
	cmpl	$0, -4(%rbp)
	jne	L11
	movzwl	g_3(%rip), %eax
	cmpw	$-1, %ax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
