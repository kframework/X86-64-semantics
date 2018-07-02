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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$64, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%ecx, %eax
	movb	%dl, -36(%rbp)
	movb	%al, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movb	%al, -1(%rbp)
	movl	$0, -8(%rbp)
L48:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bar
	movb	%al, -1(%rbp)
	cmpb	$0, -36(%rbp)
	je	L44
	cmpb	$39, -1(%rbp)
	jne	L44
	jmp	L45
L44:
	cmpb	$0, -40(%rbp)
	je	L46
	cmpb	$34, -1(%rbp)
	jne	L46
	jmp	L45
L46:
	movzbl	-36(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L47
	movzbl	-40(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L47
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	baz
	testl	%eax, %eax
	jne	L47
	jmp	L45
L47:
	jmp	L48
L45:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	leave
	ret
LC0:
	.string	"abcde'fgh"
LC1:
	.string	"fgh"
LC2:
	.string	"abcde"
LC3:
	.string	"ABCDEFG\"HI"
LC4:
	.string	"HI"
LC5:
	.string	"ABCDEFG"
LC6:
	.string	"abcd\"e'fgh"
LC7:
	.string	"e'fgh"
LC8:
	.string	"abcd"
LC9:
	.string	"ABCDEF'G\"HI"
LC10:
	.string	"G\"HI"
LC11:
	.string	"ABCDEF"
LC12:
	.string	"abcdef@gh"
LC13:
	.string	"gh"
LC14:
	.string	"abcdef"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$LC0, -72(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	foo
	movq	-72(%rbp), %rax
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L50
	leaq	-64(%rbp), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L51
L50:
	call	abort
L51:
	movq	$LC3, -72(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	foo
	movq	-72(%rbp), %rax
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L52
	leaq	-64(%rbp), %rax
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L53
L52:
	call	abort
L53:
	movq	$LC6, -72(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	foo
	movq	-72(%rbp), %rax
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L54
	leaq	-64(%rbp), %rax
	movl	$LC8, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L55
L54:
	call	abort
L55:
	movq	$LC9, -72(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	foo
	movq	-72(%rbp), %rax
	movl	$LC10, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L56
	leaq	-64(%rbp), %rax
	movl	$LC11, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L57
L56:
	call	abort
L57:
	movq	$LC12, -72(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	foo
	movq	-72(%rbp), %rax
	movl	$LC13, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L58
	leaq	-64(%rbp), %rax
	movl	$LC14, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L59
L58:
	call	abort
L59:
	movl	$0, %eax
	leave
	ret
