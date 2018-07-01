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
	.comm	buf,64,64
LC0:
	.string	"mystring"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$7453010373645662573, %rax
	movq	%rax, buf(%rip)
	movb	$0, buf+8(%rip)
	movl	$buf, %edx
	movl	$LC0, %eax
	movl	$9, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	je	L10
	call	abort
L10:
	movl	$0, -4(%rbp)
	jmp	L11
L13:
	movl	-4(%rbp), %eax
	cltq
	addq	$buf, %rax
	movabsq	$7453010373645662573, %rcx
	movq	%rcx, (%rax)
	movb	$0, 8(%rax)
	movl	-4(%rbp), %eax
	cltq
	addq	$buf, %rax
	movq	%rax, %rdx
	movl	$LC0, %eax
	movl	$9, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	je	L12
	call	abort
L12:
	addl	$1, -4(%rbp)
L11:
	cmpl	$15, -4(%rbp)
	jle	L13
	movl	$0, %eax
	leave
	ret
