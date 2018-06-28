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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$9, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$55, %rax
	movq	%rax, %rcx
	movabsq	$-9187201950435737471, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$7, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	L10
	call	abort
L10:
	movabsq	$1271604600669316, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	L11
	call	abort
L11:
	movl	$0, %edi
	call	exit
