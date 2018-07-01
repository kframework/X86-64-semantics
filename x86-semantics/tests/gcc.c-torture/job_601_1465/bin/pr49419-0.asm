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
	.comm	t,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	L10
	movl	$0, %eax
	jmp	L11
L10:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	L12
L14:
	movq	t(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
L12:
	movq	t(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	-24(%rbp), %eax
	jne	L13
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	L14
L13:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	L15
	call	abort
L15:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	L16
L17:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	t(%rip), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	8(%rax), %eax
	movl	%eax, (%rcx)
	movq	t(%rip), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	subl	$1, -8(%rbp)
L16:
	cmpl	$0, -8(%rbp)
	jg	L17
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
L11:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$1, -64(%rbp)
	movl	$1, -60(%rbp)
	movl	$2, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, t(%rip)
	leaq	-16(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdx
	movl	$1, %esi
	movl	$0, %edi
	call	foo
	cmpl	$2, %eax
	je	L19
	call	abort
L19:
	movl	-16(%rbp), %eax
	cmpl	$1, %eax
	jne	L20
	movl	-12(%rbp), %eax
	cmpl	$2, %eax
	je	L21
L20:
	call	abort
L21:
	movl	$0, %eax
	leave
	ret
