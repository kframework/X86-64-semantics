foo:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	%xmm0, -8(%rbp)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovsd	LC0(%rip), %xmm0
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	0
	.long	1072693248
