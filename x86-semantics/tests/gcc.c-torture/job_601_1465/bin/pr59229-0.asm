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
	.comm	i,4,4
LC0:
	.string	"abcdefg"
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	i(%rip), %eax
	testl	%eax, %eax
	jle	L10
	movl	i(%rip), %eax
	cmpl	$6, %eax
	jle	L11
L10:
	call	abort
L11:
	movl	i(%rip), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L12
	call	abort
L12:
	movq	-8(%rbp), %rax
	movl	$538976288, (%rax)
	movw	$8224, 4(%rax)
	movb	$32, 6(%rax)
	leave
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	L13
	cmpq	$6, -32(%rbp)
	ja	L13
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rsi
	leaq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bar
L13:
	leave
	ret
LC1:
	.string	"abcdefghijklmnop"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, i(%rip)
	jmp	L18
L19:
	movl	i(%rip), %eax
	cltq
	movq	%rax, %rsi
	movl	$LC1, %edi
	call	foo
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
L18:
	movl	i(%rip), %eax
	cmpl	$15, %eax
	jle	L19
	movl	$0, %eax
	popq	%rbp
	ret
