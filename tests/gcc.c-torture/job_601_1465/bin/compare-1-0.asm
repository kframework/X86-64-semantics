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
ieq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L30
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	L30
	cmpl	$0, -12(%rbp)
	jne	L31
	call	abort
L31:
	jmp	L32
L30:
	cmpl	$0, -12(%rbp)
	je	L32
	call	abort
L32:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L33
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L33
	cmpl	$0, -12(%rbp)
	jne	L34
	call	abort
L34:
	jmp	L35
L33:
	cmpl	$0, -12(%rbp)
	je	L35
	call	abort
L35:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L36
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	L36
	cmpl	$0, -12(%rbp)
	jne	L37
	call	abort
L37:
	jmp	L38
L36:
	cmpl	$0, -12(%rbp)
	je	L38
	call	abort
L38:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	L39
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	L39
	cmpl	$0, -12(%rbp)
	jne	L40
	call	abort
L40:
	jmp	L41
L39:
	cmpl	$0, -12(%rbp)
	je	L41
	call	abort
L41:
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
	jl	L43
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	L44
L43:
	cmpl	$0, -12(%rbp)
	jne	L45
	call	abort
L45:
	jmp	L46
L44:
	cmpl	$0, -12(%rbp)
	je	L46
	call	abort
L46:
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
	jge	L48
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	L48
	cmpl	$0, -12(%rbp)
	jne	L49
	call	abort
L49:
	jmp	L50
L48:
	cmpl	$0, -12(%rbp)
	je	L50
	call	abort
L50:
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
	jl	L52
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L53
L52:
	cmpl	$0, -12(%rbp)
	jne	L54
	call	abort
L54:
	jmp	L55
L53:
	cmpl	$0, -12(%rbp)
	je	L55
	call	abort
L55:
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
	jle	L57
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	L57
	cmpl	$0, -12(%rbp)
	jne	L58
	call	abort
L58:
	jmp	L59
L57:
	cmpl	$0, -12(%rbp)
	je	L59
	call	abort
L59:
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
	jg	L61
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	L62
L61:
	cmpl	$0, -12(%rbp)
	jne	L63
	call	abort
L63:
	jmp	L64
L62:
	cmpl	$0, -12(%rbp)
	je	L64
	call	abort
L64:
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
