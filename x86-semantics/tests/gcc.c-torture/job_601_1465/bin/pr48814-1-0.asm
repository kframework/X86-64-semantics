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
arr:
	.long	1
	.long	2
	.long	3
	.long	4
	.bss
count:
	.zero	4
incr:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	count(%rip), %eax
	addl	$1, %eax
	movl	%eax, count(%rip)
	movl	count(%rip), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movl	count(%rip), %ebx
	leal	1(%rbx), %eax
	movl	%eax, count(%rip)
	call	incr
	movslq	%ebx, %rdx
	movl	%eax, arr(,%rdx,4)
	movl	count(%rip), %eax
	cmpl	$2, %eax
	jne	L12
	movl	count(%rip), %eax
	cltq
	movl	arr(,%rax,4), %eax
	cmpl	$3, %eax
	je	L13
L12:
	call	abort
L13:
	movl	$0, %eax
	popq	%rbx
	popq	%rbp
	ret
