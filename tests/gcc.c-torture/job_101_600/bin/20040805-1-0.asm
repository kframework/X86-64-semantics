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
a:
	.long	2
	.long	3
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	a(%rip), %eax
	addl	$1, %eax
	movl	%eax, a(%rip)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$65560, %rsp
	movl	%edi, -65556(%rbp)
	movl	a(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, a+4(%rip)
	leaq	-65552(%rbp), %rdx
	movl	-65556(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	bar
	movl	%eax, -65556(%rbp)
	leaq	-65552(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	bar
	movl	%eax, -4(%rbp)
	movl	-65556(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$100, %edi
	call	foo
	cmpl	$102, %eax
	je	L14
	call	abort
L14:
	movl	$0, %edi
	call	exit
