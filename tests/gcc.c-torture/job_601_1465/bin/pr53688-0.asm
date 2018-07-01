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
	.comm	headline,256,64
	.comm	p,17,16
init:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$5712343617604898630, %rax
	movq	%rax, p(%rip)
	movb	$79, p+8(%rip)
	movabsq	$6147487297207357523, %rax
	movq	%rax, p+9(%rip)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, %eax
	call	init
	movq	p(%rip), %rax
	movq	%rax, headline(%rip)
	movzbl	p+8(%rip), %eax
	movb	%al, headline+8(%rip)
	movl	$9, -4(%rbp)
	movq	$headline, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2314885530818453536, %rax
	movl	$30, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq	p+9(%rip), %rax
	movq	%rax, headline+10(%rip)
	movl	$18, -4(%rbp)
	movq	$headline, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$2314885530818453536, %rax
	movl	$29, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movzbl	headline+10(%rip), %eax
	cmpb	$83, %al
	je	L11
	call	abort
L11:
	movl	$0, %eax
	leave
	ret
