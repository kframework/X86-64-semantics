LC0:
	.string	"r"
LC1:
	.string	"file.txt"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	getc
	movb	%al, -9(%rbp)
	movq	$stdout, %rdx
	movsbl	-9(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_IO_putc
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	leave
	ret
