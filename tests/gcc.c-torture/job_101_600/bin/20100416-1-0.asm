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
movegt:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	L10
L13:
	movabsq	$-1152921504606846976, %rax
	cmpq	%rax, -32(%rbp)
	jl	L11
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	L12
L11:
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
L12:
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L13
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
tests:
	.quad	-1152921504606846976
	.long	-1
	.zero	4
	.quad	-1152921504606846977
	.long	1
	.zero	4
	.quad	-1152921504606846975
	.long	-1
	.zero	4
	.quad	0
	.long	-1
	.zero	4
	.quad	-9223372036854775808
	.long	1
	.zero	4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L16
L18:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$tests, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movl	$-1, %edi
	call	movegt
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$tests, %rdx
	movl	8(%rdx), %edx
	cmpl	%edx, %eax
	je	L17
	call	abort
L17:
	addl	$1, -4(%rbp)
L16:
	movl	-4(%rbp), %eax
	cmpl	$4, %eax
	jbe	L18
	movl	$0, %eax
	leave
	ret
