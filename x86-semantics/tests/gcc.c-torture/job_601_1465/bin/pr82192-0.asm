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
a:
	.quad	-7647888931715538206
	.comm	b,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	a(%rip), %rax
	movl	%eax, %edx
	movq	a(%rip), %rax
	andl	$885760, %eax
	orl	$1735539703, %eax
	subl	$1735801816, %eax
	shrx	%eax, %edx, %eax
	andw	$8191, %ax
	andw	$8191, %ax
	movl	%eax, %edx
	movzwl	b(%rip), %eax
	andw	$-8192, %ax
	orl	%edx, %eax
	movw	%ax, b(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movzwl	b(%rip), %eax
	andw	$8191, %ax
	testw	%ax, %ax
	je	L11
	call	abort
L11:
	movl	$0, %eax
	popq	%rbp
	ret
