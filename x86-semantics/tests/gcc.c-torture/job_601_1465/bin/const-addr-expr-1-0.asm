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
LC0:
	.string	"1"
LC1:
	.string	"2"
Upgrade_items:
	.long	1
	.zero	4
	.quad	LC0
	.long	2
	.zero	4
	.quad	LC1
	.long	0
	.zero	4
	.quad	0
Upgd_minor_ID:
	.quad	Upgrade_items+16
Upgd_minor_ID1:
	.quad	Upgrade_items
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	Upgd_minor_ID(%rip), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	L10
	call	abort
L10:
	movq	Upgd_minor_ID1(%rip), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	L11
	call	abort
L11:
	movl	$0, %eax
	leave
	ret
