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
a:
	.long	1
d:
	.long	4014
e:
	.long	58230
	.bss
b:
	.zero	1
f:
	.byte	1
g:
	.byte	1
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	b(%rip), %eax
	movzbl	%al, %edx
	movl	a(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movb	%al, -1(%rbp)
	cmpb	$0, -1(%rbp)
	je	L10
	movb	$0, f(%rip)
L10:
	movzbl	-1(%rbp), %edx
	movl	e(%rip), %eax
	andl	%eax, %edx
	movl	d(%rip), %eax
	movzbl	%al, %eax
	andl	%eax, %edx
	movzbl	-1(%rbp), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	L9
	movb	$0, g(%rip)
L9:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	foo
	movzbl	f(%rip), %eax
	testb	%al, %al
	jne	L13
	movzbl	g(%rip), %eax
	cmpb	$1, %al
	je	L14
L13:
	call	abort
L14:
	movl	$0, %eax
	popq	%rbp
	ret
