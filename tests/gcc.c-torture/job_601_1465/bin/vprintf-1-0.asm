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
LC0:
	.string	"hello"
LC1:
	.string	"hello\n"
LC2:
	.string	"a"
LC3:
	.string	""
LC4:
	.string	"%s"
LC5:
	.string	"%c"
LC6:
	.string	"%s\n"
LC7:
	.string	"%d\n"
inner:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L40
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L40:
	movl	%edi, -228(%rbp)
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$8, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	cmpl	$10, -228(%rbp)
	ja	L41
	movl	-228(%rbp), %eax
	movq	L43(,%rax,8), %rax
	call %rax
L43:
	.quad	L42
	.quad	L44
	.quad	L45
	.quad	L46
	.quad	L47
	.quad	L48
	.quad	L49
	.quad	L50
	.quad	L51
	.quad	L52
	.quad	L53
L42:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC0, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC0, %edi
	call	vprintf
	cmpl	$5, %eax
	je	L54
	call	abort.3317
	jmp	L39
L54:
	jmp	L39
L44:
	movl	$LC0, %edi
	call	puts
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC1, %edi
	call	vprintf
	cmpl	$6, %eax
	je	L56
	call	abort.3317
	jmp	L39
L56:
	jmp	L39
L45:
	movl	$97, %edi
	call	putchar
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	vprintf
	cmpl	$1, %eax
	je	L57
	call	abort.3317
	jmp	L39
L57:
	jmp	L39
L46:
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	vprintf
	testl	%eax, %eax
	je	L58
	call	abort.3317
	jmp	L39
L58:
	jmp	L39
L47:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	cmpl	$5, %eax
	je	L59
	call	abort.3317
	jmp	L39
L59:
	jmp	L39
L48:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	cmpl	$6, %eax
	je	L60
	call	abort.3317
	jmp	L39
L60:
	jmp	L39
L49:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	cmpl	$1, %eax
	je	L61
	call	abort.3317
	jmp	L39
L61:
	jmp	L39
L50:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	vprintf
	testl	%eax, %eax
	je	L62
	call	abort.3317
	jmp	L39
L62:
	jmp	L39
L51:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC5, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC5, %edi
	call	vprintf
	cmpl	$1, %eax
	je	L63
	call	abort.3317
	jmp	L39
L63:
	jmp	L39
L52:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC6, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC6, %edi
	call	vprintf
	cmpl	$7, %eax
	je	L64
	call	abort.3317
	jmp	L39
L64:
	jmp	L39
L53:
	leaq	-200(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC7, %edi
	call	vprintf
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC7, %edi
	call	vprintf
	cmpl	$2, %eax
	je	L65
	call	abort.3317
	jmp	L39
L65:
	jmp	L39
L41:
	call	abort.3317
L39:
	leave
	ret
abort.3317:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edi
	movl	$0, %eax
	call	inner
	movl	$1, %edi
	movl	$0, %eax
	call	inner
	movl	$2, %edi
	movl	$0, %eax
	call	inner
	movl	$3, %edi
	movl	$0, %eax
	call	inner
	movl	$LC0, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	inner
	movl	$LC1, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	inner
	movl	$LC2, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	inner
	movl	$LC3, %esi
	movl	$7, %edi
	movl	$0, %eax
	call	inner
	movl	$120, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	inner
	movl	$LC1, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	inner
	movl	$0, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	inner
	movl	$0, %eax
	popq	%rbp
	ret
