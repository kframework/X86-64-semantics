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
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movq	-8(%rbp), %rax
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
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
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
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
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
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-24(%rbp), %rax
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
    .comm	a,1024,32
    .comm	b,4,4
    .comm	c,1,1
    .comm	d,4,4
    .data
f:
    .quad	d
    .comm	e,8,8
    .text
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-8(%rbp), %rax
    cqto
    idivq	-16(%rbp)
    popq	%rbp
    ret
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, %edx
    movl	%esi, %eax
    movb	%dl, -4(%rbp)
    movb	%al, -8(%rbp)
    movzbl	-4(%rbp), %edx
    movzbl	-8(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
    popq	%rbp
    ret
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movq	f(%rip), %rdx
    movl	-8(%rbp), %eax
    movl	%eax, %ecx
    movl	%ecx, %eax
    addl	%eax, %eax
    addl	%ecx, %eax
    cwtl
    cmpl	-8(%rbp), %eax
    setne	%al
    movzbl	%al, %eax
    movl	%eax, (%rdx)
    movb	$0, c(%rip)
    jmp	L58
L59:
    movl	d(%rip), %eax
    testl	%eax, %eax
    je	L60
    movq	e(%rip), %rax
    testq	%rax, %rax
    je	L61
    movq	$1, e(%rip)
    jmp	L64
L61:
    movl	-4(%rbp), %eax
    jmp	L63
L60:
    movl	$1, d(%rip)
    jmp	L59
L64:
    movq	$d, f(%rip)
    movzbl	c(%rip), %eax
    addl	$1, %eax
    movb	%al, c(%rip)
L58:
    movzbl	c(%rip), %eax
    cmpb	$1, %al
    jle	L59
    movl	-4(%rbp), %eax
L63:
    popq	%rbp
    ret
fnx:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    cmpl	$0, -12(%rbp)
    jne	L67
    movl	b(%rip), %eax
    andl	$1, %eax
    movl	%eax, %eax
    movl	a(,%rax,4), %eax
    movl	%eax, b(%rip)
    movl	b(%rip), %eax
    andl	$1, %eax
    movl	%eax, %eax
    movl	a(,%rax,4), %eax
    movl	%eax, b(%rip)
    movl	b(%rip), %eax
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    andl	$1, %eax
    xorq	%rdx, %rax
    andl	$1, %eax
    movl	a(,%rax,4), %eax
    movl	%eax, b(%rip)
    movl	b(%rip), %eax
    movl	%eax, %edx
    movq	-8(%rbp), %rax
    andl	$1, %eax
    xorq	%rdx, %rax
    andl	$1, %eax
    movl	a(,%rax,4), %eax
    movl	%eax, b(%rip)
L67:
    nop
    popq	%rbp
    ret
    .globl	w
    .section	.rodata
LC0:
    .string	"2"
    .data
w:
    .quad	LC0
    .section	.rodata
LC1:
    .string	"1"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$0, -64(%rbp)
    movl	$0, -60(%rbp)
    movq	w(%rip), %rax
    movq	%rax, %rdx
    movl	$LC1, %eax
    movl	$2, %ecx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    repz cmpsb
    seta	%dl
    setb	%al
    subl	%eax, %edx
    movl	%edx, %eax
    movsbl	%al, %eax
    testl	%eax, %eax
    jne	L69
    movl	$1, -64(%rbp)
L69:
    movl	$0, -56(%rbp)
    jmp	L70
L73:
    movl	$8, -52(%rbp)
    jmp	L71
L72:
    movl	$1, -60(%rbp)
    subl	$1, -52(%rbp)
L71:
    cmpl	$0, -52(%rbp)
    jg	L72
    movl	-56(%rbp), %eax
    cltq
    movl	-60(%rbp), %edx
    movl	%edx, a(,%rax,4)
    addl	$1, -56(%rbp)
L70:
    cmpl	$255, -56(%rbp)
    jle	L73
    movl	$0, -56(%rbp)
    jmp	L74
L75:
    movl	-56(%rbp), %eax
    cltq
    movl	$0, -48(%rbp,%rax,4)
    addl	$1, -56(%rbp)
L74:
    cmpl	$7, -56(%rbp)
    jle	L75
    movzbl	c(%rip), %eax
    movsbl	%al, %edx
    movzbl	c(%rip), %eax
    movsbl	%al, %eax
    movl	%edx, %esi
    movl	%eax, %edi
    call	bar
    movsbl	%al, %eax
    movl	%eax, d(%rip)
    movl	-48(%rbp), %eax
    cltq
    movl	$10, %esi
    movq	%rax, %rdi
    call	foo
    orl	$1, %eax
    movswl	%ax, %edx
    movzbl	c(%rip), %eax
    movsbl	%al, %eax
    movl	%edx, %esi
    movl	%eax, %edi
    call	baz
    movl	%eax, d(%rip)
    movl	d(%rip), %eax
    cltq
    movl	-64(%rbp), %edx
    movl	%edx, %esi
    movq	%rax, %rdi
    call	fnx
    movq	e(%rip), %rax
    movq	%rax, %rdx
    movl	-64(%rbp), %eax
    movl	%eax, %esi
    movq	%rdx, %rdi
    call	fnx
    movl	d(%rip), %eax
    testl	%eax, %eax
    je	L76
    call	abort
L76:
    movl	$0, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L78
    call	__stack_chk_fail
L78:
    leave
    ret
