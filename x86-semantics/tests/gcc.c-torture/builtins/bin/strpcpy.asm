	.file	"strpcpy.c"
	.text
	.globl	stpcpy
	.type	stpcpy, @function
stpcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L2:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	stpcpy, .-stpcpy
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
	.globl	s1
	.section	.rodata
	.type	s1, @object
	.size	s1, 4
s1:
	.string	"123"
	.globl	p
	.bss
	.align 32
	.type	p, @object
	.size	p, 32
p:
	.zero	32
	.globl	s2
	.section	.rodata
.LC0:
	.string	"defg"
	.data
	.align 8
	.type	s2, @object
	.size	s2, 8
s2:
	.quad	.LC0
	.globl	s3
	.section	.rodata
.LC1:
	.string	"FGH"
	.data
	.align 8
	.type	s3, @object
	.size	s3, 8
s3:
	.quad	.LC1
	.globl	l1
	.align 8
	.type	l1, @object
	.size	l1, 8
l1:
	.quad	1
	.section	.rodata
.LC2:
	.string	"abcde"
.LC3:
	.string	"wxyz"
.LC4:
	.string	"a"
	.string	"cde"
.LC5:
	.string	"a"
	.string	"cfghij"
.LC6:
	.string	"z"
	.string	"23"
	.string	""
.LC7:
	.string	"ABCDEFG"
.LC8:
	.string	"abcFGH"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$8, -4(%rbp)
	movl	$1684234849, p(%rip)
	movw	$101, p+4(%rip)
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L9
	call	abort
.L9:
	movl	$2054781047, p+16(%rip)
	movb	$0, p+20(%rip)
	movl	$5, %edx
	movl	$.LC3, %esi
	movl	$p+16, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L10
	call	abort
.L10:
	movb	$0, p+1(%rip)
	movl	$6, %edx
	movl	$.LC4, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L11
	call	abort
.L11:
	movl	$1768449894, p+3(%rip)
	movw	$106, p+7(%rip)
	movl	$9, %edx
	movl	$.LC5, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L12
	call	abort
.L12:
	addl	$1, -4(%rbp)
	movl	$p+21, %eax
	movw	$13106, (%rax)
	movb	$0, 2(%rax)
	addq	$2, %rax
	cmpq	$p+23, %rax
	jne	.L13
	cmpl	$9, -4(%rbp)
	jne	.L13
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$p+19, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L14
.L13:
	call	abort
.L14:
	movl	$1145258561, p(%rip)
	movb	$0, p+4(%rip)
	movl	$p+4, %eax
	movl	$4671045, (%rax)
	addq	$3, %rax
	cmpq	$p+7, %rax
	jne	.L15
	movl	$8, %edx
	movl	$.LC7, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L16
.L15:
	call	abort
.L16:
	movl	$1684234849, p(%rip)
	movw	$101, p+4(%rip)
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L17
	call	abort
.L17:
	movl	$1, inside_main(%rip)
	movq	s3(%rip), %rax
	movq	%rax, %rsi
	movl	$p+3, %edi
	call	strcpy
	movl	$6, %edx
	movl	$.LC8, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L8
	call	abort
.L8:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
