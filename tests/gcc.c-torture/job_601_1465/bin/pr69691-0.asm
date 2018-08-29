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
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
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
    jne	L58
    cmpl	$96, -4(%rbp)
    jne	L59
L58:
    movl	-4(%rbp), %eax
    jmp	L61
L59:
    call	abort
L61:
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
    jne	L63
    call	abort
L63:
    movsbl	-4(%rbp), %eax
    movl	%eax, %edi
    call	fn
    cmpl	$95, %eax
    jle	L64
    movsbl	-4(%rbp), %eax
    movl	%eax, %edi
    call	fn
    cmpl	$122, %eax
    jg	L64
    movsbl	-4(%rbp), %eax
    movl	%eax, %edi
    call	fn
    subl	$96, %eax
    jmp	L65
L64:
    cmpb	$46, -4(%rbp)
    jne	L66
    movl	$0, %eax
    jmp	L65
L66:
    movsbl	-4(%rbp), %eax
    movl	%eax, %esi
    movl	$LC0, %edi
    movl	$0, %eax
    call	printf
    movl	$-1, %eax
L65:
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
    jmp	L68
L77:
    movq	-560(%rbp), %rax
    movq	(%rax), %rdx
    leaq	-512(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-512(%rbp), %rax
    movq	%rax, -552(%rbp)
L76:
    movq	-552(%rbp), %rax
    movl	$32, %esi
    movq	%rax, %rdi
    call	strchr
    movq	%rax, -536(%rbp)
    cmpq	$0, -536(%rbp)
    je	L69
    movq	-536(%rbp), %rax
    movb	$0, (%rax)
L69:
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
    jmp	L70
L74:
    movl	-576(%rbp), %eax
    movslq	%eax, %rdx
    movq	-552(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    movb	%al, -577(%rbp)
    cmpb	$47, -577(%rbp)
    jle	L71
    cmpb	$57, -577(%rbp)
    jg	L71
    movzbl	-577(%rbp), %eax
    subl	$48, %eax
    movl	%eax, %edx
    movl	-572(%rbp), %eax
    cltq
    movb	%dl, -528(%rbp,%rax)
    jmp	L72
L71:
    movsbl	-577(%rbp), %eax
    movl	%eax, %edi
    call	foo
    movl	%eax, -564(%rbp)
    movq	-544(%rbp), %rax
    movl	-564(%rbp), %edx
    movslq	%edx, %rdx
    movq	16(%rax,%rdx,8), %rax
    testq	%rax, %rax
    jne	L73
    movq	r2(%rip), %rax
    leaq	264(%rax), %rdx
    movq	%rdx, r2(%rip)
    movq	-544(%rbp), %rdx
    movl	-564(%rbp), %ecx
    movslq	%ecx, %rcx
    movq	%rax, 16(%rdx,%rcx,8)
    movq	r2(%rip), %rax
    cmpq	$r + 1848, %rax
    jne	L73
    call	abort
L73:
    movq	-544(%rbp), %rax
    movl	-564(%rbp), %edx
    movslq	%edx, %rdx
    movq	16(%rax,%rdx,8), %rax
    movq	%rax, -544(%rbp)
    addl	$1, -572(%rbp)
L72:
    addl	$1, -576(%rbp)
L70:
    movl	-576(%rbp), %eax
    cmpl	-568(%rbp), %eax
    jl	L74
    movq	-544(%rbp), %rax
    movq	-528(%rbp), %rdx
    movq	%rdx, (%rax)
    movzwl	-520(%rbp), %edx
    movw	%dx, 8(%rax)
    cmpq	$0, -536(%rbp)
    je	L75
    movq	-536(%rbp), %rax
    addq	$1, %rax
    movq	%rax, -552(%rbp)
L75:
    cmpq	$0, -536(%rbp)
    jne	L76
    addq	$8, -560(%rbp)
L68:
    movq	-560(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L77
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L78
    call	__stack_chk_fail
L78:
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
    jmp	L80
L83:
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
    jle	L99
    addl	$1, -664(%rbp)
L80:
    movl	-664(%rbp), %eax
    cmpl	-652(%rbp), %eax
    jl	L83
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
    je	L100
    movl	$0, -664(%rbp)
    jmp	L85
L93:
    movq	w(%rip), %rax
    movq	%rax, -648(%rbp)
    movl	-664(%rbp), %eax
    movl	%eax, -660(%rbp)
    jmp	L86
L92:
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
    je	L101
    movl	$0, -656(%rbp)
    jmp	L89
L91:
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
    jle	L90
    movl	-664(%rbp), %edx
    movl	-656(%rbp), %eax
    leal	(%rdx,%rax), %ecx
    movq	-648(%rbp), %rdx
    movl	-656(%rbp), %eax
    cltq
    movzbl	(%rdx,%rax), %edx
    movslq	%ecx, %rax
    movb	%dl, -336(%rbp,%rax)
L90:
    addl	$1, -656(%rbp)
L89:
    movl	-660(%rbp), %eax
    subl	-664(%rbp), %eax
    addl	$2, %eax
    cmpl	-656(%rbp), %eax
    jge	L91
    addl	$1, -660(%rbp)
L86:
    movl	-660(%rbp), %eax
    cmpl	-652(%rbp), %eax
    jl	L92
    jmp	L88
L101:
    nop
L88:
    addl	$1, -664(%rbp)
L85:
    movl	-664(%rbp), %eax
    cmpl	-652(%rbp), %eax
    jl	L93
    movl	$3, -664(%rbp)
    jmp	L94
L96:
    movl	-664(%rbp), %eax
    cltq
    movzbl	-336(%rbp,%rax), %eax
    movsbl	%al, %eax
    andl	$1, %eax
    testl	%eax, %eax
    je	L95
L95:
    addl	$1, -664(%rbp)
L94:
    movl	-652(%rbp), %eax
    subl	$2, %eax
    cmpl	-664(%rbp), %eax
    jg	L96
    jmp	L79
L99:
    nop
    jmp	L79
L100:
    nop
L79:
    movq	-24(%rbp), %rax
    xorq	$40, %rax
    je	L98
    call	__stack_chk_fail
L98:
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
    je	L104
    call	__stack_chk_fail
L104:
    leave
    ret
