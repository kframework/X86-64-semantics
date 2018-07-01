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
	.comm	extfunc,8,8
lstrcpynW:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	L10
L12:
	subl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	2(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
L10:
	cmpl	$1, -4(%rbp)
	jbe	L11
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	L12
L11:
	cmpl	$0, -4(%rbp)
	je	L9
	movq	-24(%rbp), %rax
	movw	$0, (%rax)
L9:
	popq	%rbp
	ret
badfunc:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$5408, %rsp
	movl	%edi, -5380(%rbp)
	movl	%esi, -5384(%rbp)
	movl	%edx, -5388(%rbp)
	movl	%ecx, -5392(%rbp)
	movq	%r8, -5400(%rbp)
	movl	%r9d, -5404(%rbp)
	movl	$0, -4(%rbp)
	movq	extfunc(%rip), %rdx
	movl	$0, %eax
	call	*%rdx
	testq	%rax, %rax
	je	L15
	movl	$0, %eax
	jmp	L19
L15:
	movq	extfunc(%rip), %rdx
	movl	$0, %eax
	call	*%rdx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	L17
	jmp	L18
L17:
	movq	extfunc(%rip), %rdx
	leaq	-5376(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	*%rdx
	movl	-5404(%rbp), %edx
	movq	-5400(%rbp), %rax
	movl	$ntfsW.2271, %esi
	movq	%rax, %rdi
	call	lstrcpynW
	movl	$1, -4(%rbp)
L18:
	movl	-4(%rbp), %eax
L19:
	leave
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$f, extfunc(%rip)
	leaq	-16(%rbp), %rax
	movl	$6, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	badfunc
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	ret
ntfsW.2271:
	.value	78
	.value	84
	.value	70
	.value	83
	.value	0
