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
	.comm	u,32,32
A:
	.byte	65
reset:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, -4(%rbp)
	jmp	L10
L11:
	movl	-4(%rbp), %eax
	cltq
	movb	$97, u(%rax)
	addl	$1, -4(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	$30, %eax
	jbe	L11
	popq	%rbp
	ret
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$u, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	L13
L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L14
	call	abort
L14:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L13:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	L15
	movl	$0, -12(%rbp)
	jmp	L16
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-28(%rbp), %eax
	je	L17
	call	abort
L17:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L16:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L18
	movl	$0, -12(%rbp)
	jmp	L19
L21:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$97, %al
	je	L20
	call	abort
L20:
	addl	$1, -12(%rbp)
	addq	$1, -8(%rbp)
L19:
	movl	-12(%rbp), %eax
	cmpl	$7, %eax
	jbe	L21
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L23
L27:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	movb	$0, u(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L24
	call	abort
L24:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L25
	call	abort
L25:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	movb	$66, u(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L26
	call	abort
L26:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L23:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L27
	movl	$0, -4(%rbp)
	jmp	L28
L32:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L29
	call	abort
L29:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$2, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L30
	call	abort
L30:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$2, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L31
	call	abort
L31:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L28:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L32
	movl	$0, -4(%rbp)
	jmp	L33
L37:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L34
	call	abort
L34:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$3, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L35
	call	abort
L35:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$3, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L36
	call	abort
L36:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$3, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L33:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L37
	movl	$0, -4(%rbp)
	jmp	L38
L42:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L39
	call	abort
L39:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$4, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L40
	call	abort
L40:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$4, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L41
	call	abort
L41:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$4, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L38:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L42
	movl	$0, -4(%rbp)
	jmp	L43
L47:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$5, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L44
	call	abort
L44:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$5, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L45
	call	abort
L45:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$5, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L46
	call	abort
L46:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$5, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L43:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L47
	movl	$0, -4(%rbp)
	jmp	L48
L52:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L49
	call	abort
L49:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$6, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L50
	call	abort
L50:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$6, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L51
	call	abort
L51:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$6, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L48:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L52
	movl	$0, -4(%rbp)
	jmp	L53
L57:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L54
	call	abort
L54:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$7, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L55
	call	abort
L55:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$7, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L56
	call	abort
L56:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$7, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L53:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L57
	movl	$0, -4(%rbp)
	jmp	L58
L62:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L59
	call	abort
L59:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$8, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L60
	call	abort
L60:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$8, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L61
	call	abort
L61:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L58:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L62
	movl	$0, -4(%rbp)
	jmp	L63
L67:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$9, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L64
	call	abort
L64:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$9, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L65
	call	abort
L65:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$9, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L66
	call	abort
L66:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$9, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L63:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L67
	movl	$0, -4(%rbp)
	jmp	L68
L72:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L69
	call	abort
L69:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$10, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L70
	call	abort
L70:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$10, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L71
	call	abort
L71:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$10, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L68:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L72
	movl	$0, -4(%rbp)
	jmp	L73
L77:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$11, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L74
	call	abort
L74:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$11, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L75
	call	abort
L75:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$11, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L76
	call	abort
L76:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$11, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L73:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L77
	movl	$0, -4(%rbp)
	jmp	L78
L82:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$12, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L79
	call	abort
L79:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$12, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L80
	call	abort
L80:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$12, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L81
	call	abort
L81:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$12, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L78:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L82
	movl	$0, -4(%rbp)
	jmp	L83
L87:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$13, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L84
	call	abort
L84:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$13, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L85
	call	abort
L85:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$13, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L86
	call	abort
L86:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$13, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L83:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L87
	movl	$0, -4(%rbp)
	jmp	L88
L92:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$14, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L89
	call	abort
L89:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$14, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L90
	call	abort
L90:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$14, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L91
	call	abort
L91:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$14, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L88:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L92
	movl	$0, -4(%rbp)
	jmp	L93
L97:
	movl	$0, %eax
	call	reset
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$15, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L94
	call	abort
L94:
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	movzbl	A(%rip), %eax
	movsbl	%al, %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	u(%rdx), %rcx
	movl	$15, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L95
	call	abort
L95:
	movl	-4(%rbp), %eax
	movl	$65, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	movl	$15, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	$u, %rax
	cmpq	-16(%rbp), %rax
	je	L96
	call	abort
L96:
	movl	-4(%rbp), %eax
	movl	$66, %edx
	movl	$15, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L93:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jbe	L97
	movl	$0, %edi
	call	exit
