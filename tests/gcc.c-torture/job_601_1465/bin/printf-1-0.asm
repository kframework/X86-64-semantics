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
LC0:
	.string	"hello"
LC1:
	.string	"hello\n"
LC2:
	.string	"a"
LC3:
	.string	""
LC4:
	.string	"%s"
LC5:
	.string	"%c"
LC6:
	.string	"%s\n"
LC7:
	.string	"%d\n"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	cmpl	$5, %eax
	je	L10
	call	abort
L10:
	movl	$LC0, %edi
	call	puts
	movl	$LC1, %edi
	movl	$0, %eax
	call	printf
	cmpl	$6, %eax
	je	L11
	call	abort
L11:
	movl	$97, %edi
	call	putchar
	movl	$LC2, %edi
	movl	$0, %eax
	call	printf
	cmpl	$1, %eax
	je	L12
	call	abort
L12:
	movl	$LC3, %edi
	movl	$0, %eax
	call	printf
	testl	%eax, %eax
	je	L13
	call	abort
L13:
	movl	$LC0, %esi
	movl	$LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$LC0, %esi
	movl	$LC4, %edi
	movl	$0, %eax
	call	printf
	cmpl	$5, %eax
	je	L14
	call	abort
L14:
	movl	$LC0, %edi
	call	puts
	movl	$LC1, %esi
	movl	$LC4, %edi
	movl	$0, %eax
	call	printf
	cmpl	$6, %eax
	je	L15
	call	abort
L15:
	movl	$97, %edi
	call	putchar
	movl	$LC2, %esi
	movl	$LC4, %edi
	movl	$0, %eax
	call	printf
	cmpl	$1, %eax
	je	L16
	call	abort
L16:
	movl	$LC3, %esi
	movl	$LC4, %edi
	movl	$0, %eax
	call	printf
	testl	%eax, %eax
	je	L17
	call	abort
L17:
	movl	$120, %edi
	call	putchar
	movl	$120, %esi
	movl	$LC5, %edi
	movl	$0, %eax
	call	printf
	cmpl	$1, %eax
	je	L18
	call	abort
L18:
	movl	$LC1, %edi
	call	puts
	movl	$LC1, %esi
	movl	$LC6, %edi
	movl	$0, %eax
	call	printf
	cmpl	$7, %eax
	je	L19
	call	abort
L19:
	movl	$0, %esi
	movl	$LC7, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %esi
	movl	$LC7, %edi
	movl	$0, %eax
	call	printf
	cmpl	$2, %eax
	je	L20
	call	abort
L20:
	movl	$0, %eax
	popq	%rbp
	ret
