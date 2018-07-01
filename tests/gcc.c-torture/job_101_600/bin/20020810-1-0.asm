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
R:
	.quad	100
	.quad	200
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	R(%rip), %rax
	cmpq	%rax, %rdx
	jne	L10
	movq	-8(%rbp), %rdx
	movq	R+8(%rip), %rax
	cmpq	%rax, %rdx
	je	L9
L10:
	call	abort
L9:
	leave
	ret
g:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	R(%rip), %rax
	movq	R+8(%rip), %rdx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	R(%rip), %rdx
	movq	R+8(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	f
	call	g
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	R(%rip), %rax
	cmpq	%rax, %rdx
	jne	L15
	movq	-8(%rbp), %rdx
	movq	R+8(%rip), %rax
	cmpq	%rax, %rdx
	je	L16
L15:
	call	abort
L16:
	movl	$0, %eax
	leave
	ret
