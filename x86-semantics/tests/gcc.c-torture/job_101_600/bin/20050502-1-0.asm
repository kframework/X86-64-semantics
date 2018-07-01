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
L18:
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
	je	L14
	cmpb	$39, -1(%rbp)
	jne	L14
	jmp	L15
L14:
	cmpb	$0, -40(%rbp)
	je	L16
	cmpb	$34, -1(%rbp)
	jne	L16
	jmp	L15
L16:
	movzbl	-36(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L17
	movzbl	-40(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	L17
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	baz
	testl	%eax, %eax
	jne	L17
	jmp	L15
L17:
	jmp	L18
L15:
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
	jne	L20
	leaq	-64(%rbp), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L21
L20:
	call	abort
L21:
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
	jne	L22
	leaq	-64(%rbp), %rax
	movl	$LC5, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L23
L22:
	call	abort
L23:
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
	jne	L24
	leaq	-64(%rbp), %rax
	movl	$LC8, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L25
L24:
	call	abort
L25:
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
	jne	L26
	leaq	-64(%rbp), %rax
	movl	$LC11, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L27
L26:
	call	abort
L27:
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
	jne	L28
	leaq	-64(%rbp), %rax
	movl	$LC14, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L29
L28:
	call	abort
L29:
	movl	$0, %eax
	leave
	ret
