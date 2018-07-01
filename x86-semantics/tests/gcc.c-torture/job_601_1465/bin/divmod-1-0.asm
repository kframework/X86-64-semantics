	.file	"divmod-1.c"
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
	.globl	div1
	.type	div1, @function
div1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	negl	%eax
	popq	%rbp
	ret
	.size	div1, .-div1
	.globl	div2
	.type	div2, @function
div2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movswl	-4(%rbp), %eax
	negl	%eax
	popq	%rbp
	ret
	.size	div2, .-div2
	.globl	div3
	.type	div3, @function
div3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -4(%rbp)
	movb	%al, -8(%rbp)
	movsbl	-4(%rbp), %eax
	movsbl	-8(%rbp), %ecx
	cltd
	idivl	%ecx
	popq	%rbp
	ret
	.size	div3, .-div3
	.globl	div4
	.type	div4, @function
div4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	movswl	-4(%rbp), %eax
	movswl	-8(%rbp), %ecx
	cltd
	idivl	%ecx
	popq	%rbp
	ret
	.size	div4, .-div4
	.globl	mod1
	.type	mod1, @function
mod1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	mod1, .-mod1
	.globl	mod2
	.type	mod2, @function
mod2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	mod2, .-mod2
	.globl	mod3
	.type	mod3, @function
mod3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -4(%rbp)
	movb	%al, -8(%rbp)
	movsbl	-4(%rbp), %eax
	movsbl	-8(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	popq	%rbp
	ret
	.size	mod3, .-mod3
	.globl	mod4
	.type	mod4, @function
mod4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, -4(%rbp)
	movw	%ax, -8(%rbp)
	movswl	-4(%rbp), %eax
	movswl	-8(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	popq	%rbp
	ret
	.size	mod4, .-mod4
	.globl	mod5
	.type	mod5, @function
mod5:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cqto
	idivq	-16(%rbp)
	movq	%rdx, %rax
	popq	%rbp
	ret
	.size	mod5, .-mod5
	.globl	mod6
	.type	mod6, @function
mod6:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rdx, %rax
	popq	%rbp
	ret
	.size	mod6, .-mod6
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-128, %edi
	call	div1
	cmpl	$128, %eax
	je	.L53
	call	abort
.L53:
	movl	$-32768, %edi
	call	div2
	cmpl	$32768, %eax
	je	.L54
	call	abort
.L54:
	movl	$-1, %esi
	movl	$-128, %edi
	call	div3
	cmpl	$128, %eax
	je	.L55
	call	abort
.L55:
	movl	$-1, %esi
	movl	$-32768, %edi
	call	div4
	cmpl	$32768, %eax
	je	.L56
	call	abort
.L56:
	movl	$-128, %edi
	call	mod1
	testl	%eax, %eax
	je	.L57
	call	abort
.L57:
	movl	$-32768, %edi
	call	mod2
	testl	%eax, %eax
	je	.L58
	call	abort
.L58:
	movl	$-1, %esi
	movl	$-128, %edi
	call	mod3
	testl	%eax, %eax
	je	.L59
	call	abort
.L59:
	movl	$-1, %esi
	movl	$-32768, %edi
	call	mod4
	testl	%eax, %eax
	je	.L60
	call	abort
.L60:
	movl	$2, %esi
	movl	$1342177280, %edi
	call	mod5
	testq	%rax, %rax
	je	.L61
	call	abort
.L61:
	movl	$2, %esi
	movl	$1342177280, %edi
	call	mod6
	testq	%rax, %rax
	je	.L62
	call	abort
.L62:
	movl	$0, %edi
	call	exit
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.0"
	.section	.note.GNU-stack,"",@progbits
