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
	.comm	node,8,1
node_p:
	.quad	node
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	$6533, -16(%rbp)
	movw	$8195, -14(%rbp)
	movq	node_p(%rip), %rax
	movl	4(%rax), %eax
	movl	%eax, -12(%rbp)
	movzwl	-16(%rbp), %eax
	cmpw	$6533, %ax
	je	L10
	call	abort
L10:
	movzwl	-14(%rbp), %eax
	cmpw	$8195, %ax
	je	L11
	call	abort
L11:
	movl	$0, %eax
	leave
	ret
