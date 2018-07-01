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
	.comm	a,8,8
b:
	.quad	e
	.comm	c,8,8
	.comm	d,4,4
use_a:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
set_b:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$d, (%rax)
	popq	%rbp
	ret
use_c:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
retme:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.comm	e,4,4
	.comm	b2,8,8
	.comm	b3,8,8
ptr:
	.quad	b2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0, a(%rip)
	movq	$e, b(%rip)
	movl	$b, %edi
	call	retme
	movq	%rax, ptr(%rip)
	movq	ptr(%rip), %rax
	movq	%rax, %rdi
	call	set_b
	movq	b(%rip), %rax
	movq	%rax, b3(%rip)
	movq	b3(%rip), %rax
	cmpq	$d, %rax
	je	L15
	call	abort
L15:
	movq	$0, c(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
