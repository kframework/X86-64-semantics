	.file	"test.c"
	.globl	i
	.data
i:
	.long	10
	.globl	s
	.bss
s:
	.zero	4
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	L2
L3:
	movl	$s(%rip), %edx
	movl	$i(%rip), %eax
	addl	%edx, %eax
	movl	%eax, $s(%rip)
	movl	$i(%rip), %eax
	subl	$1, %eax
	movl	%eax, $i(%rip)
L2:
	movl	$i(%rip), %eax
	testl	%eax, %eax
	jns	L3
	movl	$s(%rip), %eax
	popq	%rbp
	ret
