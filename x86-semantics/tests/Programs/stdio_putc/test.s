main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$65, -1(%rbp)
	jmp	L2
L3:
	movq	$stdout, %rdx
	movsbl	-1(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
L2:
	cmpb	$90, -1(%rbp)
	jle	L3
	movl	$0, %eax
	leave
	ret
