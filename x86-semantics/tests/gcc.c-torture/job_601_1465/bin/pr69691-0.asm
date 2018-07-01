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
	jne	L10
	cmpl	$96, -4(%rbp)
	jne	L11
L10:
	movl	-4(%rbp), %eax
	jmp	L13
L11:
	call	abort
L13:
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
	jne	L15
	call	abort
L15:
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fn
	cmpl	$95, %eax
	jle	L16
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fn
	cmpl	$122, %eax
	jg	L16
	movsbl	-4(%rbp), %eax
	movl	%eax, %edi
	call	fn
	subl	$96, %eax
	jmp	L17
L16:
	cmpb	$46, -4(%rbp)
	jne	L18
	movl	$0, %eax
	jmp	L17
L18:
	movsbl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$-1, %eax
L17:
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
	jmp	L20
L29:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-560(%rbp), %rax
	movq	%rax, -16(%rbp)
L28:
	movq	-16(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	L21
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
L21:
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
	movq	$0, (%rax)
	movw	$0, 8(%rax)
	movl	$0, -20(%rbp)
	jmp	L22
L26:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -45(%rbp)
	cmpb	$47, -45(%rbp)
	jle	L23
	cmpb	$57, -45(%rbp)
	jg	L23
	movzbl	-45(%rbp), %eax
	subl	$48, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	cltq
	movb	%dl, -576(%rbp,%rax)
	jmp	L24
L23:
	movsbl	-45(%rbp), %eax
	movl	%eax, %edi
	call	foo
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movq	16(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	L25
	movq	r2(%rip), %rax
	leaq	264(%rax), %rdx
	movq	%rdx, r2(%rip)
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rax, 16(%rdx,%rcx,8)
	movq	r2(%rip), %rax
	cmpq	$r+1848, %rax
	jne	L25
	call	abort
L25:
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movq	16(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -24(%rbp)
L24:
	addl	$1, -20(%rbp)
L22:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L26
	movq	-32(%rbp), %rax
	movq	-576(%rbp), %rdx
	movq	%rdx, (%rax)
	movzwl	-568(%rbp), %edx
	movw	%dx, 8(%rax)
	cmpq	$0, -40(%rbp)
	je	L27
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
L27:
	cmpq	$0, -40(%rbp)
	jne	L28
	addq	$8, -8(%rbp)
L20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	L29
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
	jmp	L31
L34:
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
	jg	L32
	jmp	L30
L32:
	addl	$1, -20(%rbp)
L31:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L34
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
	jne	L35
	jmp	L30
L35:
	movl	$0, -20(%rbp)
	jmp	L36
L44:
	movq	w(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	L37
L43:
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
	jne	L38
	jmp	L39
L38:
	movl	$0, -28(%rbp)
	jmp	L40
L42:
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
	jle	L41
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	cltq
	movzbl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	movb	%dl, -656(%rbp,%rax)
L41:
	addl	$1, -28(%rbp)
L40:
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$2, %eax
	cmpl	-28(%rbp), %eax
	jge	L42
	addl	$1, -24(%rbp)
L37:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L43
L39:
	addl	$1, -20(%rbp)
L36:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	L44
	movl	$3, -20(%rbp)
	jmp	L45
L47:
	movl	-20(%rbp), %eax
	cltq
	movzbl	-656(%rbp,%rax), %eax
	movsbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L46
L46:
	addl	$1, -20(%rbp)
L45:
	movl	-44(%rbp), %eax
	subl	$2, %eax
	cmpl	-20(%rbp), %eax
	jg	L47
L30:
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
