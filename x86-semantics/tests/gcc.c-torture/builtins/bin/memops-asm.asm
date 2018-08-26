	.file	"memops-asm.c"
	.text
	.globl	my_memcpy
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
	jmp	L2
L3:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L2:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L3
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	my_bcopy
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
	jb	L6
	jmp	L7
L8:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L7:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L8
	jmp	L12
L6:
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -8(%rbp)
	jmp	L10
L11:
	subq	$1, -16(%rbp)
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
L10:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L11
L12:
	nop
	popq	%rbp
	ret
	.globl	my_memmove
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
	jb	L14
	jmp	L15
L16:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L16
	jmp	L17
L14:
	movq	-40(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -8(%rbp)
	jmp	L18
L19:
	subq	$1, -16(%rbp)
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
L18:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L19
L17:
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	my_memset
my_memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.globl	my_bzero
my_bzero:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
L26:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	testq	%rax, %rax
	jne	L27
	nop
	popq	%rbp
	ret
	.globl	my_memcpy
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
	movl $inside_main(%rip), %eax
	testl	%eax, %eax
	je	L29
	call	abort
L29:
	movq	-8(%rbp), %rax
	leave
	ret
	.globl	my_bcopy
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
	movl $inside_main(%rip), %eax
	testl	%eax, %eax
	je	L33
	call	abort
L33:
	nop
	leave
	ret
	.globl	my_memset
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
	movl $inside_main(%rip), %eax
	testl	%eax, %eax
	je	L35
	call	abort
L35:
	movq	-8(%rbp), %rax
	leave
	ret
	.globl	my_bzero
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
	movl $inside_main(%rip), %eax
	testl	%eax, %eax
	je	L39
	call	abort
L39:
	nop
	leave
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
	.globl	a
	.data
a:
	.string	"foobar"
	.zero	25
	.globl	x
x:
	.string	"foobar"
	.zero	57
	.comm	y,64,32
	.globl	i
i:
	.long	39
	.globl	j
j:
	.long	6
	.globl	k
k:
	.long	4
	.section	.rodata
LC0:
	.string	"foXXXXfoobar"
LC1:
	.string	"fooXXXXfobar"
LC2:
	.string	"fooX"
	.string	""
	.string	"Xfobar"
	.text
	.globl	main_test
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq $a(%rip), %rax
	movq	%rax, -80(%rbp)
	movq $a+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq $a+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq $a+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movb	$120, -48(%rbp)
	movl	$1, $inside_main(%rip)
	leaq	-80(%rbp), %rax
	movl	$32, %edx
	movl	$x, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	L44
	movzbl	-48(%rbp), %eax
	cmpb	$120, %al
	jne	L44
	movl	$x+32, %ecx
	leaq	-48(%rbp), %rax
	addq	$1, %rax
	movl	$31, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L45
L44:
	call	abort
L45:
	movl $i(%rip), %eax
	cltq
	movl	$y, %ecx
	movl	$x, %esi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	my_memcpy
	cmpq	$y, %rax
	jne	L46
	movl	$64, %edx
	movl	$y, %esi
	movl	$x, %edi
	call	memcmp
	testl	%eax, %eax
	je	L47
L46:
	call	abort
L47:
	movl $j(%rip), %eax
	cltq
	movl	$y+6, %ecx
	movq	%rax, %rdx
	movl	$x, %esi
	movq	%rcx, %rdi
	call	my_memcpy
	movl	$y+6, %edx
	cmpq	%rdx, %rax
	jne	L48
	movl	$6, %edx
	movl	$y, %esi
	movl	$x, %edi
	call	memcmp
	testl	%eax, %eax
	jne	L48
	movl	$y+6, %eax
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$x, %edi
	call	memcmp
	testl	%eax, %eax
	je	L49
L48:
	call	abort
L49:
	movl $k(%rip), %eax
	cltq
	movl	$y+2, %ecx
	movq	%rax, %rdx
	movl	$88, %esi
	movq	%rcx, %rdi
	call	my_memset
	movl	$y+2, %edx
	cmpq	%rdx, %rax
	jne	L50
	movl	$13, %edx
	movl	$LC0, %esi
	movl	$y, %edi
	call	memcmp
	testl	%eax, %eax
	je	L51
L50:
	call	abort
L51:
	movl	$y+2, %ecx
	movl	$y+1, %eax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	my_bcopy
	movl	$13, %edx
	movl	$LC1, %esi
	movl	$y, %edi
	call	memcmp
	testl	%eax, %eax
	je	L52
	call	abort
L52:
	movl	$y+4, %eax
	movw	$0, (%rax)
	movl	$13, %edx
	movl	$LC2, %esi
	movl	$y, %edi
	call	memcmp
	testl	%eax, %eax
	je	L55
	call	abort
L55:
	nop
	movq	-8(%rbp), %rax
	xorq	$40, %rax
	je	L54
	call	__stack_chk_fail
L54:
	leave
	ret
