LC0:
	.string	"r"
LC1:
	.string	"file.txt"
LC2:
	.string	"Error in opening file"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L2
	movl	$LC2, %edi
	call	perror
	movl	$-1, %eax
	jmp	L3
L2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	jne	L7
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	putchar
	jmp	L2
L7:
	nop
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
L3:
	leave
	ret
