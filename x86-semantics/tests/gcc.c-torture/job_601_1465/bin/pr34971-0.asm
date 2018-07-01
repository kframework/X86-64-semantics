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
	.comm	x,8,8
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$1099511627775, %rax
	andq	x(%rip), %rax
	salq	$8, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	x(%rip), %rdx
	shrq	$32, %rdx
	addq	%rdx, %rax
	movabsq	$1099511627775, %rdx
	andq	%rdx, %rax
	cmpq	-8(%rbp), %rax
	je	L9
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	x(%rip), %rdx
	movabsq	$-1099511627776, %rax
	andq	%rax, %rdx
	movabsq	$4294967297, %rax
	orq	%rdx, %rax
	movq	%rax, x(%rip)
	movl	$257, %edi
	call	test1
	movq	x(%rip), %rdx
	movabsq	$-1099511627776, %rax
	andq	%rax, %rdx
	movabsq	$4294967296, %rax
	orq	%rdx, %rax
	movq	%rax, x(%rip)
	movl	$1, %edi
	call	test1
	movl	$0, %eax
	popq	%rbp
	ret
