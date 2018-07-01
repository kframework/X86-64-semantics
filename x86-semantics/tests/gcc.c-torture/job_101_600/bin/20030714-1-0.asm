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
false:
	.zero	1
true:
	.byte	1
RenderBox_setStyle:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	26(%rax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	movb	%al, -10(%rbp)
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RenderObject_setStyle
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L10
	movb	$1, -17(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-17(%rbp), %edx
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	26(%rax), %edx
	andl	$-17, %edx
	orl	%ecx, %edx
	movb	%dl, 26(%rax)
	jmp	L9
L10:
	cmpb	$0, -10(%rbp)
	je	L13
	movb	$1, -18(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-18(%rbp), %edx
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	26(%rax), %edx
	andl	$-17, %edx
	orl	%ecx, %edx
	movb	%dl, 26(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	removeFromSpecialObjects
L13:
	movb	$0, -19(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-19(%rbp), %edx
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	26(%rax), %edx
	andl	$-17, %edx
	orl	%ecx, %edx
	movb	%dl, 26(%rax)
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	$3, %al
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	xorl	$1, %eax
	testb	%al, %al
	je	L14
	cmpl	$0, -24(%rbp)
	je	L14
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-25(%rbp), %edx
	andl	$1, %edx
	leal	0(,%rdx,8), %ecx
	movzbl	26(%rax), %edx
	andl	$-9, %edx
	orl	%ecx, %edx
	movb	%dl, 26(%rax)
	jmp	L9
L14:
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	%al
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	cmpl	$1, -32(%rbp)
	jne	L9
	movb	$1, -33(%rbp)
	movq	-8(%rbp), %rax
	movzbl	-33(%rbp), %edx
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	26(%rax), %edx
	andl	$-65, %edx
	orl	%ecx, %edx
	movb	%dl, 26(%rax)
L9:
	leave
	ret
	.comm	g_this,40,32
	.comm	g__style,4,4
RenderObject_setStyle:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	ret
removeFromSpecialObjects:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
RenderBox_isTableCell:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	g_this+26(%rip), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, g_this+26(%rip)
	movl	$0, %eax
	andl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzbl	g_this+26(%rip), %eax
	andl	$-17, %eax
	orl	%edx, %eax
	movb	%al, g_this+26(%rip)
	movl	$0, %eax
	andl	$1, %eax
	leal	0(,%rax,8), %edx
	movzbl	g_this+26(%rip), %eax
	andl	$-9, %eax
	orl	%edx, %eax
	movb	%al, g_this+26(%rip)
	movq	$RenderBox_isTableCell, g_this+32(%rip)
	movzbl	g__style+2(%rip), %eax
	orl	$6, %eax
	movb	%al, g__style+2(%rip)
	movzbl	g__style+2(%rip), %eax
	andl	$-25, %eax
	movb	%al, g__style+2(%rip)
	movl	$g__style, %esi
	movl	$g_this, %edi
	call	RenderBox_setStyle
	movzbl	g_this+26(%rip), %eax
	shrb	$4, %al
	andl	$1, %eax
	movl	$1, %edx
	cmpb	%dl, %al
	je	L20
	call	abort
L20:
	movzbl	g_this+26(%rip), %eax
	shrb	$6, %al
	andl	$1, %eax
	movl	$0, %edx
	cmpb	%dl, %al
	je	L21
	call	abort
L21:
	movzbl	g_this+26(%rip), %eax
	shrb	$3, %al
	andl	$1, %eax
	movl	$0, %edx
	cmpb	%dl, %al
	je	L22
	call	abort
L22:
	movl	$0, %edi
	call	exit