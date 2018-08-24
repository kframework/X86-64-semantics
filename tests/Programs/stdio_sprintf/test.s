LC1:
	.string	"Value of Pi = %f"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$4614256656552045848, %rdx
	leaq	-96(%rbp), %rax
	vmovq	%rdx, %xmm0
	movl	$LC1, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	sprintf
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	$40, %rcx
	je	L3
L3:
	leave
	ret
