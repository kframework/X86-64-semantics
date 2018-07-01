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
	.bss
bar:
	.zero	4
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	$2, -4(%rbp)
	jmp	L10
L11:
	movl	bar(%rip), %eax
	subl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, bar(%rip)
L10:
	movl	bar(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jg	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	f
	movl	-16(%rbp), %eax
	cmpl	$2, %eax
	jne	L13
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	je	L14
L13:
	call	abort
L14:
	movl	$0, %edi
	call	exit
