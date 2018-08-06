.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$4594314991293244562, %rax
	movq	%rax, -16(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	$-110, %al
	jne	L2
	movzbl	-15(%rbp), %eax
	cmpb	$36, %al
	jne	L2
	movzbl	-14(%rbp), %eax
	cmpb	$73, %al
	jne	L2
	movzbl	-13(%rbp), %eax
	cmpb	$-110, %al
	jne	L2
	movzbl	-12(%rbp), %eax
	cmpb	$36, %al
	jne	L2
	movzbl	-11(%rbp), %eax
	cmpb	$73, %al
	jne	L2
	movzbl	-10(%rbp), %eax
	cmpb	$-62, %al
	jne	L2
	movzbl	-9(%rbp), %eax
	cmpb	$63, %al
	jne	L2
	movl	$0, %edi
	call	exit
L2:
	movzbl	-9(%rbp), %eax
	cmpb	$-110, %al
	jne	L3
	movzbl	-10(%rbp), %eax
	cmpb	$36, %al
	jne	L3
	movzbl	-11(%rbp), %eax
	cmpb	$73, %al
	jne	L3
	movzbl	-12(%rbp), %eax
	cmpb	$-110, %al
	jne	L3
	movzbl	-13(%rbp), %eax
	cmpb	$36, %al
	jne	L3
	movzbl	-14(%rbp), %eax
	cmpb	$73, %al
	jne	L3
	movzbl	-15(%rbp), %eax
	cmpb	$-62, %al
	jne	L3
	movzbl	-16(%rbp), %eax
	cmpb	$63, %al
	jne	L3
	movl	$0, %edi
	call	exit
L3:
	call	abort
