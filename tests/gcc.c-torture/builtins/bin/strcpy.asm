	.file	"strcpy.c"
	.text
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L2:
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
	jne	.L2
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
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
	.globl	p
	.bss
	.align 32
	.type	p, @object
	.size	p, 32
p:
	.zero	32
	.section	.rodata
.LC0:
	.string	"abcde"
.LC1:
	.string	"wxyz"
.LC2:
	.string	"a"
	.string	"cde"
.LC3:
	.string	"a"
	.string	"cfghij"
.LC4:
	.string	"ABCDE"
.LC5:
	.string	"VWX"
.LC6:
	.string	"WXyz"
.LC7:
	.string	""
.LC8:
	.string	"A"
	.string	"CDE"
.LC9:
	.string	"FGHI"
.LC10:
	.string	"A"
	.string	"CFGHIj"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1684234849, p(%rip)
	movw	$101, p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	.L8
	movl	$6, %edx
	movl	$.LC0, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L9
.L8:
	call	abort
.L9:
	movl	$2054781047, p+16(%rip)
	movb	$0, p+20(%rip)
	movl	$p+16, %eax
	cmpq	$p+16, %rax
	jne	.L10
	movl	$5, %edx
	movl	$.LC1, %esi
	movl	$p+16, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L11
.L10:
	call	abort
.L11:
	movb	$0, p+1(%rip)
	movl	$p+1, %eax
	cmpq	$p+1, %rax
	jne	.L12
	movl	$6, %edx
	movl	$.LC2, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L13
.L12:
	call	abort
.L13:
	movl	$1768449894, p+3(%rip)
	movw	$106, p+7(%rip)
	movl	$p+3, %eax
	cmpq	$p+3, %rax
	jne	.L14
	movl	$9, %edx
	movl	$.LC3, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L15
.L14:
	call	abort
.L15:
	movl	$6, %edx
	movl	$.LC4, %esi
	movl	$p, %edi
	call	memcpy
	cmpq	$p, %rax
	jne	.L16
	movl	$6, %edx
	movl	$.LC4, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L17
.L16:
	call	abort
.L17:
	movl	$2, %edx
	movl	$.LC5+1, %esi
	movl	$p+16, %edi
	call	memcpy
	cmpq	$p+16, %rax
	jne	.L18
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$p+16, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L19
.L18:
	call	abort
.L19:
	movl	$1, %edx
	movl	$.LC7, %esi
	movl	$p+1, %edi
	call	memcpy
	cmpq	$p+1, %rax
	jne	.L20
	movl	$6, %edx
	movl	$.LC8, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L21
.L20:
	call	abort
.L21:
	movl	$4, %edx
	movl	$.LC9, %esi
	movl	$p+3, %edi
	call	memcpy
	cmpq	$p+3, %rax
	jne	.L22
	movl	$9, %edx
	movl	$.LC10, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L23
.L22:
	call	abort
.L23:
	movl	$1684234849, p(%rip)
	movw	$101, p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	.L24
	movl	$6, %edx
	movl	$.LC0, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L25
.L24:
	call	abort
.L25:
	movl	$1145258561, p(%rip)
	movw	$69, p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	.L26
	movl	$6, %edx
	movl	$.LC4, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L7
.L26:
	call	abort
.L7:
	popq	%rbp
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
