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
	jmp	L17
L18:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L17:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
nge:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setge	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
ngt:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setg	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
nle:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setle	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
nlt:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setl	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
neq:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
nne:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setne	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
ngeu:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setae	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
ngtu:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	seta	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
nleu:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setbe	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
nltu:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setb	%al
	movzbl	%al, %eax
	negl	%eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2147483647, %esi
	movl	$-2147483648, %edi
	call	nge
	testl	%eax, %eax
	je	L41
	call	abort
L41:
	movl	$-2147483648, %esi
	movl	$2147483647, %edi
	call	nge
	cmpl	$-1, %eax
	je	L42
	call	abort
L42:
	movl	$2147483647, %esi
	movl	$-2147483648, %edi
	call	ngt
	testl	%eax, %eax
	je	L43
	call	abort
L43:
	movl	$-2147483648, %esi
	movl	$2147483647, %edi
	call	ngt
	cmpl	$-1, %eax
	je	L44
	call	abort
L44:
	movl	$2147483647, %esi
	movl	$-2147483648, %edi
	call	nle
	cmpl	$-1, %eax
	je	L45
	call	abort
L45:
	movl	$-2147483648, %esi
	movl	$2147483647, %edi
	call	nle
	testl	%eax, %eax
	je	L46
	call	abort
L46:
	movl	$2147483647, %esi
	movl	$-2147483648, %edi
	call	nlt
	cmpl	$-1, %eax
	je	L47
	call	abort
L47:
	movl	$-2147483648, %esi
	movl	$2147483647, %edi
	call	nlt
	testl	%eax, %eax
	je	L48
	call	abort
L48:
	movl	$2147483647, %esi
	movl	$-2147483648, %edi
	call	neq
	testl	%eax, %eax
	je	L49
	call	abort
L49:
	movl	$-2147483648, %esi
	movl	$2147483647, %edi
	call	neq
	testl	%eax, %eax
	je	L50
	call	abort
L50:
	movl	$2147483647, %esi
	movl	$-2147483648, %edi
	call	nne
	cmpl	$-1, %eax
	je	L51
	call	abort
L51:
	movl	$-2147483648, %esi
	movl	$2147483647, %edi
	call	nne
	cmpl	$-1, %eax
	je	L52
	call	abort
L52:
	movl	$-1, %esi
	movl	$0, %edi
	call	ngeu
	testl	%eax, %eax
	je	L53
	call	abort
L53:
	movl	$0, %esi
	movl	$-1, %edi
	call	ngeu
	cmpl	$-1, %eax
	je	L54
	call	abort
L54:
	movl	$-1, %esi
	movl	$0, %edi
	call	ngtu
	testl	%eax, %eax
	je	L55
	call	abort
L55:
	movl	$0, %esi
	movl	$-1, %edi
	call	ngtu
	cmpl	$-1, %eax
	je	L56
	call	abort
L56:
	movl	$-1, %esi
	movl	$0, %edi
	call	nleu
	cmpl	$-1, %eax
	je	L57
	call	abort
L57:
	movl	$0, %esi
	movl	$-1, %edi
	call	nleu
	testl	%eax, %eax
	je	L58
	call	abort
L58:
	movl	$-1, %esi
	movl	$0, %edi
	call	nltu
	cmpl	$-1, %eax
	je	L59
	call	abort
L59:
	movl	$0, %esi
	movl	$-1, %edi
	call	nltu
	testl	%eax, %eax
	je	L60
	call	abort
L60:
	movl	$0, %edi
	call	exit
