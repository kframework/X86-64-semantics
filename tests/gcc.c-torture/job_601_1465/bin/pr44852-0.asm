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
sf:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	L10
L12:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	L10
	movq	-8(%rbp), %rax
	movb	$48, (%rax)
	jmp	L11
L10:
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	je	L12
L11:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %edx
	addl	$1, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
LC0:
	.string	"199999"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$960051513, -16(%rbp)
	movw	$14649, -12(%rbp)
	movb	$0, -10(%rbp)
	leaq	-16(%rbp), %rax
	leaq	-16(%rbp), %rdx
	addq	$2, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sf
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jne	L15
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$LC0, %eax
	movl	$7, %ecx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	repz cmpsb
	seta	%dl
	setb	%al
	subl	%eax, %edx
	movl	%edx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	je	L16
L15:
	call	abort
L16:
	movl	$0, %eax
	leave
	ret
