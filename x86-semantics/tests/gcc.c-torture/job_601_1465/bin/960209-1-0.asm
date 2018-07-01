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
	.comm	an_array,5,1
	.comm	a_ptr,8,8
yabba:
	.long	1
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movq	%rsi, -64(%rbp)
	movb	%al, -52(%rbp)
	cmpq	$0, -64(%rbp)
	je	L10
	movl	yabba(%rip), %eax
	testl	%eax, %eax
	je	L11
	movl	$-1, %eax
	jmp	L9
L11:
	movl	$4000000, %eax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	L13
L21:
	movq	$0, -16(%rbp)
	jmp	L14
L20:
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	L15
	movq	-32(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	jmp	L16
L15:
	movl	$0, %edx
L16:
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	L17
	movq	-32(%rbp), %rax
	negq	%rax
	jmp	L18
L17:
	movq	-48(%rbp), %rax
L18:
	cmpq	%rax, %rdx
	jge	L19
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
L19:
	addq	$1, -16(%rbp)
L14:
	cmpq	$255, -16(%rbp)
	jle	L20
	addq	$1, -8(%rbp)
L13:
	cmpq	$10, -8(%rbp)
	jle	L21
L10:
	movl	yabba(%rip), %eax
	testl	%eax, %eax
	je	L22
	movl	$0, %eax
	jmp	L9
L22:
	movzbl	-52(%rbp), %eax
	cltq
	addq	$an_array, %rax
	movq	%rax, a_ptr(%rip)
	movq	a_ptr(%rip), %rax
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
L9:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	f
	testl	%eax, %eax
	je	L24
	call	abort
L24:
	movl	$0, %edi
	call	exit
