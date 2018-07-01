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
	.local	reg_stat
	.comm	reg_stat,8,8
init_reg_last:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	reg_stat(%rip), %rax
	movl	$31, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rax, reg_stat(%rip)
	movq	$-1, -16(%rbp)
	call	init_reg_last
	movq	-16(%rbp), %rax
	cmpq	$-1, %rax
	je	L11
	call	abort
L11:
	movl	$0, %eax
	leave
	ret
