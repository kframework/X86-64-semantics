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
	.comm	t,4,4
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	t(%rip), %eax
	andl	$1073741823, %eax
	movl	%eax, %edx
	leal	1(%rdx), %eax
	andl	$1073741823, %eax
	andl	$1073741823, %eax
	movl	%eax, %ecx
	movl	t(%rip), %eax
	andl	$-1073741824, %eax
	orl	%ecx, %eax
	movl	%eax, t(%rip)
	testl	%edx, %edx
	jne	L10
	movl	$0, %edi
	call	exit
L10:
	call	abort
