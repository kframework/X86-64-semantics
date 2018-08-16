	.file	"memops-asm.c"
	.text
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L3:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L2:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L3
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	my_memcpy, .-my_memcpy
	.globl	my_bcopy
	.type	my_bcopy, @function
my_bcopy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L6
	jmp	.L7
.L8:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L7:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L8
	jmp	.L5
.L6:
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -8(%rbp)
	jmp	.L10
.L11:
	subq	$1, -16(%rbp)
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.L10:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L11
.L5:
	popq	%rbp
	ret
	.size	my_bcopy, .-my_bcopy
	.globl	my_memmove
	.type	my_memmove, @function
my_memmove:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L13
	jmp	.L14
.L15:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L14:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L15
	jmp	.L16
.L13:
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -8(%rbp)
	jmp	.L17
.L18:
	subq	$1, -16(%rbp)
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.L17:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
.L16:
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	my_memmove, .-my_memmove
	.globl	my_memset
	.type	my_memset, @function
my_memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L21
.L22:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L21:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L22
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	my_memset, .-my_memset
	.globl	my_bzero
	.type	my_bzero, @function
my_bzero:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L25
.L26:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
.L25:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	testq	%rax, %rax
	jne	.L26
	popq	%rbp
	ret
	.size	my_bzero, .-my_bzero
	.globl	my_memcpy
	.type	my_memcpy, @function
my_memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_memcpy
	movq	%rax, -8(%rbp)
	movl	inside_main(%rip), %eax
	testl	%eax, %eax
	je	.L28
	call	abort
.L28:
	movq	-8(%rbp), %rax
	leave
	ret
	.size	my_memcpy, .-my_memcpy
	.globl	my_bcopy
	.type	my_bcopy, @function
my_bcopy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_bcopy
	movl	inside_main(%rip), %eax
	testl	%eax, %eax
	je	.L30
	call	abort
.L30:
	leave
	ret
	.size	my_bcopy, .-my_bcopy
	.globl	my_memset
	.type	my_memset, @function
my_memset:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	my_memset
	movq	%rax, -8(%rbp)
	movl	inside_main(%rip), %eax
	testl	%eax, %eax
	je	.L33
	call	abort
.L33:
	movq	-8(%rbp), %rax
	leave
	ret
	.size	my_memset, .-my_memset
	.globl	my_bzero
	.type	my_bzero, @function
my_bzero:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	my_bzero
	movl	inside_main(%rip), %eax
	testl	%eax, %eax
	je	.L35
	call	abort
.L35:
	leave
	ret
	.size	my_bzero, .-my_bzero
	.comm	inside_main,4,4
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, inside_main(%rip)
	call	main_test
	movl	$0, inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.globl	link_error
	.type	link_error, @function
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.size	link_error, .-link_error
	.globl	a
	.data
	.align 32
	.type	a, @object
	.size	a, 32
a:
	.string	"foobar"
	.zero	25
	.globl	x
	.align 64
	.type	x, @object
	.size	x, 64
x:
	.string	"foobar"
	.zero	57
	.comm	y,64,64
	.globl	i
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.long	39
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.long	6
	.globl	k
	.align 4
	.type	k, @object
	.size	k, 4
k:
	.long	4
	.section	.rodata
.LC0:
	.string	"foXXXXfoobar"
.LC1:
	.string	"fooXXXXfobar"
.LC2:
	.string	"fooX"
	.string	""
	.string	"Xfobar"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	a(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	a+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	a+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	a+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movb	$120, -48(%rbp)
	movl	$1, inside_main(%rip)
	leaq	-80(%rbp), %rax
	movl	$32, %edx
	movl	$x, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L41
	movzbl	-48(%rbp), %eax
	cmpb	$120, %al
	jne	.L41
	leaq	-48(%rbp), %rax
	addq	$1, %rax
	movl	$31, %edx
	movl	$x+32, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L42
.L41:
	call	abort
.L42:
	movl	i(%rip), %eax
	cltq
	movl	$y, %ecx
	movl	$x, %esi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	my_memcpy
	cmpq	$y, %rax
	jne	.L43
	movl	$64, %edx
	movl	$y, %esi
	movl	$x, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L44
.L43:
	call	abort
.L44:
	movl	j(%rip), %eax
	cltq
	movq	%rax, %rdx
	movl	$x, %esi
	movl	$y+6, %edi
	call	my_memcpy
	cmpq	$y+6, %rax
	jne	.L45
	movl	$6, %edx
	movl	$y, %esi
	movl	$x, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L45
	movl	$58, %edx
	movl	$y+6, %esi
	movl	$x, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L46
.L45:
	call	abort
.L46:
	movl	k(%rip), %eax
	cltq
	movq	%rax, %rdx
	movl	$88, %esi
	movl	$y+2, %edi
	call	my_memset
	cmpq	$y+2, %rax
	jne	.L47
	movl	$13, %edx
	movl	$.LC0, %esi
	movl	$y, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L48
.L47:
	call	abort
.L48:
	movl	$6, %edx
	movl	$y+2, %esi
	movl	$y+1, %edi
	call	my_bcopy
	movl	$13, %edx
	movl	$.LC1, %esi
	movl	$y, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L49
	call	abort
.L49:
	movw	$0, y+4(%rip)
	movl	$13, %edx
	movl	$.LC2, %esi
	movl	$y, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L40
	call	abort
.L40:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L51
	call	__stack_chk_fail
.L51:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
