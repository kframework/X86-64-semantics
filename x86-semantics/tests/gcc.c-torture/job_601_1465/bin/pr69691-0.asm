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
u:
	.byte	46
	.byte	97
	.byte	99
	.byte	104
	.byte	52
	.byte	0
v:
	.quad	u
	.quad	0
	.comm	r,1848,64
r2:
	.quad	r
	.local	w
	.comm	w,8,8
fn:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$u, %edi
	call	strchr
	testq	%rax, %rax
	jne	L40
	cmpl	$96, -4(%rbp)
	jne	L41
L40:
	movl	-4(%rbp), %eax
	jmp	L43
L41:
	call	abort
L43:
	leave
	ret
LC0:
	.string	"foo %d\n"
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$0, -4(%rbp)
	jne	L45
	call	abort
L45:
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fn
	cmpl	$95, %eax
	jle	L46
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fn
	cmpl	$122, %eax
	jg	L46
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fn
	subl	$96, %eax
	jmp	L47
L46:
	cmpb	$46, -4(%rbp)
	jne	L48
	movl	$0, %eax
	jmp	L47
L48:
	movsbl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$-1, %eax
L47:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$592, %rsp
	movq	%rdi, -584(%rbp)
	movq	r2(%rip), %rax
	leaq	264(%rax), %rdx
	movq	%rdx, r2(%rip)
	movq	%rax, w(%rip)
	movq	-584(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L50
L59:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-560(%rbp), %rax
	movq	%rax, -16(%rbp)
L58:
	movq	-16(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	L51
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
L51:
	movq	-16(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	movl	%eax, -44(%rbp)
	movl	$0, -24(%rbp)
	movq	w(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-576(%rbp), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	$0, -20(%rbp)
	jmp	L52
L56:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -45(%rbp)
	cmpb	$47, -45(%rbp)
	jle	L53
	cmpb	$57, -45(%rbp)
	jg	L53
	movzbl	-45(%rbp), %eax
	subl	$48, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	cltq
	movb	%dl, -576(%rbp,%rax)
	jmp	L54
L53:
	movsbl	-45(%rbp), %eax
	movl	%eax, %edi
	call	foo
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movq	16(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	L55
	movq	r2(%rip), %rax
	leaq	264(%rax), %rdx
	movq	%rdx, r2(%rip)
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rax, 16(%rdx,%rcx,8)
	movq	r2(%rip), %rax
	cmpq	$r+1848, %rax
	jne	L55
	call	abort
L55:
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movq	16(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -24(%rbp)
L54:
	addl	$1, -20(%rbp)
L52:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L56
	movq	-32(%rbp), %rax
	movq	-576(%rbp), %rdx
	movq	%rdx, (%rax)
	movzwl	-568(%rbp), %edx
	movw	%dx, 8(%rax)
	cmpq	$0, -40(%rbp)
	je	L57
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
L57:
	cmpq	$0, -40(%rbp)
	jne	L58
	addq	$8, -8(%rbp)
L50:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L59
	leave
	ret
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$664, %rsp
	movq	%rdi, -664(%rbp)
	movq	-664(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	movl	%eax, -44(%rbp)
	movb	$96, -352(%rbp)
	movl	$0, -20(%rbp)
	jmp	L61
L64:
	movl	-20(%rbp), %eax
	leal	1(%rax), %ebx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-664(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	fn
	movl	%eax, %edx
	movslq	%ebx, %rax
	movb	%dl, -352(%rbp,%rax)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	movzbl	-352(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	foo
	testl	%eax, %eax
	jg	L62
	jmp	L60
L62:
	addl	$1, -20(%rbp)
L61:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L64
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cltq
	movb	$96, -352(%rbp,%rax)
	addl	$2, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	leaq	-656(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	w(%rip), %rax
	testq	%rax, %rax
	jne	L65
	jmp	L60
L65:
	movl	$0, -20(%rbp)
	jmp	L66
L74:
	movq	w(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	L67
L73:
	movl	-24(%rbp), %eax
	cltq
	movzbl	-352(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	foo
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movslq	%edx, %rdx
	movq	16(%rax,%rdx,8), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	L68
	jmp	L69
L68:
	movl	$0, -28(%rbp)
	jmp	L70
L72:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %edx
	movl	-20(%rbp), %ecx
	movl	-28(%rbp), %eax
	addl	%ecx, %eax
	cltq
	movzbl	-656(%rbp,%rax), %eax
	cmpb	%al, %dl
	jle	L71
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	movb	%dl, -656(%rbp,%rax)
L71:
	addl	$1, -28(%rbp)
L70:
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$2, %eax
	cmpl	-28(%rbp), %eax
	jge	L72
	addl	$1, -24(%rbp)
L67:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L73
L69:
	addl	$1, -20(%rbp)
L66:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L74
	movl	$3, -20(%rbp)
	jmp	L75
L77:
	movl	-20(%rbp), %eax
	cltq
	movzbl	-656(%rbp,%rax), %eax
	movsbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L76
L76:
	addl	$1, -20(%rbp)
L75:
	movl	-44(%rbp), %eax
	subl	$2, %eax
	cmpl	-20(%rbp), %eax
	jg	L77
L60:
	addq	$664, %rsp
	popq	%rbx
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$v, %edi
	call	bar
	movb	$97, -16(%rbp)
	movb	$97, -15(%rbp)
	movb	$97, -14(%rbp)
	movb	$97, -13(%rbp)
	movb	$97, -12(%rbp)
	movb	$0, -11(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	baz
	movl	$0, %eax
	leave
	ret
