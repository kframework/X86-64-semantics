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
e:
	.long	1
	.comm	i,4,4
	.local	d
	.comm	d,36,32
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	e(%rip), %eax
	testl	%eax, %eax
	je	L10
	movl	i(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	$d, %rax
	movzwl	(%rax), %edx
	andw	$-32768, %dx
	orl	$1, %edx
	movw	%dx, (%rax)
	movl	i(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	$d, %rax
	movzbl	1(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1(%rax)
	movzwl	2(%rax), %edx
	andl	$0, %edx
	movw	%dx, 2(%rax)
	movzwl	4(%rax), %edx
	andw	$-4096, %dx
	movw	%dx, 4(%rax)
L10:
	movq	d(%rip), %rax
	salq	$20, %rax
	sarq	$35, %rax
	cmpl	$1, %eax
	je	L11
	call	abort
L11:
	movl	$0, %eax
	popq	%rbp
	ret
