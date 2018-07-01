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
LC0:
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$49376, %rsp
L16:
	movq	$2055, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-49376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	mpn_random2
	movl	$0, -8(%rbp)
	jmp	L10
L11:
	addl	$1, -8(%rbp)
L10:
	cmpl	$0, -8(%rbp)
	jle	L11
	movq	-16(%rbp), %rax
	movq	$305419896, -32928(%rbp,%rax,8)
	movl	$0, -8(%rbp)
	jmp	L12
L13:
	movq	-16(%rbp), %rdx
	leaq	-49376(%rbp), %rcx
	leaq	-32928(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	mpn_mul_1
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
L12:
	cmpl	$0, -8(%rbp)
	jle	L13
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	L14
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-32928(%rbp), %rcx
	leaq	-16480(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	mpn_cmp
	testl	%eax, %eax
	jne	L14
	movq	-16(%rbp), %rax
	movq	-16480(%rbp,%rax,8), %rax
	cmpq	$305419896, %rax
	je	L15
L14:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	$8, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	foo
	movq	-16(%rbp), %rdx
	leaq	-32928(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	mpn_print
L15:
	movl	$0, %eax
	call	exxit
	jmp	L16
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
mpn_mul_1:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
mpn_print:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
mpn_random2:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
mpn_cmp:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
exxit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	exit
