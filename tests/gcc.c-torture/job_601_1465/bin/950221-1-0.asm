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
	.comm	basepf,16,16
parsefile:
	.quad	basepf
	.comm	filler,49152,64
	.comm	el,4,4
g1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	ret
g2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$3735928559, %eax
	cmpq	%rax, -8(%rbp)
	je	L11
	call	abort
L11:
	movl	$0, %edi
	call	exit
f:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	parsefile(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L13
	movl	el(%rip), %eax
	testl	%eax, %eax
	je	L13
	movl	el(%rip), %eax
	leaq	-28(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	g1
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	strcpy
	jmp	L14
L13:
	movq	parsefile(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	g2
L14:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, el(%rip)
	movq	parsefile(%rip), %rax
	movl	$3735928559, %edx
	movq	%rdx, (%rax)
	movl	$0, %eax
	call	f
	popq	%rbp
	ret
