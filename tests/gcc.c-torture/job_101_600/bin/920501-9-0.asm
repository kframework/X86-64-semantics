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
proc1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	popq	%rbp
	ret
proc2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$305419896, %eax
	popq	%rbp
	ret
proc3:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$-6144092016751651208, %rax
	popq	%rbp
	ret
proc4:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$-1, %rax
	popq	%rbp
	ret
proc5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2864434397, %eax
	popq	%rbp
	ret
LC0:
	.string	"%lx%08.lx"
LC1:
	.string	"%lx"
print_longlong:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L20
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	jmp	L21
L20:
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	$LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
L21:
	leave
	ret
LC2:
	.string	"1"
LC3:
	.string	"12345678"
LC4:
	.string	"aabbccdd12345678"
LC5:
	.string	"ffffffffffffffff"
LC6:
	.string	"aabbccdd"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	$0, %eax
	call	proc1
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	print_longlong
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC2, %edi
	call	strcmp
	testl	%eax, %eax
	je	L23
	call	abort
L23:
	movl	$0, %eax
	call	proc2
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	print_longlong
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC3, %edi
	call	strcmp
	testl	%eax, %eax
	je	L24
	call	abort
L24:
	movl	$0, %eax
	call	proc3
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	print_longlong
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC4, %edi
	call	strcmp
	testl	%eax, %eax
	je	L25
	call	abort
L25:
	movl	$0, %eax
	call	proc4
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	print_longlong
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC5, %edi
	call	strcmp
	testl	%eax, %eax
	je	L26
	call	abort
L26:
	movl	$0, %eax
	call	proc5
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	print_longlong
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$LC6, %edi
	call	strcmp
	testl	%eax, %eax
	je	L27
	call	abort
L27:
	movl	$0, %edi
	call	exit
