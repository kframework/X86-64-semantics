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
L4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	je	L2
	jmp	L6
L2:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	L4
L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	leave
	ret
