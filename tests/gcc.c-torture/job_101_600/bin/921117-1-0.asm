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
	.comm	cell,16,16
LC0:
	.string	"0123456789"
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, %rdx
	movq	%rsi, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$99, %eax
	je	L10
	movl	$1, %eax
	jmp	L11
L10:
	leaq	-16(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	strcmp
L11:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$99, cell+12(%rip)
	movabsq	$3978425819141910832, %rax
	movq	%rax, cell(%rip)
	movw	$14648, cell+8(%rip)
	movb	$0, cell+10(%rip)
	movq	cell(%rip), %rdx
	movq	cell+8(%rip), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	check
	testl	%eax, %eax
	je	L13
	call	abort
L13:
	movl	$0, %edi
	call	exit
