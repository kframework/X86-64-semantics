	.file	"pr63302.c"
	.text
	.globl	strchr
	.type	strchr, @function
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
	je	.L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L1
.L3:
	movq	-8(%rbp), %rax
	jmp	.L1
.L6:
.L1:
	popq	%rbp
	ret
	.size	strchr, .-strchr
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L15
.L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L17
.L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	ret
	.size	memcmp, .-memcmp
	.globl	exit
	.type	exit, @function
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
#APP
# 41 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	exit, .-exit
	.globl	abort
	.type	abort, @function
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 46 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	abort, .-abort
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	malloc
	.type	malloc, @function
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	malloc, .-malloc
	.globl	free
	.type	free, @function
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
	.size	free, .-free
	.globl	foo
	.type	foo, @function
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movabsq	$-9223372036854773761, %rax
	andq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	andb	$255, %ah
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	orq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L33
	movabsq	$-9223372036854775808, %rax
	movq	$-1, %rdx
	movq	%rdx, %rcx
	xorq	-8(%rbp), %rcx
	xorq	-16(%rbp), %rax
	orq	%rcx, %rax
	testq	%rax, %rax
	jne	.L34
.L33:
	movl	$1, %eax
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	popq	%rbp
	ret
	.size	foo, .-foo
	.globl	bar
	.type	bar, @function
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$-2147481601, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L38
	cmpq	$-2147483648, -8(%rbp)
	jne	.L39
.L38:
	movl	$1, %eax
	jmp	.L40
.L39:
	movl	$0, %eax
.L40:
	popq	%rbp
	ret
	.size	bar, .-bar
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	cmpl	$1, %eax
	jne	.L43
	movl	$1, %edx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	jne	.L43
	movl	$2048, %edx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	cmpl	$1, %eax
	jne	.L43
	movl	$2049, %edx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	jne	.L43
	movabsq	$-9223372036854775808, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	jne	.L43
	movabsq	$-9223372036854775808, %rdx
	movq	$-1, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	cmpl	$1, %eax
	jne	.L43
	movabsq	$-9223372036854775807, %rdx
	movq	$-1, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	jne	.L43
	movabsq	$-9223372036854773760, %rdx
	movq	$-1, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	cmpl	$1, %eax
	jne	.L43
	movabsq	$-9223372036854773759, %rdx
	movq	$-1, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	foo
	testl	%eax, %eax
	je	.L44
.L43:
	call	abort
.L44:
	movl	$0, %edi
	call	bar
	cmpl	$1, %eax
	jne	.L45
	movl	$1, %edi
	call	bar
	testl	%eax, %eax
	jne	.L45
	movl	$2048, %edi
	call	bar
	cmpl	$1, %eax
	jne	.L45
	movl	$2049, %edi
	call	bar
	testl	%eax, %eax
	jne	.L45
	movl	$2147483648, %edi
	call	bar
	testl	%eax, %eax
	jne	.L45
	movq	$-2147483648, %rdi
	call	bar
	cmpl	$1, %eax
	jne	.L45
	movq	$-2147483647, %rdi
	call	bar
	testl	%eax, %eax
	jne	.L45
	movq	$-2147481600, %rdi
	call	bar
	cmpl	$1, %eax
	jne	.L45
	movq	$-2147481599, %rdi
	call	bar
	testl	%eax, %eax
	je	.L46
.L45:
	call	abort
.L46:
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
