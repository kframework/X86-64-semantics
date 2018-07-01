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
a1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
LC0:
	.string	"%d\n"
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$4, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$30, %rax
	movq	%rax, %rdi
	call	a1
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$61440, %eax
	testl	%eax, %eax
	je	L11
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
L11:
	movq	-8(%rbp), %rax
	movw	$256, 2(%rax)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	call	a1
	movq	-8(%rbp), %rax
	subq	$30, %rax
	movq	%rax, %rdi
	call	a1
	movq	-8(%rbp), %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %eax
	call	f
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %eax
	cmpw	$256, %ax
	je	L14
	call	abort
L14:
	movl	$0, %edi
	call	exit
