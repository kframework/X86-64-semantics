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
test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	L10
L14:
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L11
	movl	$0, -8(%rbp)
	jmp	L12
L13:
	addl	$1, -12(%rbp)
	addl	$1, -8(%rbp)
L12:
	cmpl	$6, -8(%rbp)
	jle	L13
L11:
	addl	$1, -4(%rbp)
L10:
	cmpl	$99, -12(%rbp)
	jle	L14
	movl	$1, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	test
	cmpl	$1, %eax
	je	L17
	call	abort
L17:
	movl	$0, %edi
	call	exit
