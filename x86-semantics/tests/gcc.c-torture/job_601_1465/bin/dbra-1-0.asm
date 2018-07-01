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
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L33
L36:
	subq	$1, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	L34
	movl	-4(%rbp), %eax
	jmp	L35
L34:
	addl	$1, -4(%rbp)
L33:
	cmpl	$9, -4(%rbp)
	jle	L36
	movl	$-1, %eax
L35:
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L38
L41:
	subq	$1, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	je	L39
	movl	-4(%rbp), %eax
	jmp	L40
L39:
	addl	$1, -4(%rbp)
L38:
	cmpl	$9, -4(%rbp)
	jle	L41
	movl	$-1, %eax
L40:
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L43
L46:
	subq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L44
	movl	-4(%rbp), %eax
	jmp	L45
L44:
	addl	$1, -4(%rbp)
L43:
	cmpl	$9, -4(%rbp)
	jle	L46
	movl	$-1, %eax
L45:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L48
L51:
	subq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	L49
	movl	-4(%rbp), %eax
	jmp	L50
L49:
	addl	$1, -4(%rbp)
L48:
	cmpl	$9, -4(%rbp)
	jle	L51
	movl	$-1, %eax
L50:
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L53
L56:
	addq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	L54
	movl	-4(%rbp), %eax
	jmp	L55
L54:
	addl	$1, -4(%rbp)
L53:
	cmpl	$9, -4(%rbp)
	jle	L56
	movl	$-1, %eax
L55:
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L58
L61:
	addq	$1, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	L59
	movl	-4(%rbp), %eax
	jmp	L60
L59:
	addl	$1, -4(%rbp)
L58:
	cmpl	$9, -4(%rbp)
	jle	L61
	movl	$-1, %eax
L60:
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
	je	L63
	call	abort
L63:
	movl	$1, %edi
	movl	$0, %eax
	call	f2
	testl	%eax, %eax
	je	L64
	call	abort
L64:
	movl	$0, %edi
	movl	$0, %eax
	call	f2
	cmpl	$1, %eax
	je	L65
	call	abort
L65:
	movl	$5, %edi
	movl	$0, %eax
	call	f3
	cmpl	$4, %eax
	je	L66
	call	abort
L66:
	movl	$1, %edi
	movl	$0, %eax
	call	f4
	cmpl	$1, %eax
	je	L67
	call	abort
L67:
	movl	$0, %edi
	movl	$0, %eax
	call	f4
	testl	%eax, %eax
	je	L68
	call	abort
L68:
	movq	$-5, %rdi
	movl	$0, %eax
	call	f5
	cmpl	$4, %eax
	je	L69
	call	abort
L69:
	movq	$-1, %rdi
	movl	$0, %eax
	call	f6
	cmpl	$1, %eax
	je	L70
	call	abort
L70:
	movl	$0, %edi
	movl	$0, %eax
	call	f6
	testl	%eax, %eax
	je	L71
	call	abort
L71:
	movl	$0, %edi
	call	exit
