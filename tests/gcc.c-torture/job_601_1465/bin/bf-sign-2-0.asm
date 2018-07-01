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
	.comm	x,32,32
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	x(%rip), %eax
	andl	$7, %eax
	movzbl	%al, %eax
	subl	$2, %eax
	testl	%eax, %eax
	js	L10
	call	abort
L10:
	movq	x(%rip), %rax
	salq	$30, %rax
	sarq	$33, %rax
	subl	$2, %eax
	testl	%eax, %eax
	js	L11
	call	abort
L11:
	movl	x+8(%rip), %eax
	subl	$2, %eax
	testl	%eax, %eax
	js	L12
	call	abort
L12:
	movl	x+28(%rip), %eax
	shrl	$3, %eax
	andw	$32767, %ax
	movzwl	%ax, %eax
	subl	$2, %eax
	testl	%eax, %eax
	js	L13
	call	abort
L13:
	movl	x+12(%rip), %eax
	andl	$2147483647, %eax
	subl	$2, %eax
	testl	%eax, %eax
	js	L14
	call	abort
L14:
	movzbl	x+20(%rip), %eax
	andl	$7, %eax
	movzbl	%al, %eax
	subl	$2, %eax
	testl	%eax, %eax
	js	L15
	call	abort
L15:
	movl	$0, %edi
	call	exit
