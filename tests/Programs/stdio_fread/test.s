LC0:
	.string	"w+"
LC1:
	.string	"file.txt"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	$40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$2338328219631577204, %rax
	movq	%rax, -144(%rbp)
	movabsq	$7809639169054242164, %rax
	movq	%rax, -136(%rbp)
	movl	$1768910963, -128(%rbp)
	movw	$29806, -124(%rbp)
	movb	$0, -122(%rbp)
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rsi
	movq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite
	movq	-152(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rsi
	movq	-152(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fread
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	$40, %rcx
	je	L3
L3:
	leave
	ret
