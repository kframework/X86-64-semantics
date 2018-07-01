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
g.2257:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%r10, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	subq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movslq	%eax, %rsi
	movq	%rsi, %r8
	movl	$0, %r9d
	movslq	%eax, %rsi
	movq	%rsi, %rdx
	movl	$0, %ecx
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$4711, 4(%rax)
	leaq	-32(%rbp), %rax
	movq	%rax, %r10
	movl	$1, %edi
	movl	$0, %eax
	call	g.2257
	movq	%rbx, %rsp
	movq	-8(%rbp), %rbx
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %edi
	movl	$0, %eax
	call	f
	cmpl	$4711, %eax
	je	L14
	call	abort
L14:
	movl	$0, %edi
	call	exit
