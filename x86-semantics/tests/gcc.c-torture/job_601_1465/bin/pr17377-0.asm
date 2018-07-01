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
calls:
	.zero	4
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	calls(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, calls(%rip)
	testl	%eax, %eax
	jne	L10
	movq	8(%rbp), %rax
	jmp	L11
L10:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	L13
	cmpl	$1, %eax
	jne	L15
	movl	$f, %eax
	jmp	L11
L13:
	movq	8(%rbp), %rax
	jmp	L11
L15:
	movl	$0, %eax
L11:
	popq	%rbp
	ret
	.comm	x,4,4
y:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, x(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	f
	movq	%rax, %rdx
	movl	x(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, x(%rip)
	cltq
	addq	%rdx, %rax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$4, %edi
	call	y
	movq	%rax, -8(%rbp)
	movl	$1, %edi
	call	y
	cmpq	$f, %rax
	jne	L19
	movl	$0, %edi
	call	y
	cmpq	-8(%rbp), %rax
	jne	L19
	movl	$3, %edi
	call	y
	testq	%rax, %rax
	jne	L19
	movl	$-1, %edi
	call	y
	testq	%rax, %rax
	jne	L19
	movl	calls(%rip), %eax
	cmpl	$5, %eax
	je	L20
L19:
	call	abort
L20:
	movl	$0, %edi
	call	exit
