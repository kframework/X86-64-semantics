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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
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
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
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
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
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
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
FFmul:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
DUPFFdeg:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	ret
DUPFFnew:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	$16, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	cmpl	$0, -20(%rbp)
	js	L44
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
L44:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-8(%rbp), %rax
	leave
	ret
DUPFFfree:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
DUPFFswap:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	ret
DUPFFcopy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
DUPFFshift_add:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	popq	%rbp
	ret
LC0:
	.string	"DUPFFexgcd called on degrees %d and %d\n"
DUPFFexgcd:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, %ebx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%ebx, %edx
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, %ebx
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	cmpl	%eax, %ebx
	jge	L52
	movq	-136(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFexgcd
	jmp	L53
L52:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	cmpl	$2, %eax
	jne	L54
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	cmpl	$1, %eax
	je	L55
L54:
	call	abort
L55:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	L56
	movq	-136(%rbp), %rax
	jmp	L53
L56:
	movl	$2, -28(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	L57
	movl	$0, -20(%rbp)
L57:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	L58
	movl	$0, -24(%rbp)
L58:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFcopy
	movq	%rax, -40(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFcopy
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	DUPFFnew
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, 4(%rax)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	DUPFFnew
	movq	%rax, -64(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	DUPFFnew
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	DUPFFnew
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, (%rax)
	movq	-80(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	L59
L62:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$1, %edi
	call	FFmul
	movl	%eax, -88(%rbp)
	jmp	L60
L61:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -96(%rbp)
	movl	-88(%rbp), %edx
	movl	-96(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	FFmul
	movl	%eax, -100(%rbp)
	movl	-28(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, %ecx
	movl	-92(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFshift_add
	movl	-28(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, %ecx
	movl	-92(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFshift_add
	movl	-28(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, %ecx
	movl	-92(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFshift_add
L60:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	cmpl	-84(%rbp), %eax
	jge	L61
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
L59:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	testl	%eax, %eax
	jg	L62
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	testl	%eax, %eax
	jne	L63
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DUPFFswap
L63:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFfree
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFfree
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFfree
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-128(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
L53:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
LC1:
	.string	"calling DUPFFexgcd on degrees %d and %d\n"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movl	$1, %edi
	call	DUPFFnew
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	$4, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$2, %edi
	call	DUPFFnew
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movl	$2, 4(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFdeg
	movl	%ebx, %edx
	movl	%eax, %esi
	movl	$LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	DUPFFexgcd
	movq	%rax, -40(%rbp)
	movl	$0, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
