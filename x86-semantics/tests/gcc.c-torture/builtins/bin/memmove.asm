	.file	"memmove.c"
	.text
	.globl	memmove
	.type	memmove, @function
memmove:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L2
	jmp	.L3
.L4:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L3:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L4
	jmp	.L5
.L2:
	jmp	.L6
.L7:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L6:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L7
.L5:
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memmove, .-memmove
	.globl	bcopy
	.type	bcopy, @function
bcopy:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
	leave
	ret
	.size	bcopy, .-bcopy
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
	.section	.rodata
.LC0:
	.string	"hello world1"
.LC1:
	.string	"hello world2"
.LC2:
	.string	"hello world3"
.LC3:
	.string	"hello world4"
.LC4:
	.string	"hello world5"
.LC5:
	.string	"hello world6"
	.align 64
	.type	foo, @object
	.size	foo, 144
foo:
	.quad	.LC0
	.long	4028335726
	.long	1074340345
	.quad	101
	.quad	.LC1
	.long	4028335726
	.long	1074340345
	.quad	102
	.quad	.LC2
	.long	4028335726
	.long	1074340345
	.quad	103
	.quad	.LC3
	.long	4028335726
	.long	1074340345
	.quad	104
	.quad	.LC4
	.long	4028335726
	.long	1074340345
	.quad	105
	.quad	.LC5
	.long	4028335726
	.long	1074340345
	.quad	106
.LC6:
	.string	"hello world10"
.LC7:
	.string	"hello1"
.LC8:
	.string	"hello2"
.LC9:
	.string	"hello3"
.LC10:
	.string	"hello world11"
.LC11:
	.string	"hello4"
.LC12:
	.string	"hello5"
.LC13:
	.string	"hello6"
	.align 64
	.type	bar, @object
	.size	bar, 160
bar:
	.quad	.LC6
	.quad	.LC7
	.long	4028335726
	.long	1074340345
	.quad	201
	.quad	.LC8
	.long	4028335726
	.long	1074340345
	.quad	202
	.quad	.LC9
	.long	4028335726
	.long	1074340345
	.quad	203
	.quad	.LC10
	.quad	.LC11
	.long	4028335726
	.long	1074340345
	.quad	204
	.quad	.LC12
	.long	4028335726
	.long	1074340345
	.quad	205
	.quad	.LC13
	.long	4028335726
	.long	1074340345
	.quad	206
	.align 32
	.type	baz, @object
	.size	baz, 40
baz:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	0
.LC14:
	.string	"abcde"
.LC15:
	.string	"abc"
	.string	"e"
.LC16:
	.string	"abfghi"
.LC17:
	.string	"abfgAi"
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$384, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-320(%rbp), %rax
	movl	$foo, %ecx
	movl	$144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-320(%rbp), %rax
	movl	$144, %edx
	movl	$foo, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L14
	call	abort
.L14:
	leaq	-176(%rbp), %rax
	movl	$bar, %ecx
	movl	$160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	leaq	-176(%rbp), %rax
	movl	$160, %edx
	movl	$bar, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L15
	call	abort
.L15:
	movq	baz(%rip), %rax
	movq	%rax, -368(%rbp)
	movq	baz+8(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	baz+16(%rip), %rax
	movq	%rax, -352(%rbp)
	movq	baz+24(%rip), %rax
	movq	%rax, -344(%rbp)
	movq	baz+32(%rip), %rax
	movq	%rax, -336(%rbp)
	leaq	-368(%rbp), %rax
	movl	$40, %edx
	movl	$baz, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L16
	call	abort
.L16:
	movl	$1684234849, p(%rip)
	movw	$101, p+4(%rip)
	movl	$p, %eax
	cmpq	$p, %rax
	jne	.L17
	movl	$6, %edx
	movl	$.LC14, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L18
.L17:
	call	abort
.L18:
	movq	$s1, -376(%rbp)
	addq	$1, -376(%rbp)
	movl	$6, %edx
	movl	$.LC14, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L19
	cmpq	$s1+1, -376(%rbp)
	je	.L20
.L19:
	call	abort
.L20:
	movb	$0, p+3(%rip)
	movl	$p+3, %eax
	cmpq	$p+3, %rax
	jne	.L21
	movl	$6, %edx
	movl	$.LC15, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L22
.L21:
	call	abort
.L22:
	movl	$1768449894, p+2(%rip)
	movl	$7, %edx
	movl	$.LC16, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L23
	call	abort
.L23:
	movq	$s1+1, -376(%rbp)
	addq	$1, -376(%rbp)
	movl	$7, %edx
	movl	$.LC16, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	jne	.L24
	cmpq	$s1+2, -376(%rbp)
	je	.L25
.L24:
	call	abort
.L25:
	movb	$65, p+4(%rip)
	movl	$7, %edx
	movl	$.LC17, %esi
	movl	$p, %edi
	call	memcmp
	testl	%eax, %eax
	je	.L13
	call	abort
.L13:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L27
	call	__stack_chk_fail
.L27:
	leave
	ret
	.size	main_test, .-main_test
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
