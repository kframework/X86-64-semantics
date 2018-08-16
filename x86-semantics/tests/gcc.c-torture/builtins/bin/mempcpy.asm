	.file	"mempcpy.c"
	.text
	.globl	mempcpy
	.type	mempcpy, @function
mempcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
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
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L3
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	mempcpy, .-mempcpy
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
	.string	"ABCDE"
.LC3:
	.string	"VWX"
.LC4:
	.string	"WX"
	.string	""
	.string	""
.LC5:
	.string	""
.LC6:
	.string	"A"
	.string	"CDE"
.LC7:
	.string	"FGHI"
.LC8:
	.string	"A"
	.string	"CFGHI"
.LC9:
	.string	"qrstu"
.LC10:
	.string	"QRSTU"
.LC11:
	.string	"Q123U"
.LC12:
	.string	"abcdEFG"
.LC13:
	.string	"efg"
.LC14:
	.string	"abcdefg"
.LC15:
	.string	"ABCDEFg"
.LC16:
	.string	"ABCDEF2"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	mempcpy
	cmpq	$p+6, %rax
	jne	.L9
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L10
.L9:
	call	abort
.L10:
	movl	$2, %edx
	movl	$.LC3+1, %esi
	movl	$p+16, %edi
	call	mempcpy
	cmpq	$p+18, %rax
	jne	.L11
	movl	$5, %edx
	movl	$.LC4, %esi
	movl	$p+16, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L12
.L11:
	call	abort
.L12:
	movl	$1, %edx
	movl	$.LC5, %esi
	movl	$p+1, %edi
	call	mempcpy
	cmpq	$p+2, %rax
	jne	.L13
	movl	$6, %edx
	movl	$.LC6, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L14
.L13:
	call	abort
.L14:
	movl	$4, %edx
	movl	$.LC7, %esi
	movl	$p+3, %edi
	call	mempcpy
	cmpq	$p+7, %rax
	jne	.L15
	movl	$8, %edx
	movl	$.LC8, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L16
.L15:
	call	abort
.L16:
	movl	$8, -4(%rbp)
	movl	$6, %edx
	movl	$.LC9, %esi
	movl	$p+20, %edi
	call	memcpy
	movl	$6, %edx
	movl	$.LC10, %esi
	movl	$p+25, %edi
	call	memcpy
	movl	$3, %edx
	movl	$s1, %esi
	movl	$p+26, %edi
	call	mempcpy
	cmpq	$p+29, %rax
	jne	.L17
	movl	$6, %edx
	movl	$.LC11, %esi
	movl	$p+25, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L18
.L17:
	call	abort
.L18:
	movl	$4, %edx
	movl	$.LC12, %esi
	movl	$p, %edi
	call	mempcpy
	movl	$4, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	mempcpy
	cmpq	$p+8, %rax
	jne	.L19
	movl	$8, %edx
	movl	$.LC14, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L20
.L19:
	call	abort
.L20:
	movl	$1145258561, p(%rip)
	movw	$69, p+4(%rip)
	movl	$p+6, %eax
	cmpq	$p+6, %rax
	jne	.L21
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L22
.L21:
	call	abort
.L22:
	movl	$1, inside_main(%rip)
	movq	s3(%rip), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$p+5, %edi
	call	mempcpy
	movl	$8, %edx
	movl	$.LC15, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L23
	call	abort
.L23:
	movq	l1(%rip), %rax
	movq	%rax, %rdx
	movl	$s1+1, %esi
	movl	$p+6, %edi
	call	mempcpy
	movl	$8, %edx
	movl	$.LC16, %esi
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
