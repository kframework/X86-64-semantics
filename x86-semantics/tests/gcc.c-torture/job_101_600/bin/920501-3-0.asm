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
	.comm	tab,36,32
execute:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$tab, -16(%rbp)
L10:
	addl	$1, -4(%rbp)
	cmpl	$4, -4(%rbp)
	jne	L15
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	L16
L15:
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	%rdx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	jmp	L10
L16:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	jmp	L18
L19:
	movl	-4(%rbp), %eax
	cltq
	movw	$0, -32(%rbp,%rax,2)
	addl	$1, -4(%rbp)
L18:
	cmpl	$9, -4(%rbp)
	jle	L19
	leaq	-32(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	execute
	movl	tab(%rip), %eax
	testl	%eax, %eax
	jne	L20
	movl	tab+4(%rip), %eax
	cmpl	$1, %eax
	jne	L20
	movl	tab+8(%rip), %eax
	cmpl	$2, %eax
	jne	L20
	movl	tab+12(%rip), %eax
	testl	%eax, %eax
	je	L21
L20:
	call	abort
L21:
	movl	$0, %edi
	call	exit
