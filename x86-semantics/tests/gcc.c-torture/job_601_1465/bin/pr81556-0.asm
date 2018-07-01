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
b:
	.quad	-5174645608211675751
c:
	.quad	-3105204974106010226
d:
	.quad	2
f:
	.quad	1
	.bss
g:
	.zero	8
h:
	.zero	8
e:
	.quad	-975186032896380117
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	d(%rip), %rax
	cmpq	$1, %rax
	seta	%al
	movb	%al, -1(%rbp)
	movq	f(%rip), %rax
	movq	d(%rip), %rdx
	cmpq	$1, %rdx
	jbe	L10
	movl	$512, %esi
	jmp	L11
L10:
	movl	$0, %esi
L11:
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	movq	%rax, g(%rip)
	movzbl	-1(%rbp), %eax
	movzbl	-1(%rbp), %ecx
	movq	b(%rip), %rdx
	andq	%rdx, %rcx
	movq	c(%rip), %rdx
	andq	%rdx, %rcx
	movq	e(%rip), %rdx
	andq	%rcx, %rdx
	andq	%rdx, %rax
	movq	%rax, h(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movq	g(%rip), %rax
	cmpq	$1, %rax
	jne	L13
	movq	h(%rip), %rax
	testq	%rax, %rax
	je	L14
L13:
	call	abort
L14:
	movl	$0, %eax
	popq	%rbp
	ret
