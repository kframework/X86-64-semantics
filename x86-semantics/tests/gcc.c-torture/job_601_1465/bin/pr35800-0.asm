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
    .section	.rodata
LC0:
    .string	"int"
LC1:
    .string	"char"
LC2:
    .string	"short"
LC3:
    .string	"long"
LC4:
    .string	"unsigned char"
LC5:
    .string	"signed char"
LC6:
    .string	"unsigned short"
LC7:
    .string	"unsigned int"
LC8:
    .string	"unsigned"
LC9:
    .string	"unsigned long"
LC10:
    .string	"void"
LC11:
    .string	"float"
LC12:
    .string	"double"
LC13:
    .string	"long double"
LC14:
    .string	"integer"
LC15:
    .string	"boolean"
LC16:
    .string	"short real"
LC17:
    .string	"real"
LC18:
    .string	"stringptr"
LC19:
    .string	"character"
LC20:
    .string	"logical*1"
LC21:
    .string	"logical*2"
LC22:
    .string	"logical*4"
LC23:
    .string	"logical"
LC24:
    .string	"complex"
LC25:
    .string	"double complex"
LC26:
    .string	"integer*1"
LC27:
    .string	"integer*2"
LC28:
    .string	"integer*4"
LC29:
    .string	"wchar"
LC30:
    .string	"long long"
LC31:
    .string	"unsigned long long"
LC32:
    .string	"logical*8"
LC33:
    .string	"integer*8"
    .text
    .globl	stab_xcoff_builtin_type
stab_xcoff_builtin_type:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    cmpl	$0, -20(%rbp)
    jns	L58
    cmpl	$-34, -20(%rbp)
    jge	L59
L58:
    movl	$0, %eax
    jmp	L60
L59:
    movl	-20(%rbp), %eax
    negl	%eax
    cmpl	$34, %eax
    ja	L61
    movl	%eax, %eax
    movq	L63(,%rax,8), %rax
    jmp	%rax
    .section	.rodata
L63:
    .quad	L61
    .quad	L62
    .quad	L64
    .quad	L65
    .quad	L66
    .quad	L67
    .quad	L68
    .quad	L69
    .quad	L70
    .quad	L71
    .quad	L72
    .quad	L73
    .quad	L74
    .quad	L75
    .quad	L76
    .quad	L77
    .quad	L78
    .quad	L79
    .quad	L80
    .quad	L81
    .quad	L82
    .quad	L83
    .quad	L84
    .quad	L85
    .quad	L86
    .quad	L87
    .quad	L88
    .quad	L89
    .quad	L90
    .quad	L91
    .quad	L92
    .quad	L93
    .quad	L94
    .quad	L95
    .quad	L96
    .text
L62:
    movq	$LC0, -8(%rbp)
    jmp	L61
L64:
    movq	$LC1, -8(%rbp)
L65:
    movq	$LC2, -8(%rbp)
    jmp	L61
L66:
    movq	$LC3, -8(%rbp)
L67:
    movq	$LC4, -8(%rbp)
L68:
    movq	$LC5, -8(%rbp)
L69:
    movq	$LC6, -8(%rbp)
L70:
    movq	$LC7, -8(%rbp)
L71:
    movq	$LC8, -8(%rbp)
L72:
    movq	$LC9, -8(%rbp)
L73:
    movq	$LC10, -8(%rbp)
L74:
    movq	$LC11, -8(%rbp)
L75:
    movq	$LC12, -8(%rbp)
L76:
    movq	$LC13, -8(%rbp)
L77:
    movq	$LC14, -8(%rbp)
L78:
    movq	$LC15, -8(%rbp)
L79:
    movq	$LC16, -8(%rbp)
L80:
    movq	$LC17, -8(%rbp)
L81:
    movq	$LC18, -8(%rbp)
L82:
    movq	$LC19, -8(%rbp)
L83:
    movq	$LC20, -8(%rbp)
L84:
    movq	$LC21, -8(%rbp)
L85:
    movq	$LC22, -8(%rbp)
L86:
    movq	$LC23, -8(%rbp)
L87:
    movq	$LC24, -8(%rbp)
L88:
    movq	$LC25, -8(%rbp)
L89:
    movq	$LC26, -8(%rbp)
L90:
    movq	$LC27, -8(%rbp)
L91:
    movq	$LC28, -8(%rbp)
L92:
    movq	$LC29, -8(%rbp)
L93:
    movq	$LC30, -8(%rbp)
L94:
    movq	$LC31, -8(%rbp)
L95:
    movq	$LC32, -8(%rbp)
L96:
    movq	$LC33, -8(%rbp)
L61:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movsbl	%al, %eax
L60:
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$0, %edi
    call	stab_xcoff_builtin_type
    testl	%eax, %eax
    je	L98
    call	abort
L98:
    movl	$-1, %edi
    call	stab_xcoff_builtin_type
    cmpl	$105, %eax
    je	L99
    call	abort
L99:
    movl	$-2, %edi
    call	stab_xcoff_builtin_type
    cmpl	$115, %eax
    je	L100
    call	abort
L100:
    movl	$-3, %edi
    call	stab_xcoff_builtin_type
    cmpl	$115, %eax
    je	L101
    call	abort
L101:
    movl	$-4, -4(%rbp)
    jmp	L102
L104:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	stab_xcoff_builtin_type
    cmpl	$105, %eax
    je	L103
    call	abort
L103:
    subl	$1, -4(%rbp)
L102:
    cmpl	$-34, -4(%rbp)
    jge	L104
    movl	$-35, %edi
    call	stab_xcoff_builtin_type
    testl	%eax, %eax
    je	L105
    call	abort
L105:
    movl	$0, %eax
    leave
    ret
