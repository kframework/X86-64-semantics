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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
feq:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L40
	movl	$13, %eax
	jmp	L41
L40:
	movl	$140, %eax
L41:
	popq	%rbp
	ret
fne:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	L43
	movl	$13, %eax
	jmp	L44
L43:
	movl	$140, %eax
L44:
	popq	%rbp
	ret
flt:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	L46
	movl	$13, %eax
	jmp	L47
L46:
	movl	$140, %eax
L47:
	popq	%rbp
	ret
fge:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L49
	movl	$13, %eax
	jmp	L50
L49:
	movl	$140, %eax
L50:
	popq	%rbp
	ret
fgt:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	L52
	movl	$13, %eax
	jmp	L53
L52:
	movl	$140, %eax
L53:
	popq	%rbp
	ret
fle:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L55
	movl	$13, %eax
	jmp	L56
L55:
	movl	$140, %eax
L56:
	popq	%rbp
	ret
fltu:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jae	L58
	movl	$13, %eax
	jmp	L59
L58:
	movl	$140, %eax
L59:
	popq	%rbp
	ret
fgeu:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jb	L61
	movl	$13, %eax
	jmp	L62
L61:
	movl	$140, %eax
L62:
	popq	%rbp
	ret
fgtu:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jbe	L64
	movl	$13, %eax
	jmp	L65
L64:
	movl	$140, %eax
L65:
	popq	%rbp
	ret
fleu:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	ja	L67
	movl	$13, %eax
	jmp	L68
L67:
	movl	$140, %eax
L68:
	popq	%rbp
	ret
args:
	.long	0
	.long	1
	.long	-1
	.long	2147483647
	.long	-2147483648
	.long	-2147483647
	.long	440345459
	.long	-1819996526
correct_results:
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	13
	.long	140
	.long	13
	.long	140
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
	.long	140
	.long	13
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	$correct_results, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	L70
L83:
	movl	-4(%rbp), %eax
	cltq
	movl	args(,%rax,4), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -8(%rbp)
	jmp	L71
L82:
	movl	-8(%rbp), %eax
	cltq
	movl	args(,%rax,4), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	feq
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L72
	call	abort
L72:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fne
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L73
	call	abort
L73:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	flt
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L74
	call	abort
L74:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fge
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L75
	call	abort
L75:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fgt
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L76
	call	abort
L76:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fle
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L77
	call	abort
L77:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fltu
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L78
	call	abort
L78:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fgeu
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L79
	call	abort
L79:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fgtu
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L80
	call	abort
L80:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	fleu
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	L81
	call	abort
L81:
	addl	$1, -8(%rbp)
L71:
	cmpl	$7, -8(%rbp)
	jle	L82
	addl	$1, -4(%rbp)
L70:
	cmpl	$7, -4(%rbp)
	jle	L83
	movl	$0, %edi
	call	exit
