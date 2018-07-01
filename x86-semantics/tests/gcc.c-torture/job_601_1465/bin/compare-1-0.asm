	.file	"compare-1.c"
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
	.globl	ieq
	.type	ieq, @function
ieq:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L33
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L33
	cmpl	$0, -12(%rbp)
	jne	.L34
	call	abort
.L34:
	jmp	.L35
.L33:
	cmpl	$0, -12(%rbp)
	je	.L35
	call	abort
.L35:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L36
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L36
	cmpl	$0, -12(%rbp)
	jne	.L37
	call	abort
.L37:
	jmp	.L38
.L36:
	cmpl	$0, -12(%rbp)
	je	.L38
	call	abort
.L38:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L39
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L39
	cmpl	$0, -12(%rbp)
	jne	.L40
	call	abort
.L40:
	jmp	.L41
.L39:
	cmpl	$0, -12(%rbp)
	je	.L41
	call	abort
.L41:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L42
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L42
	cmpl	$0, -12(%rbp)
	jne	.L43
	call	abort
.L43:
	jmp	.L44
.L42:
	cmpl	$0, -12(%rbp)
	je	.L44
	call	abort
.L44:
	leave
	ret
	.size	ieq, .-ieq
	.globl	ine
	.type	ine, @function
ine:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L46
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L47
.L46:
	cmpl	$0, -12(%rbp)
	jne	.L48
	call	abort
.L48:
	jmp	.L49
.L47:
	cmpl	$0, -12(%rbp)
	je	.L49
	call	abort
.L49:
	leave
	ret
	.size	ine, .-ine
	.globl	ilt
	.type	ilt, @function
ilt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L51
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	.L51
	cmpl	$0, -12(%rbp)
	jne	.L52
	call	abort
.L52:
	jmp	.L53
.L51:
	cmpl	$0, -12(%rbp)
	je	.L53
	call	abort
.L53:
	leave
	ret
	.size	ilt, .-ilt
	.globl	ile
	.type	ile, @function
ile:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L55
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L56
.L55:
	cmpl	$0, -12(%rbp)
	jne	.L57
	call	abort
.L57:
	jmp	.L58
.L56:
	cmpl	$0, -12(%rbp)
	je	.L58
	call	abort
.L58:
	leave
	ret
	.size	ile, .-ile
	.globl	igt
	.type	igt, @function
igt:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L60
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	je	.L60
	cmpl	$0, -12(%rbp)
	jne	.L61
	call	abort
.L61:
	jmp	.L62
.L60:
	cmpl	$0, -12(%rbp)
	je	.L62
	call	abort
.L62:
	leave
	ret
	.size	igt, .-igt
	.globl	ige
	.type	ige, @function
ige:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.L64
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L65
.L64:
	cmpl	$0, -12(%rbp)
	jne	.L66
	call	abort
.L66:
	jmp	.L67
.L65:
	cmpl	$0, -12(%rbp)
	je	.L67
	call	abort
.L67:
	leave
	ret
	.size	ige, .-ige
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ieq
	movl	$1, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ieq
	movl	$0, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ieq
	movl	$1, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ine
	movl	$0, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ine
	movl	$1, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ine
	movl	$1, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ilt
	movl	$0, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ilt
	movl	$0, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ilt
	movl	$1, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ile
	movl	$1, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ile
	movl	$0, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ile
	movl	$0, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	igt
	movl	$0, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	igt
	movl	$1, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	igt
	movl	$0, %edx
	movl	$4, %esi
	movl	$1, %edi
	call	ige
	movl	$1, %edx
	movl	$3, %esi
	movl	$3, %edi
	call	ige
	movl	$1, %edx
	movl	$2, %esi
	movl	$5, %edi
	call	ige
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
