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
	.bss
hi:
	.zero	4
lo:
	.zero	4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$65536, -16(%rbp)
	movl	$1, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	jne	L10
	movl	lo(%rip), %eax
	testl	%eax, %eax
	jne	L10
	movl	hi(%rip), %eax
	cmpl	$1, %eax
	jne	L10
	movl	$0, %edi
	call	exit
L10:
	call	abort
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	-8(%rbp), %eax
	movw	%ax, -10(%rbp)
	cmpw	$0, -10(%rbp)
	je	L12
	movl	$1, lo(%rip)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, -4(%rbp)
L12:
	movl	-8(%rbp), %eax
	sarl	$16, %eax
	movw	%ax, -10(%rbp)
	cmpw	$0, -10(%rbp)
	je	L13
	movl	$1, hi(%rip)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, -4(%rbp)
L13:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
