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
x:
	.byte	2
	.byte	67
	.zero	2
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	x(%rip), %eax
	andl	$15, %eax
	cmpb	$2, %al
	je	L10
	call	abort
L10:
	movzbl	x+1(%rip), %eax
	andl	$15, %eax
	cmpb	$3, %al
	je	L11
	call	abort
L11:
	movzbl	x+1(%rip), %eax
	andl	$-16, %eax
	cmpb	$64, %al
	je	L12
	call	abort
L12:
	movl	$0, %edi
	call	exit
