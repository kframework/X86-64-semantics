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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jns	L46
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	js	L49
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	L55
	movl	$13, %eax
	jmp	L56
L55:
	movl	$140, %eax
L56:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	feq
	cmpl	$13, %eax
	je	L58
	call	abort
L58:
	movq	$-1, %rdi
	movl	$0, %eax
	call	feq
	cmpl	$140, %eax
	je	L59
	call	abort
L59:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	feq
	cmpl	$140, %eax
	je	L60
	call	abort
L60:
	movabsq	$-9223372036854775807, %rdi
	movl	$0, %eax
	call	feq
	cmpl	$140, %eax
	je	L61
	call	abort
L61:
	movl	$1, %edi
	movl	$0, %eax
	call	feq
	cmpl	$140, %eax
	je	L62
	call	abort
L62:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	feq
	cmpl	$140, %eax
	je	L63
	call	abort
L63:
	movl	$0, %edi
	movl	$0, %eax
	call	fne
	cmpl	$140, %eax
	je	L64
	call	abort
L64:
	movq	$-1, %rdi
	movl	$0, %eax
	call	fne
	cmpl	$13, %eax
	je	L65
	call	abort
L65:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	fne
	cmpl	$13, %eax
	je	L66
	call	abort
L66:
	movabsq	$-9223372036854775807, %rdi
	movl	$0, %eax
	call	fne
	cmpl	$13, %eax
	je	L67
	call	abort
L67:
	movl	$1, %edi
	movl	$0, %eax
	call	fne
	cmpl	$13, %eax
	je	L68
	call	abort
L68:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	fne
	cmpl	$13, %eax
	je	L69
	call	abort
L69:
	movl	$0, %edi
	movl	$0, %eax
	call	flt
	cmpl	$140, %eax
	je	L70
	call	abort
L70:
	movq	$-1, %rdi
	movl	$0, %eax
	call	flt
	cmpl	$13, %eax
	je	L71
	call	abort
L71:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	flt
	cmpl	$13, %eax
	je	L72
	call	abort
L72:
	movabsq	$-9223372036854775807, %rdi
	movl	$0, %eax
	call	flt
	cmpl	$13, %eax
	je	L73
	call	abort
L73:
	movl	$1, %edi
	movl	$0, %eax
	call	flt
	cmpl	$140, %eax
	je	L74
	call	abort
L74:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	flt
	cmpl	$140, %eax
	je	L75
	call	abort
L75:
	movl	$0, %edi
	movl	$0, %eax
	call	fge
	cmpl	$13, %eax
	je	L76
	call	abort
L76:
	movq	$-1, %rdi
	movl	$0, %eax
	call	fge
	cmpl	$140, %eax
	je	L77
	call	abort
L77:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	fge
	cmpl	$140, %eax
	je	L78
	call	abort
L78:
	movabsq	$-9223372036854775807, %rdi
	movl	$0, %eax
	call	fge
	cmpl	$140, %eax
	je	L79
	call	abort
L79:
	movl	$1, %edi
	movl	$0, %eax
	call	fge
	cmpl	$13, %eax
	je	L80
	call	abort
L80:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	fge
	cmpl	$13, %eax
	je	L81
	call	abort
L81:
	movl	$0, %edi
	movl	$0, %eax
	call	fgt
	cmpl	$140, %eax
	je	L82
	call	abort
L82:
	movq	$-1, %rdi
	movl	$0, %eax
	call	fgt
	cmpl	$140, %eax
	je	L83
	call	abort
L83:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	fgt
	cmpl	$140, %eax
	je	L84
	call	abort
L84:
	movabsq	$-9223372036854775807, %rdi
	movl	$0, %eax
	call	fgt
	cmpl	$140, %eax
	je	L85
	call	abort
L85:
	movl	$1, %edi
	movl	$0, %eax
	call	fgt
	cmpl	$13, %eax
	je	L86
	call	abort
L86:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	fgt
	cmpl	$13, %eax
	je	L87
	call	abort
L87:
	movl	$0, %edi
	movl	$0, %eax
	call	fle
	cmpl	$13, %eax
	je	L88
	call	abort
L88:
	movq	$-1, %rdi
	movl	$0, %eax
	call	fle
	cmpl	$13, %eax
	je	L89
	call	abort
L89:
	movabsq	$-9223372036854775808, %rdi
	movl	$0, %eax
	call	fle
	cmpl	$13, %eax
	je	L90
	call	abort
L90:
	movabsq	$-9223372036854775807, %rdi
	movl	$0, %eax
	call	fle
	cmpl	$13, %eax
	je	L91
	call	abort
L91:
	movl	$1, %edi
	movl	$0, %eax
	call	fle
	cmpl	$140, %eax
	je	L92
	call	abort
L92:
	movabsq	$9223372036854775807, %rdi
	movl	$0, %eax
	call	fle
	cmpl	$140, %eax
	je	L93
	call	abort
L93:
	movl	$0, %edi
	call	exit
