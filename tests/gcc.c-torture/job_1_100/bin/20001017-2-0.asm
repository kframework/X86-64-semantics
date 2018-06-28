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
fn_4parms:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	jne	L10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$2, %rax
	jne	L10
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	L9
L10:
	call	abort
L9:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, -1(%rbp)
	movq	$1, -16(%rbp)
	movq	$2, -24(%rbp)
	movl	$3, -28(%rbp)
	movzbl	-1(%rbp), %eax
	leaq	-28(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movl	%eax, %edi
	call	fn_4parms
	movl	$0, %eax
	leave
	ret
