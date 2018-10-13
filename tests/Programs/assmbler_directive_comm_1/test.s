	.file	"test.c"
	.comm	str,20,16
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$29113321805538644, %rax
	movq	%rax, str(%rip)
	movl	$str, %edi
	call	puts
	movl	$0, %eax
	popq	%rbp
	ret
