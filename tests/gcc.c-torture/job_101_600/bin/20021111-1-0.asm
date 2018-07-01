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
aim_callhandler:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%ecx, %eax
	movw	%dx, -12(%rbp)
	movw	%ax, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jne	L10
	movl	$0, %eax
	jmp	L11
L10:
	cmpw	$-1, -16(%rbp)
	jne	L12
	movl	$0, %eax
	jmp	L11
L12:
	movl	i.2269(%rip), %eax
	testl	%eax, %eax
	jle	L13
	call	abort
L13:
	movl	i.2269(%rip), %eax
	addl	$1, %eax
	movl	%eax, i.2269(%rip)
	movzwl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %eax
	movl	$65535, %ecx
	movl	%eax, %edi
	call	aim_callhandler
L11:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	aim_callhandler
	movl	$0, %edi
	call	exit
	.local	i.2269
	.comm	i.2269,4,4
