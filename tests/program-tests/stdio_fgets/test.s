LC0:
	.string	"r"
LC1:
	.string	"file.txt"
LC2:
	.string	"Error opening file"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	L2
	movl	$LC2, %edi
	call	perror
	movl	$-1, %eax
	jmp	L5
L2:
	movq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	fgets
	testq	%rax, %rax
	je	L4
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	puts
L4:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
L5:
	movq	-8(%rbp), %rcx
	xorq	$40, %rcx
	je	L6
L6:
	leave
	ret
