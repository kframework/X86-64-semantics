LC0:
	.string	"w"
LC1:
	.string	"alphabet.txt"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -8(%rbp)
	movb	$65, -9(%rbp)
	jmp	L2
L3:
	movsbl	-9(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc
	movzbl	-9(%rbp), %eax
	addl	$1, %eax
	movb	%al, -9(%rbp)
L2:
	cmpb	$90, -9(%rbp)
	jle	L3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	leave
	ret
