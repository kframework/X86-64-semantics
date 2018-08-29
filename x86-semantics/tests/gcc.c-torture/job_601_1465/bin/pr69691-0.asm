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
    .globl	u
    .data
u:
    .byte	46
    .byte	97
    .byte	99
    .byte	104
    .byte	52
    .byte	0
    .globl	v
v:
    .quad	u
    .quad	0
    .comm	r,1848,32
    .globl	r2
r2:
    .quad	r
    .comm	w,8,8
    .text
    .globl	fn
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
    jne	L54
    cmpl	$96, -4(%rbp)
    jne	L55
L54:
    movl	-4(%rbp), %eax
    jmp	L57
L55:
    call	abort
L57:
    leave
    ret
    .section	.rodata
LC0:
    .string	"foo %d\n"
    .text
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	%edi, %eax
    movb	%al, -4(%rbp)
    cmpb	$0, -4(%rbp)
    jne	L59
    call	abort
L59:
    movsbl	-4(%rbp), %eax
    movl	%eax, %edi
    call	fn
    cmpl	$95, %eax
    jle	L60
    movsbl	-4(%rbp), %eax
    movl	%eax, %edi
    call	fn
    cmpl	$122, %eax
    jg	L60
    movsbl	-4(%rbp), %eax
    movl	%eax, %edi
    call	fn
    subl	$96, %eax
    jmp	L61
L60:
    cmpb	$46, -4(%rbp)
    jne	L62
    movl	$0, %eax
    jmp	L61
L62:
    movsbl	-4(%rbp), %eax
    movl	%eax, %esi
    movl	$LC0, %edi
    movl	$0, %eax
    call	printf
    movl	$-1, %eax
L61:
    leave
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$608, %rsp
    movq	%rdi, -600(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	r2(%rip), %rax
    leaq	264(%rax), %rdx
    movq	%rdx, r2(%rip)
    movq	%rax, w(%rip)
    movq	-600(%rbp), %rax
    movq	%rax, -560(%rbp)
    jmp	L64
L73:
    movq	-560(%rbp), %rax
    movq	(%rax), %rdx
    leaq	-512(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-512(%rbp), %rax
    movq	%rax, -552(%rbp)
L72:
    movq	-552(%rbp), %rax
    movl	$32, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, -536(%rbp)
    cmpq	$0, -536(%rbp)
    je	L65
    movq	-536(%rbp), %rax
    movb	$0, (%rax)
L65:
    movq	-552(%rbp), %rax
    movq	$-1, %rcx
    movq	%rax, %rdx
    movl	$0, %eax
    movq	%rdx, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    movl	%eax, -568(%rbp)
    movl	$0, -572(%rbp)
    movq	w(%rip), %rax
    movq	%rax, -544(%rbp)
    leaq	-528(%rbp), %rax
    movl	$10, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movl	$0, -576(%rbp)
    jmp	L66
L70:
    movl	-576(%rbp), %eax
    movslq	%eax, %rdx
    movq	-552(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    movb	%al, -577(%rbp)
    cmpb	$47, -577(%rbp)
    jle	L67
    cmpb	$57, -577(%rbp)
    jg	L67
    movzbl	-577(%rbp), %eax
    subl	$48, %eax
    movl	%eax, %edx
    movl	-572(%rbp), %eax
    cltq
    movb	%dl, -528(%rbp,%rax)
    jmp	L68
L67:
    movsbl	-577(%rbp), %eax
    movl	%eax, %edi
    call	foo
    movl	%eax, -564(%rbp)
    movq	-544(%rbp), %rax
    movl	-564(%rbp), %edx
    movslq	%edx, %rdx
    movq	16(%rax,%rdx,8), %rax
    testq	%rax, %rax
    jne	L69
    movq	r2(%rip), %rax
    leaq	264(%rax), %rdx
    movq	%rdx, r2(%rip)
    movq	-544(%rbp), %rdx
    movl	-564(%rbp), %ecx
    movslq	%ecx, %rcx
    movq	%rax, 16(%rdx,%rcx,8)
    movq	r2(%rip), %rax
    cmpq	$r + 1848, %rax
    jne	L69
    call	abort
L69:
    movq	-544(%rbp), %rax
    movl	-564(%rbp), %edx
    movslq	%edx, %rdx
    movq	16(%rax,%rdx,8), %rax
    movq	%rax, -544(%rbp)
    addl	$1, -572(%rbp)
L68:
    addl	$1, -576(%rbp)
L66:
    movl	-576(%rbp), %eax
    cmpl	-568(%rbp), %eax
    jl	L70
    movq	-544(%rbp), %rax
    movq	-528(%rbp), %rdx
    movq	%rdx, (%rax)
    movzwl	-520(%rbp), %edx
    movw	%dx, 8(%rax)
    cmpq	$0, -536(%rbp)
    je	L71
    movq	-536(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -552(%rbp)
L71:
    cmpq	$0, -536(%rbp)
    jne	L72
    addq	$8, -560(%rbp)
L64:
    movq	-560(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L73
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L74
    call	__stack_chk_fail
L74:
    leave
    ret
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$680, %rsp
    movq	%rdi, -680(%rbp)
    movq	$40, %rax
    movq	%rax, -24(%rbp)
    xorl	%eax, %eax
    movq	-680(%rbp), %rax
    movq	$-1, %rcx
    movq	%rax, %rdx
    movl	$0, %eax
    movq	%rdx, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    movl	%eax, -652(%rbp)
    movb	$96, -640(%rbp)
    movl	$0, -664(%rbp)
    jmp	L76
L79:
    movl	-664(%rbp), %eax
    leal	1(%rax), %ebx
    movl	-664(%rbp), %eax
    movslq	%eax, %rdx
    movq	-680(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %edi
    call	fn
    movl	%eax, %edx
    movslq	%ebx, %rax
    movb	%dl, -640(%rbp,%rax)
    movl	-664(%rbp), %eax
    addl	$1, %eax
    cltq
    movzbl	-640(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %edi
    call	foo
    testl	%eax, %eax
    jle	L95
    addl	$1, -664(%rbp)
L76:
    movl	-664(%rbp), %eax
    cmpl	-652(%rbp), %eax
    jl	L79
    movl	-652(%rbp), %eax
    addl	$1, %eax
    cltq
    movb	$96, -640(%rbp,%rax)
    addl	$2, -652(%rbp)
    movl	-652(%rbp), %eax
    addl	$2, %eax
    movslq	%eax, %rdx
    leaq	-336(%rbp), %rax
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    movq	w(%rip), %rax
    testq	%rax, %rax
    je	L96
    movl	$0, -664(%rbp)
    jmp	L81
L89:
    movq	w(%rip), %rax
    movq	%rax, -648(%rbp)
    movl	-664(%rbp), %eax
    movl	%eax, -660(%rbp)
    jmp	L82
L88:
    movl	-660(%rbp), %eax
    cltq
    movzbl	-640(%rbp,%rax), %eax
    movsbl	%al, %eax
    movl	%eax, %edi
    call	foo
    movl	%eax, %edx
    movq	-648(%rbp), %rax
    movslq	%edx, %rdx
    movq	16(%rax,%rdx,8), %rax
    movq	%rax, -648(%rbp)
    cmpq	$0, -648(%rbp)
    je	L97
    movl	$0, -656(%rbp)
    jmp	L85
L87:
    movq	-648(%rbp), %rdx
    movl	-656(%rbp), %eax
    cltq
    movzbl	(%rdx,%rax), %edx
    movl	-664(%rbp), %ecx
    movl	-656(%rbp), %eax
    addl	%ecx, %eax
    cltq
    movzbl	-336(%rbp,%rax), %eax
    cmpb	%al, %dl
    jle	L86
    movl	-664(%rbp), %edx
    movl	-656(%rbp), %eax
    leal	(%rdx,%rax), %ecx
    movq	-648(%rbp), %rdx
    movl	-656(%rbp), %eax
    cltq
    movzbl	(%rdx,%rax), %edx
    movslq	%ecx, %rax
    movb	%dl, -336(%rbp,%rax)
L86:
    addl	$1, -656(%rbp)
L85:
    movl	-660(%rbp), %eax
    subl	-664(%rbp), %eax
    addl	$2, %eax
    cmpl	-656(%rbp), %eax
    jge	L87
    addl	$1, -660(%rbp)
L82:
    movl	-660(%rbp), %eax
    cmpl	-652(%rbp), %eax
    jl	L88
    jmp	L84
L97:
    nop
L84:
    addl	$1, -664(%rbp)
L81:
    movl	-664(%rbp), %eax
    cmpl	-652(%rbp), %eax
    jl	L89
    movl	$3, -664(%rbp)
    jmp	L90
L92:
    movl	-664(%rbp), %eax
    cltq
    movzbl	-336(%rbp,%rax), %eax
    movsbl	%al, %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L91
L91:
    addl	$1, -664(%rbp)
L90:
    movl	-652(%rbp), %eax
    subl	$2, %eax
    cmpl	-664(%rbp), %eax
    jg	L92
    jmp	L75
L95:
    nop
    jmp	L75
L96:
    nop
L75:
    movq	-24(%rbp), %rax
    xorq	$40, %rax
    je	L94
    call	__stack_chk_fail
L94:
    addq	$680, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
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
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L100
    call	__stack_chk_fail
L100:
    leave
    ret
