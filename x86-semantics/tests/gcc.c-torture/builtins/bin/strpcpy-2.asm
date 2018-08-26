	.file	"strpcpy-2.c"
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
	.comm	buf1,512,32
	.globl	buf2
	.data
buf2:
	.quad	buf1+256
	.comm	buf5,160,32
	.comm	buf7,20,16
	.section	.rodata
LC0:
	.string	"abcdefghijklmnop"
LC1:
	.string	"ABCDEFG"
	.string	"ijklmnop"
LC2:
	.string	"ABCDx"
	.string	"G"
	.string	"ijklmnop"
	.text
	.globl	test
test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$4, -4(%rbp)
	movq	-24(%rbp), %rax
	movabsq	$7523094288207667809, %rcx
	movq	%rcx, (%rax)
	movabsq	$8101815670912281193, %rcx
	movq	%rcx, 8(%rax)
	movb	$0, 16(%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	$buf1+16, %edx
	cmpq	%rdx, %rax
	jne	L9
	movl	$17, %edx
	movl	$LC0, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L10
L9:
	call	abort
L10:
	movq	-24(%rbp), %rax
	movabsq	$20061986658402881, %rsi
	movq	%rsi, (%rax)
	movq	-24(%rbp), %rax
	addq	$7, %rax
	movl	$buf1+7, %edx
	cmpq	%rdx, %rax
	jne	L11
	movl	$17, %edx
	movl	$LC1, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L12
L11:
	call	abort
L12:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movw	$120, (%rax)
	addq	$1, %rax
	movl	$buf1+5, %edx
	cmpq	%rdx, %rax
	jne	L13
	movl	$17, %edx
	movl	$LC2, %esi
	movl	$buf1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L15
L13:
	call	abort
L15:
	nop
	leave
	ret
	.section	.rodata
LC3:
	.string	"rstuvwxyz"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, $inside_main(%rip)
	movabsq	$6437991695636517714, %rax
	movq	%rax, $buf5(%rip)
	movabsq	$3906085646303834202, %rax
	movq	%rax, $buf5+8(%rip)
	movl	$3749943, $buf5+16(%rip)
	movabsq	$6437991695636517714, %rax
	movq	%rax, $buf7(%rip)
	movabsq	$3906085646303834202, %rax
	movq	%rax, $buf7+8(%rip)
	movl	$3749943, $buf7+16(%rip)
	movq $buf2(%rip), %rax
	movl	$0, %ecx
	movl	$LC3, %edx
	movq	%rax, %rsi
	movl	$buf1, %edi
	call	test
	nop
	popq	%rbp
	ret
