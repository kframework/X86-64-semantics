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
a:
	.quad	16
b:
	.byte	-61
c:
	.quad	-1
d:
	.byte	1
e:
	.quad	3625445792498952486
	.quad	0
f:
	.quad	0
	.quad	8985037393681294663
g:
	.quad	5052410635626804928
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	a(%rip), %rax
	movsbl	%al, %edx
	movzbl	b(%rip), %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	setl	%al
	movzbl	%al, %eax
	movq	%rax, a(%rip)
	movzbl	d(%rip), %eax
	testb	%al, %al
	je	L10
	movq	e(%rip), %rdx
	jmp	L11
L10:
	movl	$0, %edx
L11:
	movq	f+8(%rip), %rcx
	movq	a(%rip), %rax
	imulq	%rcx, %rax
	testq	%rax, %rax
	jne	L12
	movq	g(%rip), %rax
	jmp	L13
L12:
	movl	$1, %eax
L13:
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, c(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	foo
	movq	a(%rip), %rax
	cmpq	$1, %rax
	jne	L15
	movq	c(%rip), %rdx
	movabsq	$3625445792498952485, %rax
	cmpq	%rax, %rdx
	je	L16
L15:
	call	abort
L16:
	movl	$0, %eax
	popq	%rbp
	ret
