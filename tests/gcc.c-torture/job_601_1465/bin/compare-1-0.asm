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
ieq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L40
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L40
	cmpl	$0, -12(%rbp)
	jne	L41
	call	abort
L41:
	jmp	L42
L40:
	cmpl	$0, -12(%rbp)
	je	L42
	call	abort
L42:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L43
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L43
	cmpl	$0, -12(%rbp)
	jne	L44
	call	abort
L44:
	jmp	L45
L43:
	cmpl	$0, -12(%rbp)
	je	L45
	call	abort
L45:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L46
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	L46
	cmpl	$0, -12(%rbp)
	jne	L47
	call	abort
L47:
	jmp	L48
L46:
	cmpl	$0, -12(%rbp)
	je	L48
	call	abort
L48:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	L49
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L49
	cmpl	$0, -12(%rbp)
	jne	L50
	call	abort
L50:
	jmp	L51
L49:
	cmpl	$0, -12(%rbp)
	je	L51
	call	abort
L51:
	leave
	ret
ine:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L53
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	L54
L53:
	cmpl	$0, -12(%rbp)
	jne	L55
	call	abort
L55:
	jmp	L56
L54:
	cmpl	$0, -12(%rbp)
	je	L56
	call	abort
L56:
	leave
	ret
ilt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	L58
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	L58
	cmpl	$0, -12(%rbp)
	jne	L59
	call	abort
L59:
	jmp	L60
L58:
	cmpl	$0, -12(%rbp)
	je	L60
	call	abort
L60:
	leave
	ret
ile:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L62
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L63
L62:
	cmpl	$0, -12(%rbp)
	jne	L64
	call	abort
L64:
	jmp	L65
L63:
	cmpl	$0, -12(%rbp)
	je	L65
	call	abort
L65:
	leave
	ret
igt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	L67
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	L67
	cmpl	$0, -12(%rbp)
	jne	L68
	call	abort
L68:
	jmp	L69
L67:
	cmpl	$0, -12(%rbp)
	je	L69
	call	abort
L69:
	leave
	ret
ige:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L71
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L72
L71:
	cmpl	$0, -12(%rbp)
	jne	L73
	call	abort
L73:
	jmp	L74
L72:
	cmpl	$0, -12(%rbp)
	je	L74
	call	abort
L74:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ieq
	movl	$1, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ieq
	movl	$0, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ieq
	movl	$1, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ine
	movl	$0, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ine
	movl	$1, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ine
	movl	$1, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ilt
	movl	$0, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ilt
	movl	$0, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ilt
	movl	$1, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ile
	movl	$1, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ile
	movl	$0, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ile
	movl	$0, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	igt
	movl	$0, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	igt
	movl	$1, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	igt
	movl	$0, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ige
	movl	$1, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ige
	movl	$1, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ige
	movl	$0, %eax
	popq	%rbp
	ret
