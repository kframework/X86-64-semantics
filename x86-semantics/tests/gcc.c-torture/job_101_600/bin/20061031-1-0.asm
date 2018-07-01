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
nunmap:
	.byte	17
	.byte	-1
	.byte	1
ff:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	popq	%rbp
	ret
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	movw	$2, -2(%rbp)
	movw	$0, -4(%rbp)
	jmp	L11
L13:
	movzwl	-2(%rbp), %edx
	movzwl	-20(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -2(%rbp)
	movswl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ff
	movswl	-2(%rbp), %eax
	cltq
	movzbl	nunmap(%rax), %eax
	cmpb	$17, %al
	jne	L12
L12:
	movzwl	-4(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -4(%rbp)
L11:
	cmpw	$1, -4(%rbp)
	jle	L13
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-1, %edi
	call	f
	movl	$0, %eax
	popq	%rbp
	ret
