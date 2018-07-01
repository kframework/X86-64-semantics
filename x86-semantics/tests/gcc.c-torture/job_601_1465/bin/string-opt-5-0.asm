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
x:
	.long	6
y:
	.long	1
LC0:
	.string	"hi world"
bar:
	.quad	LC0
	.comm	buf,64,64
LC1:
	.string	"hello world"
LC2:
	.string	"lo world"
LC3:
	.string	"ello world"
LC4:
	.string	"ello "
LC5:
	.string	"foo"
LC6:
	.string	" oo"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	" "
LC7:
	.string	"hello"
LC8:
	.string	"hello"
	.string	""
	.string	""
	.string	" "
LC9:
	.string	"!!!"
LC10:
	.string	"!!!--------"
LC11:
	.string	"---"
	.string	""
	.string	""
	.string	""
LC12:
	.string	"-"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$LC1, -8(%rbp)
	movq	bar(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$8, %rax
	je	L10
	call	abort
L10:
	movq	bar(%rip), %rax
	movl	x(%rip), %edx
	addl	$1, %edx
	movl	%edx, x(%rip)
	movl	x(%rip), %edx
	movslq	%edx, %rdx
	andl	$2, %edx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$6, %rax
	je	L11
	call	abort
L11:
	movl	x(%rip), %eax
	cmpl	$7, %eax
	je	L12
	call	abort
L12:
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$5, %rax
	je	L13
	call	abort
L13:
	movl	x(%rip), %eax
	cmpl	$8, %eax
	je	L14
	call	abort
L14:
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	cltq
	andl	$1, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$10, %rax
	je	L15
	call	abort
L15:
	movl	x(%rip), %eax
	cmpl	$9, %eax
	je	L16
	call	abort
L16:
	movl	x(%rip), %eax
	subl	$6, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L17
	call	abort
L17:
	movl	x(%rip), %eax
	cmpl	$3, %eax
	je	L18
	call	abort
L18:
	movq	bar(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	js	L19
	call	abort
L19:
	movq	bar(%rip), %rcx
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$1, %eax
	leaq	(%rcx,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	js	L20
	call	abort
L20:
	movl	x(%rip), %eax
	cmpl	$4, %eax
	je	L21
	call	abort
L21:
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$7, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	strchr
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	cmpq	%rdx, %rax
	je	L22
	call	abort
L22:
	movl	x(%rip), %eax
	cmpl	$5, %eax
	je	L23
	call	abort
L23:
	movq	bar(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strchr
	movq	bar(%rip), %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rax
	je	L24
	call	abort
L24:
	movq	bar(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	bar(%rip), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	L25
	call	abort
L25:
	movq	bar(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	strrchr
	testq	%rax, %rax
	je	L26
	call	abort
L26:
	movq	bar(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	bar(%rip), %rdx
	addq	$4, %rdx
	cmpq	%rdx, %rax
	je	L27
	call	abort
L27:
	movl	y(%rip), %eax
	subl	$1, %eax
	movl	%eax, y(%rip)
	movl	y(%rip), %eax
	cltq
	andl	$1, %eax
	leaq	LC3(%rax), %rcx
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$1, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L28
	call	abort
L28:
	movl	x(%rip), %eax
	cmpl	$6, %eax
	jne	L29
	movl	y(%rip), %eax
	testl	%eax, %eax
	je	L30
L29:
	call	abort
L30:
	movb	$32, -75(%rbp)
	movb	$0, -74(%rbp)
	movl	$5, x(%rip)
	movl	$1, y(%rip)
	movl	x(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, x(%rip)
	cltq
	andl	$3, %eax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leaq	-80(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L31
	movl	x(%rip), %eax
	cmpl	$6, %eax
	jne	L31
	leaq	-80(%rbp), %rax
	addq	$1, %rax
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L32
L31:
	call	abort
L32:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
	cltq
	andl	$3, %eax
	leaq	LC5(%rax), %rcx
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	cltq
	andl	$1, %eax
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	leaq	-80(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	L33
	movl	x(%rip), %eax
	cmpl	$7, %eax
	jne	L33
	movl	y(%rip), %eax
	cmpl	$2, %eax
	jne	L33
	leaq	-80(%rbp), %rax
	movl	$12, %edx
	movl	$LC6, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L34
L33:
	call	abort
L34:
	leaq	-80(%rbp), %rax
	movl	$64, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-80(%rbp), %rax
	movl	$8, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	strncpy
	leaq	-80(%rbp), %rdx
	cmpq	%rdx, %rax
	jne	L35
	leaq	-80(%rbp), %rax
	movl	$9, %edx
	movl	$LC8, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L36
L35:
	call	abort
L36:
	movl	$33, x(%rip)
	movl	$64, %edx
	movl	$32, %esi
	movl	$buf, %edi
	call	memset
	movl	y(%rip), %eax
	addl	$1, %eax
	movl	%eax, y(%rip)
	movl	y(%rip), %eax
	movslq	%eax, %rdx
	movl	x(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, x(%rip)
	movl	%eax, %esi
	movl	$buf, %edi
	call	memset
	cmpq	$buf, %rax
	jne	L37
	movl	x(%rip), %eax
	cmpl	$34, %eax
	jne	L37
	movl	y(%rip), %eax
	cmpl	$3, %eax
	jne	L37
	movl	$3, %edx
	movl	$LC9, %esi
	movl	$buf, %edi
	call	memcmp
	testl	%eax, %eax
	je	L38
L37:
	call	abort
L38:
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
	cltq
	addq	$buf, %rax
	movl	$8, %edx
	movl	$45, %esi
	movq	%rax, %rdi
	call	memset
	cmpq	$buf+3, %rax
	jne	L39
	movl	y(%rip), %eax
	cmpl	$4, %eax
	jne	L39
	movl	$11, %edx
	movl	$LC10, %esi
	movl	$buf, %edi
	call	memcmp
	testl	%eax, %eax
	je	L40
L39:
	call	abort
L40:
	movl	$10, x(%rip)
	movl	y(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, y(%rip)
	cltq
	movl	x(%rip), %edx
	addl	$1, %edx
	movl	%edx, x(%rip)
	movl	x(%rip), %edx
	movslq	%edx, %rdx
	leaq	buf(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset
	cmpq	$buf+11, %rax
	jne	L41
	movl	x(%rip), %eax
	cmpl	$11, %eax
	jne	L41
	movl	y(%rip), %eax
	cmpl	$5, %eax
	jne	L41
	movl	$7, %edx
	movl	$LC11, %esi
	movl	$buf+8, %edi
	call	memcmp
	testl	%eax, %eax
	je	L42
L41:
	call	abort
L42:
	movl	x(%rip), %eax
	addl	$4, %eax
	movl	%eax, x(%rip)
	movl	x(%rip), %eax
	cltq
	addq	$buf, %rax
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	cmpq	$buf+15, %rax
	jne	L43
	movl	x(%rip), %eax
	cmpl	$15, %eax
	jne	L43
	movl	$11, %edx
	movl	$LC12, %esi
	movl	$buf+10, %edi
	call	memcmp
	testl	%eax, %eax
	je	L44
L43:
	call	abort
L44:
	movl	$0, %eax
	leave
	ret
