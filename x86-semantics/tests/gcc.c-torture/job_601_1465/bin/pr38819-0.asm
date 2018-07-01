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
	.long	1
	.bss
b:
	.zero	4
x:
	.long	2
r:
	.long	8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	call	exit
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	a(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	b(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	L11
L13:
	call	foo
	movl	x(%rip), %eax
	cmpl	$8, %eax
	jne	L12
	addl	$1, -4(%rbp)
L12:
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movl	r(%rip), %eax
	addl	%edx, %eax
	movl	%eax, r(%rip)
	addl	$1, -4(%rbp)
L11:
	cmpl	$99, -4(%rbp)
	jle	L13
	call	abort
