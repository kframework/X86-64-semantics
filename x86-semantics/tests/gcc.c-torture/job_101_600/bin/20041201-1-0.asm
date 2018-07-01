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
s:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
checkScc2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -16(%rbp)
	movzbl	-16(%rbp), %edx
	movzbl	-15(%rbp), %eax
	movsbl	%dl, %edx
	movsbl	%al, %eax
	cmpl	$1, %edx
	setne	%dl
	cmpl	$2, %eax
	setne	%al
	orl	%edx, %eax
	cmpb	$1, %al
	je	L10
	movzbl	-14(%rbp), %edx
	movzbl	-13(%rbp), %eax
	movsbl	%dl, %edx
	movsbl	%al, %eax
	cmpl	$3, %edx
	setne	%dl
	cmpl	$4, %eax
	setne	%al
	orl	%edx, %eax
	cmpb	$1, %al
	jne	L11
L10:
	movl	$1, %eax
	jmp	L12
L11:
	movl	$0, %eax
L12:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	s(%rip), %edi
	call	checkScc2
	popq	%rbp
	ret
