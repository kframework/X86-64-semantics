LC0:
	.string	"Sandeep"
LC1:
	.string	"int=%d  char*=%s"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$10, -12(%rbp)
	movq	$LC0, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	ret
