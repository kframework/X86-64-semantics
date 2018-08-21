LC0:
	.string	"ABC=%d"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$10, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	ret
