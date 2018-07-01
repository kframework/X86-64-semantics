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
	.comm	y,3,1
f:
	.quad	y
ff:
	.quad	y
h:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	ff(%rip), %rax
	addq	$1, %rax
	movq	%rax, ff(%rip)
	movq	f(%rip), %rax
	addq	$1, %rax
	movq	%rax, f(%rip)
	movq	f(%rip), %rax
	addq	$1, %rax
	movq	%rax, f(%rip)
	movq	ff(%rip), %rax
	addq	$1, %rax
	movq	%rax, ff(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	h
	movq	f(%rip), %rax
	cmpq	$y+2, %rax
	je	L11
	call	abort
L11:
	movq	ff(%rip), %rax
	cmpq	$y+2, %rax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
