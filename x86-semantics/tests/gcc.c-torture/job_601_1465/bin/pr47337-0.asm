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
	.local	a
	.comm	a,1024,64
	.local	b
	.comm	b,4,4
	.local	c
	.comm	c,1,1
	.local	d
	.comm	d,4,4
f:
	.quad	d
	.local	e
	.comm	e,8,8
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -4(%rbp)
	movb	%al, -8(%rbp)
	movzbl	-4(%rbp), %edx
	movzbl	-8(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	f(%rip), %rcx
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cwtl
	cmpl	-8(%rbp), %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%rcx)
	movb	$0, c(%rip)
	jmp	L44
L45:
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L46
	movq	e(%rip), %rax
	testq	%rax, %rax
	je	L47
	movq	$1, e(%rip)
	jmp	L50
L47:
	movl	-4(%rbp), %eax
	jmp	L49
L46:
	movl	$1, d(%rip)
	jmp	L45
L50:
	movq	$d, f(%rip)
	movzbl	c(%rip), %eax
	addl	$1, %eax
	movb	%al, c(%rip)
L44:
	movzbl	c(%rip), %eax
	cmpb	$1, %al
	jle	L45
	movl	-4(%rbp), %eax
L49:
	popq	%rbp
	ret
fnx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	L51
	movl	b(%rip), %eax
	andl	$1, %eax
	movl	%eax, %eax
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	andl	$1, %eax
	movl	%eax, %eax
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	movl	%eax, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %edx
	xorq	%rdx, %rax
	andl	$1, %eax
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
	movl	b(%rip), %eax
	movl	%eax, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %edx
	xorq	%rdx, %rax
	andl	$1, %eax
	movl	a(,%rax,4), %eax
	movl	%eax, b(%rip)
L51:
	popq	%rbp
	ret
LC0:
	.string	"2"
w:
	.quad	LC0
LC1:
	.string	"1"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	w(%rip), %rax
	movq	%rax, %rdx
	movl	$LC1, %eax
	movl	$2, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	jne	L54
	movl	$1, -4(%rbp)
L54:
	movl	$0, -12(%rbp)
	jmp	L55
L58:
	movl	$8, -16(%rbp)
	jmp	L56
L57:
	movl	$1, -8(%rbp)
	subl	$1, -16(%rbp)
L56:
	cmpl	$0, -16(%rbp)
	jg	L57
	movl	-12(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movl	%edx, a(,%rax,4)
	addl	$1, -12(%rbp)
L55:
	cmpl	$255, -12(%rbp)
	jle	L58
	movl	$0, -12(%rbp)
	jmp	L59
L60:
	movl	-12(%rbp), %eax
	cltq
	movl	$0, -48(%rbp,%rax,4)
	addl	$1, -12(%rbp)
L59:
	cmpl	$7, -12(%rbp)
	jle	L60
	movzbl	c(%rip), %eax
	movsbl	%al, %edx
	movzbl	c(%rip), %eax
	movsbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	bar
	movsbl	%al, %eax
	movl	%eax, d(%rip)
	movl	-48(%rbp), %eax
	cltq
	movl	$10, %esi
	movq	%rax, %rdi
	call	foo
	orl	$1, %eax
	movswl	%ax, %edx
	movzbl	c(%rip), %eax
	movsbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	baz
	movl	%eax, d(%rip)
	movl	d(%rip), %eax
	cltq
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fnx
	movq	e(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	fnx
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L61
	call	abort
L61:
	movl	$0, %eax
	leave
	ret
