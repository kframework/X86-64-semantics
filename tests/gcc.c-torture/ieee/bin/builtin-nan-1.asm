n1:
	.long	1
	.long	2146959360
n2:
	.long	1
	.long	2146959360
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$8, %edx
	movl	$n2, %esi
	movl	$n1, %edi
	call	memcmp
	testl	%eax, %eax
	je	L2
	call	abort
L2:
	movl	$0, %eax
	popq	%rbp
	ret
