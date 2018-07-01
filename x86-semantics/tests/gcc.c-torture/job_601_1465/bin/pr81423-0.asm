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
ll:
	.zero	8
ull1:
	.quad	1
ull2:
	.quad	-6438459928895745270
	.comm	ull3,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$-5597998501375493990, %rax
	movq	%rax, ll(%rip)
	movq	ll(%rip), %rax
	negl	%eax
	movl	%eax, %edx
	movq	ull1(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1527956149, %eax
	movl	%eax, %eax
	movq	%rax, ll(%rip)
	movq	ll(%rip), %rax
	subl	$2129105131, %eax
	xorl	$1582470028, %eax
	subl	$1166043801, %eax
	movl	$2067854353, %edx
	shlx	%rax, %rdx, %rax
	movl	%eax, %edx
	movq	ull2(%rip), %rax
	orl	$-8651009, %eax
	addl	$5, %eax
	shrx	%eax, %edx, %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movq	%rax, ull3(%rip)
	movq	ull3(%rip), %rax
	cmpq	$3998784, %rax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
