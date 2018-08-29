    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcpy
strcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    nop
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	memcmp
memcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
    popq	%rbp
    ret
    .globl	__stack_chk_fail
__stack_chk_fail:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $-1, %rax
    jmp %rax
    
    nop
    popq	%rbp
    ret
    .globl	memset
memset:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memcpy
memcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	malloc
malloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	calloc
calloc:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movl	$1000, %eax
    popq	%rbp
    ret
    .globl	free
free:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	isprint
isprint:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$96, -4(%rbp)
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .comm	a,36,32
    .comm	b,36,32
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movq	%rdi, -56(%rbp)
    movl	%esi, -60(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	n2440(%rip), %eax
    addl	$1, %eax
    movl	%eax, n2440(%rip)
    movl	n2440(%rip), %eax
    movl	%eax, -48(%rbp)
    leaq	-48(%rbp), %rax
    addq	$4, %rax
    movl	$32, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movl	-60(%rbp), %eax
    movb	%al, -44(%rbp)
    movq	-56(%rbp), %rax
    movq	-48(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	-40(%rbp), %rdx
    movq	%rdx, 8(%rax)
    movq	-32(%rbp), %rdx
    movq	%rdx, 16(%rax)
    movq	-24(%rbp), %rdx
    movq	%rdx, 24(%rax)
    movl	-16(%rbp), %edx
    movl	%edx, 32(%rax)
    movq	-56(%rbp), %rax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L55
    call	__stack_chk_fail
L55:
    leave
    ret
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    nop
    popq	%rbp
    ret
    .globl	foo
foo:
    leaq	8(%rsp), %r10
    andq	$-32, %rsp
    pushq	-8(%r10)
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r10
    pushq	%rbx
    subq	$96, %rsp
    movq	%rdi, -40(%rbp)
    movl	%esi, -44(%rbp)
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    cmpl	$6, -44(%rbp)
    jne	L58
    leaq	-112(%rbp), %rax
    movl	$7, %esi
    movq	%rax, %rdi
    call	bar
    movq	-112(%rbp), %rax
    movq	%rax, a(%rip)
    movq	-104(%rbp), %rax
    movq	%rax, a + 8(%rip)
    movq	-96(%rbp), %rax
    movq	%rax, a + 16(%rip)
    movq	-88(%rbp), %rax
    movq	%rax, a + 24(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, a + 32(%rip)
    jmp	L59
L58:
    movq	-40(%rbp), %rbx
    leaq	-112(%rbp), %rax
    movl	$7, %esi
    movq	%rax, %rdi
    call	bar
    movq	-112(%rbp), %rax
    movq	%rax, (%rbx)
    movq	-104(%rbp), %rax
    movq	%rax, 8(%rbx)
    movq	-96(%rbp), %rax
    movq	%rax, 16(%rbx)
    movq	-88(%rbp), %rax
    movq	%rax, 24(%rbx)
    movl	-80(%rbp), %eax
    movl	%eax, 32(%rbx)
L59:
    call	baz
    nop
    movq	-24(%rbp), %rax
    xorq	$40, %rax
    je	L60
    call	__stack_chk_fail
L60:
    addq	$96, %rsp
    popq	%rbx
    popq	%r10
    popq	%rbp
    leaq	-8(%r10), %rsp
    ret
    .globl	main
.globl _start
_start:
    leaq	8(%rsp), %r10
    andq	$-32, %rsp
    pushq	-8(%r10)
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r10
    subq	$104, %rsp
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    leaq	-112(%rbp), %rax
    movl	$3, %esi
    movq	%rax, %rdi
    call	bar
    movq	-112(%rbp), %rax
    movq	%rax, a(%rip)
    movq	-104(%rbp), %rax
    movq	%rax, a + 8(%rip)
    movq	-96(%rbp), %rax
    movq	%rax, a + 16(%rip)
    movq	-88(%rbp), %rax
    movq	%rax, a + 24(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, a + 32(%rip)
    leaq	-112(%rbp), %rax
    movl	$4, %esi
    movq	%rax, %rdi
    call	bar
    movq	-112(%rbp), %rax
    movq	%rax, b(%rip)
    movq	-104(%rbp), %rax
    movq	%rax, b + 8(%rip)
    movq	-96(%rbp), %rax
    movq	%rax, b + 16(%rip)
    movq	-88(%rbp), %rax
    movq	%rax, b + 24(%rip)
    movl	-80(%rbp), %eax
    movl	%eax, b + 32(%rip)
    movl	a(%rip), %eax
    cmpl	$1, %eax
    jne	L62
    movzbl	a + 4(%rip), %eax
    cmpb	$3, %al
    jne	L62
    movl	b(%rip), %eax
    cmpl	$2, %eax
    jne	L62
    movzbl	b + 4(%rip), %eax
    cmpb	$4, %al
    je	L63
L62:
    call	abort
L63:
    movl	$0, %esi
    movl	$b, %edi
    call	foo
    movl	a(%rip), %eax
    cmpl	$1, %eax
    jne	L64
    movzbl	a + 4(%rip), %eax
    cmpb	$3, %al
    jne	L64
    movl	b(%rip), %eax
    cmpl	$3, %eax
    jne	L64
    movzbl	b + 4(%rip), %eax
    cmpb	$7, %al
    je	L65
L64:
    call	abort
L65:
    movl	$6, %esi
    movl	$b, %edi
    call	foo
    movl	a(%rip), %eax
    cmpl	$4, %eax
    jne	L66
    movzbl	a + 4(%rip), %eax
    cmpb	$7, %al
    jne	L66
    movl	b(%rip), %eax
    cmpl	$3, %eax
    jne	L66
    movzbl	b + 4(%rip), %eax
    cmpb	$7, %al
    je	L67
L66:
    call	abort
L67:
    movl	$0, %eax
    movq	-24(%rbp), %rdx
    xorq	$40, %rdx
    je	L69
    call	__stack_chk_fail
L69:
    addq	$104, %rsp
    popq	%r10
    popq	%rbp
    leaq	-8(%r10), %rsp
    ret
    .comm	n2440,4,4
