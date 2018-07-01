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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	L10
	call	abort
L10:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$544, %rsp
	movl	$0, -4(%rbp)
	jmp	L12
L25:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	L13
L24:
	movl	$0, -12(%rbp)
	jmp	L14
L23:
	movl	$0, -16(%rbp)
	jmp	L15
L22:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	L16
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	L16
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rdx, %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movl	LC0(%rip), %eax
	movl	%eax, -544(%rbp,%rdx,4)
	jmp	L17
L16:
	movl	$0, -20(%rbp)
	jmp	L18
L21:
	movl	$0, -24(%rbp)
	jmp	L19
L20:
	leaq	-288(%rbp), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx), %rsi
	movl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rsi, %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	leaq	-288(%rbp), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi), %rdi
	movl	-12(%rbp), %esi
	movslq	%esi, %rsi
	addq	%rdi, %rsi
	addq	%rsi, %rsi
	addq	%rsi, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	f
	addl	$1, -24(%rbp)
L19:
	cmpl	$0, -24(%rbp)
	jle	L20
	addl	$1, -20(%rbp)
L18:
	cmpl	$0, -20(%rbp)
	jle	L21
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rdx, %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movl	LC0(%rip), %eax
	movl	%eax, -544(%rbp,%rdx,4)
L17:
	addl	$1, -16(%rbp)
L15:
	cmpl	$1, -16(%rbp)
	jle	L22
	addl	$1, -12(%rbp)
L14:
	cmpl	$1, -12(%rbp)
	jle	L23
	addl	$1, -8(%rbp)
L13:
	cmpl	$3, -8(%rbp)
	jle	L24
	addl	$1, -4(%rbp)
L12:
	cmpl	$3, -4(%rbp)
	jle	L25
	movl	$0, %edi
	call	exit
LC0:
	.long	1148846080
