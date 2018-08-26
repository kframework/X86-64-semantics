	.file	"strpcpy.c"
	.text
	.globl	stpcpy
stpcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	L2
L3:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L2:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.comm	inside_main,4,4
	.globl	main
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, $inside_main(%rip)
	call	main_test
	movl	$0, $inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.globl	link_error
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.globl	s1
	.section	.rodata
s1:
	.string	"123"
	.globl	p
	.bss
p:
	.zero	32
	.globl	s2
	.section	.rodata
LC0:
	.string	"defg"
	.data
s2:
	.quad	LC0
	.globl	s3
	.section	.rodata
LC1:
	.string	"FGH"
	.data
s3:
	.quad	LC1
	.globl	l1
l1:
	.quad	1
	.section	.rodata
LC2:
	.string	"abcde"
LC3:
	.string	"vwxyz"
LC4:
	.string	"wxyz"
LC5:
	.string	"a"
	.string	"cde"
LC6:
	.string	"a"
	.string	"cfghij"
LC7:
	.string	"z"
	.string	"23"
	.string	""
LC8:
	.string	"ABCDEFG"
LC9:
	.string	"abcFGH"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$8, -4(%rbp)
	movl	$1684234849, $p(%rip)
	movw	$101, $p + 4(%rip)
	movl	$p+5, %edx
	movl	$p+5, %eax
	cmpq	%rax, %rdx
	jne	L9
	movl	$6, %edx
	movl	$LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L10
L9:
	call	abort
L10:
	movl	$LC3+1, %edx
	movl	$p+16, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stpcpy
	movl	$p+20, %edx
	cmpq	%rdx, %rax
	jne	L11
	movl	$p+16, %eax
	movl	$5, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L12
L11:
	call	abort
L12:
	movl	$p+1, %eax
	movb	$0, (%rax)
	movq	%rax, %rdx
	movl	$p+1, %eax
	cmpq	%rax, %rdx
	jne	L13
	movl	$6, %edx
	movl	$LC5, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L14
L13:
	call	abort
L14:
	movl	$p+3, %eax
	movl	$1768449894, (%rax)
	movw	$106, 4(%rax)
	addq	$5, %rax
	movl	$p+8, %edx
	cmpq	%rdx, %rax
	jne	L15
	movl	$9, %edx
	movl	$LC6, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L16
L15:
	call	abort
L16:
	addl	$1, -4(%rbp)
	movl	$p+21, %eax
	movw	$13106, (%rax)
	movb	$0, 2(%rax)
	addq	$2, %rax
	movl	$p+23, %edx
	cmpq	%rdx, %rax
	jne	L17
	cmpl	$9, -4(%rbp)
	jne	L17
	movl	$p+19, %eax
	movl	$5, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L18
L17:
	call	abort
L18:
	movl	$1145258561, $p(%rip)
	movb	$0, $p + 4(%rip)
	movl	$p+4, %eax
	movl	$4671045, (%rax)
	addq	$3, %rax
	movl	$p+7, %edx
	cmpq	%rdx, %rax
	jne	L19
	movl	$8, %edx
	movl	$LC8, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L20
L19:
	call	abort
L20:
	movl	$1684234849, $p(%rip)
	movw	$101, $p + 4(%rip)
	movl	$p+5, %edx
	movl	$p+5, %eax
	cmpq	%rax, %rdx
	jne	L21
	movl	$6, %edx
	movl	$LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L22
L21:
	call	abort
L22:
	movl	$1, $inside_main(%rip)
	movq $s3(%rip), %rax
	movl	$p+3, %edx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy
	movl	$6, %edx
	movl	$LC9, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L24
	call	abort
L24:
	nop
	leave
	ret
