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
	.local	zero_t
	.comm	zero_t,44,32
	.local	pty
	.comm	pty,88,64
ini:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	zero_t(%rip), %rax
	movq	%rax, pty+40(%rip)
	movq	zero_t+8(%rip), %rax
	movq	%rax, pty+48(%rip)
	movq	zero_t+16(%rip), %rax
	movq	%rax, pty+56(%rip)
	movq	zero_t+24(%rip), %rax
	movq	%rax, pty+64(%rip)
	movq	zero_t+32(%rip), %rax
	movq	%rax, pty+72(%rip)
	movl	zero_t+40(%rip), %eax
	movl	%eax, pty+80(%rip)
	movl	$1, pty+40(%rip)
	movl	$2, pty+44(%rip)
	movl	$3, pty+48(%rip)
	movl	$4, pty+52(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	ini
	movl	pty+40(%rip), %eax
	cmpl	$1, %eax
	jne	L11
	movl	pty+44(%rip), %eax
	cmpl	$2, %eax
	jne	L11
	movl	pty+48(%rip), %eax
	cmpl	$3, %eax
	jne	L11
	movl	pty+52(%rip), %eax
	cmpl	$4, %eax
	je	L12
L11:
	call	abort
L12:
	movl	$0, %eax
	popq	%rbp
	ret
