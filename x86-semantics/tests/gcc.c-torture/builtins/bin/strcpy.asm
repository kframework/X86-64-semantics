	.file	"strcpy.c"
	.text
	.globl	strcpy
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L2:
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
	jne	L2
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
	.globl	p
	.bss
p:
	.zero	32
	.section	.rodata
LC0:
	.string	"abcde"
LC1:
	.string	"vwxyz"
LC2:
	.string	"wxyz"
LC3:
	.string	"a"
	.string	"cde"
LC4:
	.string	"a"
	.string	"cfghij"
LC5:
	.string	"ABCDE"
LC6:
	.string	"VWX"
LC7:
	.string	"WXyz"
LC8:
	.string	""
LC9:
	.string	"A"
	.string	"CDE"
LC10:
	.string	"FGHI"
LC11:
	.string	"A"
	.string	"CFGHIj"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1684234849, $p(%rip)
	movw	$101, $p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	L8
	movl	$6, %edx
	movl	$LC0, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L9
L8:
	call	abort
L9:
	movl	$LC1+1, %edx
	movl	$p+16, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	$p+16, %edx
	cmpq	%rdx, %rax
	jne	L10
	movl	$p+16, %eax
	movl	$5, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L11
L10:
	call	abort
L11:
	movl	$p+1, %eax
	movb	$0, (%rax)
	movq	%rax, %rdx
	movl	$p+1, %eax
	cmpq	%rax, %rdx
	jne	L12
	movl	$6, %edx
	movl	$LC3, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L13
L12:
	call	abort
L13:
	movl	$p+3, %eax
	movl	$1768449894, (%rax)
	movw	$106, 4(%rax)
	movq	%rax, %rdx
	movl	$p+3, %eax
	cmpq	%rax, %rdx
	jne	L14
	movl	$9, %edx
	movl	$LC4, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L15
L14:
	call	abort
L15:
	movl	$6, %edx
	movl	$LC5, %esi
	movl	$p, %edi
	call	memcpy
	cmpq	$p, %rax
	jne	L16
	movl	$6, %edx
	movl	$LC5, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L17
L16:
	call	abort
L17:
	movl	$LC6+1, %edx
	movl	$p+16, %eax
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	movl	$p+16, %edx
	cmpq	%rdx, %rax
	jne	L18
	movl	$p+16, %eax
	movl	$5, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L19
L18:
	call	abort
L19:
	movl	$p+1, %eax
	movl	$1, %edx
	movl	$LC8, %esi
	movq	%rax, %rdi
	call	memcpy
	movl	$p+1, %edx
	cmpq	%rdx, %rax
	jne	L20
	movl	$6, %edx
	movl	$LC9, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L21
L20:
	call	abort
L21:
	movl	$p+3, %eax
	movl	$4, %edx
	movl	$LC10, %esi
	movq	%rax, %rdi
	call	memcpy
	movl	$p+3, %edx
	cmpq	%rdx, %rax
	jne	L22
	movl	$9, %edx
	movl	$LC11, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L23
L22:
	call	abort
L23:
	movl	$1684234849, $p(%rip)
	movw	$101, $p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	L24
	movl	$6, %edx
	movl	$LC0, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L25
L24:
	call	abort
L25:
	movl	$1145258561, $p(%rip)
	movw	$69, $p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	L26
	movl	$6, %edx
	movl	$LC5, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	L28
L26:
	call	abort
L28:
	nop
	popq	%rbp
	ret
