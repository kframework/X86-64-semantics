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
line:
	.byte	49
	.byte	57
	.byte	57
	.byte	0
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$line+3, -8(%rbp)
	jmp	L10
L11:
	movq	-8(%rbp), %rax
	movb	$48, (%rax)
L10:
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	addl	$1, %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	L11
	movzbl	line(%rip), %eax
	cmpb	$50, %al
	jne	L12
	movzbl	line+1(%rip), %eax
	cmpb	$48, %al
	jne	L12
	movzbl	line+2(%rip), %eax
	cmpb	$48, %al
	je	L13
L12:
	call	abort
L13:
	movl	$0, %eax
	leave
	ret
