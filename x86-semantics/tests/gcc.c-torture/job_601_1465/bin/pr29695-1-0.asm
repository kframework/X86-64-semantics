	.file	"pr29695-1.c"
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
	.globl	f1
	.type	f1, @function
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$128, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$128, %eax
	popq	%rbp
	ret
	.size	f1, .-f1
	.globl	f2
	.type	f2, @function
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$-128, -1(%rbp)
	movzbl	-1(%rbp), %eax
	andl	$128, %eax
	popq	%rbp
	ret
	.size	f2, .-f2
	.globl	f3
	.type	f3, @function
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$-128, -1(%rbp)
	movzbl	-1(%rbp), %eax
	testb	%al, %al
	jns	.L37
	movl	$896, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	popq	%rbp
	ret
	.size	f3, .-f3
	.globl	f4
	.type	f4, @function
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$-128, -1(%rbp)
	movzbl	-1(%rbp), %eax
	andl	$-128, %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
	.size	f4, .-f4
	.globl	f5
	.type	f5, @function
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2147483648, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	popq	%rbp
	ret
	.size	f5, .-f5
	.globl	f6
	.type	f6, @function
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2147483648, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$2147483648, %eax
	popq	%rbp
	ret
	.size	f6, .-f6
	.globl	f7
	.type	f7, @function
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2147483648, -4(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jns	.L47
	movabsq	$15032385536, %rax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	popq	%rbp
	ret
	.size	f7, .-f7
	.globl	f8
	.type	f8, @function
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2147483648, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$-2147483648, %eax
	cltq
	popq	%rbp
	ret
	.size	f8, .-f8
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	call	f1
	cmpl	$128, %eax
	je	.L53
	call	abort
.L53:
	call	f2
	cmpl	$128, %eax
	je	.L54
	call	abort
.L54:
	call	f3
	cmpl	$896, %eax
	je	.L55
	call	abort
.L55:
	call	f4
	cmpl	$-128, %eax
	je	.L56
	call	abort
.L56:
	call	f5
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	je	.L57
	call	abort
.L57:
	call	f6
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	je	.L58
	call	abort
.L58:
	call	f7
	movabsq	$15032385536, %rdx
	cmpq	%rdx, %rax
	je	.L59
	call	abort
.L59:
	call	f8
	cmpq	$-2147483648, %rax
	je	.L60
	call	abort
.L60:
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
