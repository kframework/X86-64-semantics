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
	jmp	L14
L15:
	movl	d(%rip), %eax
	testl	%eax, %eax
	je	L16
	movq	e(%rip), %rax
	testq	%rax, %rax
	je	L17
	movq	$1, e(%rip)
	jmp	L20
L17:
	movl	-4(%rbp), %eax
	jmp	L19
L16:
	movl	$1, d(%rip)
	jmp	L15
L20:
	movq	$d, f(%rip)
	movzbl	c(%rip), %eax
	addl	$1, %eax
	movb	%al, c(%rip)
L14:
	movzbl	c(%rip), %eax
	cmpb	$1, %al
	jle	L15
	movl	-4(%rbp), %eax
L19:
	popq	%rbp
	ret
fnx:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	L21
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
L21:
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
	jne	L24
	movl	$1, -4(%rbp)
L24:
	movl	$0, -12(%rbp)
	jmp	L25
L28:
	movl	$8, -16(%rbp)
	jmp	L26
L27:
	movl	$1, -8(%rbp)
	subl	$1, -16(%rbp)
L26:
	cmpl	$0, -16(%rbp)
	jg	L27
	movl	-12(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movl	%edx, a(,%rax,4)
	addl	$1, -12(%rbp)
L25:
	cmpl	$255, -12(%rbp)
	jle	L28
	movl	$0, -12(%rbp)
	jmp	L29
L30:
	movl	-12(%rbp), %eax
	cltq
	movl	$0, -48(%rbp,%rax,4)
	addl	$1, -12(%rbp)
L29:
	cmpl	$7, -12(%rbp)
	jle	L30
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
	je	L31
	call	abort
L31:
	movl	$0, %eax
	leave
	ret