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
	.comm	acc,8,8
addhi:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movswq	-4(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	acc(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, acc(%rip)
	popq	%rbp
	ret
subhi:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movq	acc(%rip), %rax
	movswq	-4(%rbp), %rdx
	salq	$32, %rdx
	subq	%rdx, %rax
	movq	%rax, acc(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$281470681743360, %rax
	movq	%rax, acc(%rip)
	movl	$1, %edi
	call	addhi
	movq	acc(%rip), %rdx
	movabsq	$281474976710656, %rax
	cmpq	%rax, %rdx
	je	L12
	call	abort
L12:
	movl	$1, %edi
	call	subhi
	movq	acc(%rip), %rdx
	movabsq	$281470681743360, %rax
	cmpq	%rax, %rdx
	je	L13
	call	abort
L13:
	movl	$0, %edi
	call	exit
