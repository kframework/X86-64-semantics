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
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L30
L33:
	subq	$1, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	L31
	movl	-4(%rbp), %eax
	jmp	L32
L31:
	addl	$1, -4(%rbp)
L30:
	cmpl	$9, -4(%rbp)
	jle	L33
	movl	$-1, %eax
L32:
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L35
L38:
	subq	$1, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	je	L36
	movl	-4(%rbp), %eax
	jmp	L37
L36:
	addl	$1, -4(%rbp)
L35:
	cmpl	$9, -4(%rbp)
	jle	L38
	movl	$-1, %eax
L37:
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L40
L43:
	subq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L41
	movl	-4(%rbp), %eax
	jmp	L42
L41:
	addl	$1, -4(%rbp)
L40:
	cmpl	$9, -4(%rbp)
	jle	L43
	movl	$-1, %eax
L42:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L45
L48:
	subq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	L46
	movl	-4(%rbp), %eax
	jmp	L47
L46:
	addl	$1, -4(%rbp)
L45:
	cmpl	$9, -4(%rbp)
	jle	L48
	movl	$-1, %eax
L47:
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L50
L53:
	addq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L51
	movl	-4(%rbp), %eax
	jmp	L52
L51:
	addl	$1, -4(%rbp)
L50:
	cmpl	$9, -4(%rbp)
	jle	L53
	movl	$-1, %eax
L52:
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L55
L58:
	addq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	L56
	movl	-4(%rbp), %eax
	jmp	L57
L56:
	addl	$1, -4(%rbp)
L55:
	cmpl	$9, -4(%rbp)
	jle	L58
	movl	$-1, %eax
L57:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$5, %edi
	movl	$0, %eax
	call	f1
	cmpl	$5, %eax
	je	L60
	call	abort
L60:
	movl	$1, %edi
	movl	$0, %eax
	call	f2
	testl	%eax, %eax
	je	L61
	call	abort
L61:
	movl	$0, %edi
	movl	$0, %eax
	call	f2
	cmpl	$1, %eax
	je	L62
	call	abort
L62:
	movl	$5, %edi
	movl	$0, %eax
	call	f3
	cmpl	$4, %eax
	je	L63
	call	abort
L63:
	movl	$1, %edi
	movl	$0, %eax
	call	f4
	cmpl	$1, %eax
	je	L64
	call	abort
L64:
	movl	$0, %edi
	movl	$0, %eax
	call	f4
	testl	%eax, %eax
	je	L65
	call	abort
L65:
	movq	$-5, %rdi
	movl	$0, %eax
	call	f5
	cmpl	$4, %eax
	je	L66
	call	abort
L66:
	movq	$-1, %rdi
	movl	$0, %eax
	call	f6
	cmpl	$1, %eax
	je	L67
	call	abort
L67:
	movl	$0, %edi
	movl	$0, %eax
	call	f6
	testl	%eax, %eax
	je	L68
	call	abort
L68:
	movl	$0, %edi
	call	exit
