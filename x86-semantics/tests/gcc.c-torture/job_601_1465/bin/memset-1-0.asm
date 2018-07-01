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
	.local	u
	.comm	u,96,64
A:
	.byte	65
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	jmp	L10
L45:
	movl	$1, -8(%rbp)
	jmp	L11
L44:
	movl	$0, -12(%rbp)
	jmp	L12
L13:
	movl	-12(%rbp), %eax
	cltq
	movb	$97, u(%rax)
	addl	$1, -12(%rbp)
L12:
	movl	-12(%rbp), %eax
	cmpl	$95, %eax
	jbe	L13
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-32(%rbp), %rax
	je	L14
	call	abort
L14:
	movq	$u, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L15
L17:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L16
	call	abort
L16:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L15:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L17
	movl	$0, -12(%rbp)
	jmp	L18
L20:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L19
	call	abort
L19:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L18:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L20
	movl	$0, -12(%rbp)
	jmp	L21
L23:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L22
	call	abort
L22:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L21:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L23
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$u, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-32(%rbp), %rax
	je	L24
	call	abort
L24:
	movq	$u, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L25
L27:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L26
	call	abort
L26:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L25:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L27
	movl	$0, -12(%rbp)
	jmp	L28
L30:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	L29
	call	abort
L29:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L28:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L30
	movl	$0, -12(%rbp)
	jmp	L31
L33:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L32
	call	abort
L32:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L31:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L33
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movq	%rax, %rdx
	movl	$66, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-32(%rbp), %rax
	je	L34
	call	abort
L34:
	movq	$u, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	L35
L37:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L36
	call	abort
L36:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L35:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	L37
	movl	$0, -12(%rbp)
	jmp	L38
L40:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	L39
	call	abort
L39:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L38:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L40
	movl	$0, -12(%rbp)
	jmp	L41
L43:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L42
	call	abort
L42:
	addl	$1, -12(%rbp)
	addq	$1, -24(%rbp)
L41:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L43
	addl	$1, -8(%rbp)
L11:
	movl	-8(%rbp), %eax
	cmpl	$79, %eax
	jbe	L44
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L45
	movl	$0, %edi
	call	exit
