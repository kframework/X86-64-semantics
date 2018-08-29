    .text
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    nop
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
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
    .globl	strlen
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
    .globl	strcpy
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
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L15
L17:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L15:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L16
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L17
L16:
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
    .globl	strcat
strcat:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L20
L21:
    addq	$1, -8(%rbp)
L20:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L21
    nop
L22:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-32(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -32(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L22
    movq	-24(%rbp), %rax
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
    jmp	L25
L28:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L26
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L27
L26:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L25:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L28
    movl	$0, %eax
L27:
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
    jmp	L33
L34:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L33:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L34
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
    jmp	L37
L38:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L37:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L38
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
    jle	L46
    cmpl	$122, -4(%rbp)
    jg	L46
    movl	$1, %eax
    jmp	L47
L46:
    cmpl	$64, -4(%rbp)
    jle	L48
    cmpl	$90, -4(%rbp)
    jg	L48
    movl	$1, %eax
    jmp	L47
L48:
    cmpl	$47, -4(%rbp)
    jle	L49
    cmpl	$57, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L47
L49:
    movl	$0, %eax
L47:
    popq	%rbp
    ret
    .globl	mempcpy
mempcpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L51
L52:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L51:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L52
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .comm	inside_main,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, inside_main(%rip)
    call	main_test
    movl	$0, inside_main(%rip)
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	link_error
link_error:
    pushq	%rbp
    movq	%rsp, %rbp
    call	abort
    .comm	buf1,512,32
    .globl	buf2
    .data
buf2:
    .quad	buf1 + 256
    .comm	buf5,160,32
    .comm	buf7,20,16
    .section	.rodata
LC0:
    .string	"ABCDEFGHI"
LC1:
    .string	"ABCDEFGHI"
    .string	""
LC2:
    .string	"abcdefghijklmnopq"
LC3:
    .string	"abcdefghijklmnopq"
    .string	""
LC4:
    .string	"ABCDEF"
LC5:
    .string	"ABCDEFghijklmnopq"
    .string	""
LC6:
    .string	"a"
LC7:
    .string	"aBCDEFghijklmnopq"
    .string	""
LC8:
    .string	"bcd"
LC9:
    .string	"aBcdEFghijklmnopq"
    .string	""
LC10:
    .string	"aBcdRSTUVWklmnopq"
    .string	""
LC11:
    .string	"aBcdRSTUVWSlmnopq"
    .string	""
LC12:
    .string	"aBcdRSTUVWSlmnrsq"
    .string	""
LC13:
    .string	"RSTUVWXYVWSlmnrsq"
    .string	""
LC14:
    .string	"RSTUVWXYZ01234567"
    .string	""
LC15:
    .string	"aBcdRSTUVWkSmnopq"
    .string	""
LC16:
    .string	"aBcdRSTUVWkSmnrsq"
    .string	""
    .text
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movl	%ecx, -44(%rbp)
    movl	$0, -4(%rbp)
    movl	$9, %edx
    movl	$LC0, %esi
    movl	$buf1, %edi
    call	mempcpy
    movl	$buf1 + 9, %edx
    cmpq	%rdx, %rax
    jne	L58
    movl	$11, %edx
    movl	$LC1, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L59
L58:
    call	abort
L59:
    movl	$17, %edx
    movl	$LC2, %esi
    movl	$buf1, %edi
    call	mempcpy
    movl	$buf1 + 17, %edx
    cmpq	%rdx, %rax
    jne	L60
    movl	$19, %edx
    movl	$LC3, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L61
L60:
    call	abort
L61:
    movq	-24(%rbp), %rax
    movl	$6, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$buf1 + 6, %edx
    cmpq	%rdx, %rax
    jne	L62
    movl	$19, %edx
    movl	$LC5, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L63
L62:
    call	abort
L63:
    movq	-24(%rbp), %rax
    movl	$1, %edx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$buf1 + 1, %edx
    cmpq	%rdx, %rax
    jne	L64
    movl	$19, %edx
    movl	$LC7, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L65
L64:
    call	abort
L65:
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    leaq	LC8(%rax), %rdx
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    addq	$2, %rax
    movl	$buf1 + 4, %edx
    cmpq	%rdx, %rax
    jne	L66
    movl	$19, %edx
    movl	$LC9, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L66
    cmpl	$1, -4(%rbp)
    je	L67
L66:
    call	abort
L67:
    movq	-24(%rbp), %rax
    addq	$4, %rax
    movl	$6, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$buf1 + 10, %edx
    cmpq	%rdx, %rax
    jne	L68
    movl	$19, %edx
    movl	$LC10, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L69
L68:
    call	abort
L69:
    movl	$buf5 + 1, %edx
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    addq	$8, %rax
    addq	$buf1, %rax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    addq	$1, %rax
    movl	$buf1 + 11, %edx
    cmpq	%rdx, %rax
    jne	L70
    movl	$19, %edx
    movl	$LC11, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L70
    cmpl	$2, -4(%rbp)
    je	L71
L70:
    call	abort
L71:
    movq	-24(%rbp), %rax
    addq	$14, %rax
    movq	-40(%rbp), %rdx
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    addq	$2, %rax
    movl	$buf1 + 16, %edx
    cmpq	%rdx, %rax
    jne	L72
    movl	$19, %edx
    movl	$LC12, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L73
L72:
    call	abort
L73:
    movq	buf5(%rip), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, (%rax)
    movq	-24(%rbp), %rax
    addq	$8, %rax
    movl	$buf1 + 8, %edx
    cmpq	%rdx, %rax
    jne	L74
    movl	$19, %edx
    movl	$LC13, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L75
L74:
    call	abort
L75:
    movq	-24(%rbp), %rax
    movl	$17, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$buf1 + 17, %edx
    cmpq	%rdx, %rax
    jne	L76
    movl	$19, %edx
    movl	$LC14, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L77
L76:
    call	abort
L77:
    movq	-24(%rbp), %rax
    movl	$19, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	memcpy
    movl	-44(%rbp), %eax
    addl	$6, %eax
    cltq
    movq	-24(%rbp), %rdx
    leaq	4(%rdx), %rcx
    movq	%rax, %rdx
    movl	$buf5, %esi
    movq	%rcx, %rdi
    call	mempcpy
    movl	$buf1 + 10, %edx
    cmpq	%rdx, %rax
    jne	L78
    movl	$19, %edx
    movl	$LC10, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L79
L78:
    call	abort
L79:
    movl	-44(%rbp), %eax
    addl	$1, %eax
    cltq
    movl	$buf5 + 1, %esi
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    addq	$8, %rdx
    leaq	buf1(%rdx), %rcx
    movq	%rax, %rdx
    movq	%rcx, %rdi
    call	mempcpy
    movl	$buf1 + 12, %edx
    cmpq	%rdx, %rax
    jne	L80
    movl	$19, %edx
    movl	$LC15, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L80
    cmpl	$3, -4(%rbp)
    je	L81
L80:
    call	abort
L81:
    movl	-44(%rbp), %eax
    addl	$2, %eax
    movslq	%eax, %rdx
    movq	-24(%rbp), %rax
    leaq	14(%rax), %rcx
    movq	-40(%rbp), %rax
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	mempcpy
    movl	$buf1 + 16, %edx
    cmpq	%rdx, %rax
    jne	L82
    movl	$19, %edx
    movl	$LC16, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L83
L82:
    call	abort
L83:
    movl	$1, -4(%rbp)
    movq	buf2(%rip), %rax
    movl	$9, %edx
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$9, %rax
    cmpq	%rax, %rdx
    jne	L84
    movq	buf2(%rip), %rax
    movl	$11, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L85
L84:
    call	abort
L85:
    movq	buf2(%rip), %rax
    movl	$17, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$17, %rax
    cmpq	%rax, %rdx
    jne	L86
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L87
L86:
    call	abort
L87:
    movq	-32(%rbp), %rax
    movl	$6, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L88
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L89
L88:
    call	abort
L89:
    movq	-32(%rbp), %rax
    movl	$1, %edx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L90
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L91
L90:
    call	abort
L91:
    movl	-4(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -4(%rbp)
    cltq
    leaq	LC8(%rax), %rdx
    movq	-32(%rbp), %rax
    addq	$2, %rax
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    leaq	2(%rax), %rdx
    movq	buf2(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    jne	L92
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L92
    cmpl	$2, -4(%rbp)
    je	L93
L92:
    call	abort
L93:
    movq	-32(%rbp), %rax
    addq	$4, %rax
    movl	$6, %edx
    movl	$buf7, %esi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$10, %rax
    cmpq	%rax, %rdx
    jne	L94
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L95
L94:
    call	abort
L95:
    movl	$buf7 + 1, %esi
    movq	buf2(%rip), %rcx
    movl	-4(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -4(%rbp)
    cltq
    addq	$8, %rax
    addq	%rcx, %rax
    movzbl	(%rsi), %edx
    movb	%dl, (%rax)
    leaq	1(%rax), %rdx
    movq	buf2(%rip), %rax
    addq	$11, %rax
    cmpq	%rax, %rdx
    jne	L96
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L96
    cmpl	$3, -4(%rbp)
    je	L97
L96:
    call	abort
L97:
    movq	-32(%rbp), %rax
    addq	$14, %rax
    movq	-40(%rbp), %rdx
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    leaq	2(%rax), %rdx
    movq	buf2(%rip), %rax
    addq	$16, %rax
    cmpq	%rax, %rdx
    jne	L98
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC12, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L99
L98:
    call	abort
L99:
    movq	-32(%rbp), %rax
    movl	$19, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	memcpy
    movl	-44(%rbp), %eax
    addl	$6, %eax
    cltq
    movq	-32(%rbp), %rdx
    leaq	4(%rdx), %rcx
    movq	%rax, %rdx
    movl	$buf7, %esi
    movq	%rcx, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$10, %rax
    cmpq	%rax, %rdx
    jne	L100
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L101
L100:
    call	abort
L101:
    movl	-44(%rbp), %eax
    addl	$1, %eax
    movslq	%eax, %rdx
    movl	$buf7 + 1, %edi
    movq	buf2(%rip), %rsi
    movl	-4(%rbp), %eax
    leal	1(%rax), %ecx
    movl	%ecx, -4(%rbp)
    cltq
    addq	$8, %rax
    addq	%rsi, %rax
    movq	%rdi, %rsi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$12, %rax
    cmpq	%rax, %rdx
    jne	L102
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC15, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L102
    cmpl	$4, -4(%rbp)
    je	L103
L102:
    call	abort
L103:
    movl	-44(%rbp), %eax
    addl	$2, %eax
    movslq	%eax, %rdx
    movq	-32(%rbp), %rax
    leaq	14(%rax), %rcx
    movq	-40(%rbp), %rax
    movq	%rax, %rsi
    movq	%rcx, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq	buf2(%rip), %rax
    addq	$16, %rax
    cmpq	%rax, %rdx
    jne	L104
    movq	buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC16, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L106
L104:
    call	abort
L106:
    nop
    leave
    ret
    .section	.rodata
LC17:
    .string	"RSTUVWXYZ0123456789"
LC18:
    .string	"rstuvwxyz"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, inside_main(%rip)
    movl	$20, %edx
    movl	$LC17, %esi
    movl	$buf5, %edi
    call	memcpy
    movabsq	$6437991695636517714, %rax
    movq	%rax, buf7(%rip)
    movabsq	$3906085646303834202, %rax
    movq	%rax, buf7 + 8(%rip)
    movl	$3749943, buf7 + 16(%rip)
    movq	buf2(%rip), %rax
    movl	$0, %ecx
    movl	$LC18, %edx
    movq	%rax, %rsi
    movl	$buf1, %edi
    call	test
    nop
    popq	%rbp
    ret
