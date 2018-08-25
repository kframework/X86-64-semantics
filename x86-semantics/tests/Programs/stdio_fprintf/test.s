LC0:
	.string	"w"
LC1:
	.string	"file.txt"
LC2:
	.string	"in"
LC3:
	.string	"are"
LC4:
	.string	"We"
LC5:
	.string	"%s %s %s %d"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2012, %r9d
	movl	$LC2, %r8d
	movl	$LC3, %ecx
	movl	$LC4, %edx
	movl	$LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	leave
	ret
