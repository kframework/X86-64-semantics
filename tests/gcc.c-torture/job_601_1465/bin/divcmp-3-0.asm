	.file	"divcmp-3.c"
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
	.globl	test1
	.type	test1, @function
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	test1, .-test1
	.globl	test1u
	.type	test1u, @function
test1u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	test1u, .-test1u
	.globl	test2
	.type	test2, @function
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$1, %eax
	popq	%rbp
	ret
	.size	test2, .-test2
	.globl	test2u
	.type	test2u, @function
test2u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$1, %eax
	popq	%rbp
	ret
	.size	test2u, .-test2u
	.globl	test3
	.type	test3, @function
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$1, %eax
	popq	%rbp
	ret
	.size	test3, .-test3
	.globl	test3u
	.type	test3u, @function
test3u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$1, %eax
	popq	%rbp
	ret
	.size	test3u, .-test3u
	.globl	test4
	.type	test4, @function
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$1, %eax
	popq	%rbp
	ret
	.size	test4, .-test4
	.globl	test4u
	.type	test4u, @function
test4u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$1, %eax
	popq	%rbp
	ret
	.size	test4u, .-test4u
	.globl	test5
	.type	test5, @function
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	test5, .-test5
	.globl	test5u
	.type	test5u, @function
test5u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	test5u, .-test5u
	.globl	test6
	.type	test6, @function
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	test6, .-test6
	.globl	test6u
	.type	test6u, @function
test6u:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	test6u, .-test6u
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$-128, -4(%rbp)
	jmp	.L57
.L70:
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	test1
	testl	%eax, %eax
	je	.L58
	call	abort
.L58:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	test1u
	testl	%eax, %eax
	je	.L59
	call	abort
.L59:
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	test2
	cmpl	$1, %eax
	je	.L60
	call	abort
.L60:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	test2u
	cmpl	$1, %eax
	je	.L61
	call	abort
.L61:
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	test3
	cmpl	$1, %eax
	je	.L62
	call	abort
.L62:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	test3u
	cmpl	$1, %eax
	je	.L63
	call	abort
.L63:
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	test4
	cmpl	$1, %eax
	je	.L64
	call	abort
.L64:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	test4u
	cmpl	$1, %eax
	je	.L65
	call	abort
.L65:
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	test5
	testl	%eax, %eax
	je	.L66
	call	abort
.L66:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	test5u
	testl	%eax, %eax
	je	.L67
	call	abort
.L67:
	movl	-4(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	test6
	testl	%eax, %eax
	je	.L68
	call	abort
.L68:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	test6u
	testl	%eax, %eax
	je	.L69
	call	abort
.L69:
	addl	$1, -4(%rbp)
.L57:
	cmpl	$255, -4(%rbp)
	jle	.L70
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
