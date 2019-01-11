LC0:
	.string	"geeksforgeeks"
LC1:
	.string	"%s\n"
LC2:
	.string	"string:\n%s\ncharacter count = %d\n"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$LC0, -72(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$LC1, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	$40, %rcx
	je	L3
L3:
	leave
	ret
