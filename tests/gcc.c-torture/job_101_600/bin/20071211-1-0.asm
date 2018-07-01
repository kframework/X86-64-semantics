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
	.comm	sv,8,8
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	sv+4(%rip), %eax
	orl	$-256, %eax
	movl	%eax, sv+4(%rip)
	movl	sv+4(%rip), %eax
	shrl	$8, %eax
	addl	$1, %eax
	andl	$16777215, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	sv+4(%rip), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, sv+4(%rip)
	movl	sv+4(%rip), %eax
	shrl	$8, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	L10
	call	abort
L10:
	movl	$0, %eax
	leave
	ret
