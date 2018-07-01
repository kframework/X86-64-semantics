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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -40(%rbp)
	movzwl	-16(%rbp), %eax
	cmpw	$10, %ax
	je	L10
	call	abort
L10:
	movzwl	-14(%rbp), %eax
	cmpw	$20, %ax
	je	L11
	call	abort
L11:
	movzwl	-32(%rbp), %eax
	cmpw	$11, %ax
	je	L12
	call	abort
L12:
	movzwl	-30(%rbp), %eax
	cmpw	$21, %ax
	je	L13
	call	abort
L13:
	movzwl	-48(%rbp), %eax
	cmpw	$12, %ax
	je	L14
	call	abort
L14:
	movzwl	-46(%rbp), %eax
	cmpw	$22, %ax
	je	L15
	call	abort
L15:
	cmpq	$123, -40(%rbp)
	je	L16
	call	abort
L16:
	leave
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	$10, -16(%rbp)
	movw	$11, -12(%rbp)
	movw	$12, -8(%rbp)
	movw	$20, -14(%rbp)
	movw	$21, -10(%rbp)
	movw	$22, -6(%rbp)
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	$123, %r8d
	movl	%eax, %esi
	movl	$3, %edi
	call	f
	movl	$0, %edi
	call	exit
