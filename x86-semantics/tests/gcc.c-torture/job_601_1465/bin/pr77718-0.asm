strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cmpb	%al, %dl
	je	L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movl	$0, %eax
	jmp	L1
L3:
	movq	-8(%rbp), %rax
	jmp	L1
L6:
L1:
	popq	%rbp
	ret
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
abort:
	pushq	%rbp
	movq	%rsp, %rbp
	movq $-1, %rax
	jmp %rax
	
	popq	%rbp
	ret
	.comm	a,64,8
LC0:
	.string	"bbbbbb"
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$6, %edx
	movl	$a, %esi
	movl	$LC0, %edi
	call	memcmp
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$6, %edx
	movl	$LC0, %esi
	movl	$a, %edi
	call	memcmp
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$7016996765293437281, %rax
	movq	%rax, a(%rip)
	movabsq	$7016996765293437281, %rax
	movq	%rax, a+8(%rip)
	movabsq	$7016996765293437281, %rax
	movq	%rax, a+16(%rip)
	movabsq	$7016996765293437281, %rax
	movq	%rax, a+24(%rip)
	movabsq	$7016996765293437281, %rax
	movq	%rax, a+32(%rip)
	movabsq	$7016996765293437281, %rax
	movq	%rax, a+40(%rip)
	movabsq	$7016996765293437281, %rax
	movq	%rax, a+48(%rip)
	movabsq	$7016996765293437281, %rax
	movq	%rax, a+56(%rip)
	call	foo
	testl	%eax, %eax
	js	L14
	call	bar
	testl	%eax, %eax
	js	L15
L14:
	call	abort
L15:
	movl	$0, %eax
	popq	%rbp
	ret
