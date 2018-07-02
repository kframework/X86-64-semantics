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
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
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
	movq	%rdi, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	-184(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$84, %al
	jne	L39
	call	abort
L39:
	leave
	ret
LC1:
	.string	"x %c\n"
LC2:
	.string	"case default\n"
LC3:
	.string	"This should never be reached.\n"
LC4:
	.string	"case 'D'\n"
LC5:
	.string	"case 'I'\n"
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$LC1, %edi
	movl	$0, %eax
	call	baz
	movsbl	-4(%rbp), %eax
	cmpl	$68, %eax
	je	L44
	cmpl	$73, %eax
	je	L45
	movl	$LC2, %edi
	movl	$0, %eax
	call	baz
	cmpb	$68, -4(%rbp)
	je	L46
	cmpb	$73, -4(%rbp)
	jne	L47
L46:
	movl	$LC3, %edi
	movl	$0, %eax
	call	baz
L47:
	movl	$0, %eax
	jmp	L48
L44:
	movl	$LC4, %edi
	movl	$0, %eax
	call	baz
	movl	$0, %eax
	jmp	L48
L45:
	movl	$LC5, %edi
	movl	$0, %eax
	call	baz
	movl	$0, %eax
L48:
	leave
	ret
LC0:
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	4
	.byte	4
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	4
	.byte	4
	.byte	3
	.byte	4
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	4
	.byte	2
	.byte	4
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	4
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	4
	.byte	2
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	4
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	4
	.byte	2
	.byte	4
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	4
	.byte	2
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	4
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	4
	.byte	4
	.byte	2
	.byte	4
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	4
	.byte	2
	.byte	4
	.byte	2
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	4
	.byte	2
	.byte	4
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	4
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	1
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	5
	.byte	2
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	1
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	2
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	2
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	1
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	5
	.byte	2
	.byte	3
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	2
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	1
	.byte	2
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	2
	.byte	5
	.byte	5
	.byte	2
	.byte	4
	.byte	2
	.byte	2
	.byte	5
	.byte	1
	.byte	3
	.byte	5
	.byte	3
	.byte	3
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$464, %rsp
	movl	$2, -32(%rbp)
	movl	$5, -36(%rbp)
	leaq	-464(%rbp), %rax
	movl	$LC0, %ecx
	movl	$420, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-464(%rbp), %rax
	addq	$390, %rax
	movq	%rax, -8(%rbp)
	movl	$26, -12(%rbp)
	movl	$25, -16(%rbp)
	movb	$77, -26(%rbp)
	movzbl	-26(%rbp), %eax
	movb	%al, -25(%rbp)
	movl	$2, -24(%rbp)
	jmp	L50
L59:
	movl	-12(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$0, %eax
	cmpl	$0, -40(%rbp)
	cmovns	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-16(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$5, %eax
	ja	L51
	movl	%eax, %eax
	movq	L53(,%rax,8), %rax
	call %rax
L53:
	.quad	L51
	.quad	L52
	.quad	L54
	.quad	L55
	.quad	L56
	.quad	L57
L52:
	subl	$1, -12(%rbp)
	subl	$1, -16(%rbp)
	movl	$2, -24(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	negq	%rax
	addq	%rax, -8(%rbp)
	movb	$77, -25(%rbp)
	jmp	L51
L54:
	subl	$1, -12(%rbp)
	movl	$0, -24(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	negq	%rax
	addq	%rax, -8(%rbp)
	movb	$73, -25(%rbp)
	jmp	L51
L55:
	subl	$1, -12(%rbp)
	movl	$2, -24(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	negq	%rax
	addq	%rax, -8(%rbp)
	movb	$73, -25(%rbp)
	jmp	L51
L56:
	subl	$1, -16(%rbp)
	movl	$1, -24(%rbp)
	movb	$68, -25(%rbp)
	jmp	L51
L57:
	subl	$1, -16(%rbp)
	movl	$2, -24(%rbp)
	movb	$68, -25(%rbp)
	nop
L51:
	movzbl	-25(%rbp), %eax
	cmpb	-26(%rbp), %al
	jne	L58
	addl	$1, -20(%rbp)
	jmp	L50
L58:
	movsbl	-26(%rbp), %eax
	movl	%eax, %edi
	call	foo
	movzbl	-25(%rbp), %eax
	movb	%al, -26(%rbp)
L50:
	cmpl	$0, -12(%rbp)
	jg	L59
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$68, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	foo
	call	bar
	movl	$0, %eax
	leave
	ret
