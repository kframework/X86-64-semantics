    .text
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
    jmp	L2
L3:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -16(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L2:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L3
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
    jmp	L6
L9:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L7
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L8
L7:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L6:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L9
    movl	$0, %eax
L8:
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
    jmp	L13
L14:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L13:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L14
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
    jmp	L17
L18:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L17:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
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
    .comm	inside_main,4,4
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1, $inside_main(%rip)
    call	main_test
    movl	$0, $inside_main(%rip)
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
    .string	"ABCDEFghijklmnopq"
    .string	""
LC5:
    .string	"aBCDEFghijklmnopq"
    .string	""
LC6:
    .string	"bcd"
LC7:
    .string	"aBcdEFghijklmnopq"
    .string	""
LC8:
    .string	"aBcdRSTUVWklmnopq"
    .string	""
LC9:
    .string	"aBcdRSTUVWSlmnopq"
    .string	""
LC10:
    .string	"aBcdRSTUVWSlmnrsq"
    .string	""
LC11:
    .string	"RSTUVWXYVWSlmnrsq"
    .string	""
LC12:
    .string	"RSTUVWXYZ01234567"
    .string	""
LC13:
    .string	"aBcdRSTUVWkSmnopq"
    .string	""
LC14:
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
    jne	L28
    movl	$11, %edx
    movl	$LC1, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L29
L28:
    call	abort
L29:
    movl	$17, %edx
    movl	$LC2, %esi
    movl	$buf1, %edi
    call	mempcpy
    movl	$buf1 + 17, %edx
    cmpq	%rdx, %rax
    jne	L30
    movl	$19, %edx
    movl	$LC3, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L31
L30:
    call	abort
L31:
    movq	-24(%rbp), %rax
    movl	$1145258561, (%rax)
    movw	$17989, 4(%rax)
    addq	$6, %rax
    movq	%rax, %rdx
    movl	$buf1 + 6, %eax
    cmpq	%rax, %rdx
    jne	L32
    movl	$19, %edx
    movl	$LC4, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L33
L32:
    call	abort
L33:
    movq	-24(%rbp), %rax
    movb	$97, (%rax)
    addq	$1, %rax
    movq	%rax, %rdx
    movl	$buf1 + 1, %eax
    cmpq	%rax, %rdx
    jne	L34
    movl	$19, %edx
    movl	$LC5, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L35
L34:
    call	abort
L35:
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %eax
    cltq
    leaq	$LC6(%rax), %rdx
    movq	-24(%rbp), %rax
    addq	$2, %rax
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    addq	$2, %rax
    movl	$buf1 + 4, %edx
    cmpq	%rdx, %rax
    jne	L36
    movl	$19, %edx
    movl	$LC7, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L36
    cmpl	$1, -4(%rbp)
    je	L37
L36:
    call	abort
L37:
    movq	-24(%rbp), %rax
    addq	$4, %rax
    movl	$6, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$buf1 + 10, %edx
    cmpq	%rdx, %rax
    jne	L38
    movl	$19, %edx
    movl	$LC8, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L39
L38:
    call	abort
L39:
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
    jne	L40
    movl	$19, %edx
    movl	$LC9, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L40
    cmpl	$2, -4(%rbp)
    je	L41
L40:
    call	abort
L41:
    movq	-24(%rbp), %rax
    addq	$14, %rax
    movq	-40(%rbp), %rdx
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    addq	$2, %rax
    movl	$buf1 + 16, %edx
    cmpq	%rdx, %rax
    jne	L42
    movl	$19, %edx
    movl	$LC10, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L43
L42:
    call	abort
L43:
    movq $buf5(%rip), %rdx
    movq	-24(%rbp), %rax
    movq	%rdx, (%rax)
    movq	-24(%rbp), %rax
    addq	$8, %rax
    movl	$buf1 + 8, %edx
    cmpq	%rdx, %rax
    jne	L44
    movl	$19, %edx
    movl	$LC11, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L45
L44:
    call	abort
L45:
    movq	-24(%rbp), %rax
    movl	$17, %edx
    movl	$buf5, %esi
    movq	%rax, %rdi
    call	mempcpy
    movl	$buf1 + 17, %edx
    cmpq	%rdx, %rax
    jne	L46
    movl	$19, %edx
    movl	$LC12, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L47
L46:
    call	abort
L47:
    movq	-24(%rbp), %rax
    movq	$LC7(%rip), %rdx
    movq	%rdx, (%rax)
    movq	$LC7 + 8(%rip), %rdx
    movq	%rdx, 8(%rax)
    movzwl	$LC7 + 16(%rip), %edx
    movw	%dx, 16(%rax)
    movzbl	$LC7 + 18(%rip), %edx
    movb	%dl, 18(%rax)
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
    jne	L48
    movl	$19, %edx
    movl	$LC8, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L49
L48:
    call	abort
L49:
    movl	-44(%rbp), %eax
    addl	$1, %eax
    cltq
    movl	$buf5 + 1, %esi
    addl	$1, -4(%rbp)
    movl	-4(%rbp), %edx
    movslq	%edx, %rdx
    addq	$8, %rdx
    leaq $buf1(%rdx), %rcx
    movq	%rax, %rdx
    movq	%rcx, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movl	$buf1 + 12, %eax
    cmpq	%rax, %rdx
    jne	L50
    movl	$19, %edx
    movl	$LC13, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    jne	L50
    cmpl	$3, -4(%rbp)
    je	L51
L50:
    call	abort
L51:
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
    jne	L52
    movl	$19, %edx
    movl	$LC14, %esi
    movl	$buf1, %edi
    call	memcmp
    testl	%eax, %eax
    je	L53
L52:
    call	abort
L53:
    movl	$1, -4(%rbp)
    movq $buf2(%rip), %rax
    movl	$9, %edx
    movl	$LC0, %esi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$9, %rax
    cmpq	%rax, %rdx
    jne	L54
    movq $buf2(%rip), %rax
    movl	$11, %edx
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L55
L54:
    call	abort
L55:
    movq $buf2(%rip), %rax
    movl	$17, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$17, %rax
    cmpq	%rax, %rdx
    jne	L56
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L57
L56:
    call	abort
L57:
    movq	-32(%rbp), %rax
    movl	$1145258561, (%rax)
    movw	$17989, 4(%rax)
    addq	$6, %rax
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L58
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L59
L58:
    call	abort
L59:
    movq	-32(%rbp), %rax
    movb	$97, (%rax)
    addq	$1, %rax
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L60
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L61
L60:
    call	abort
L61:
    movl	-4(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -4(%rbp)
    cltq
    leaq	$LC6(%rax), %rdx
    movq	-32(%rbp), %rax
    addq	$2, %rax
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    leaq	2(%rax), %rdx
    movq $buf2(%rip), %rax
    addq	$4, %rax
    cmpq	%rax, %rdx
    jne	L62
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L62
    cmpl	$2, -4(%rbp)
    je	L63
L62:
    call	abort
L63:
    movq	-32(%rbp), %rax
    addq	$4, %rax
    movl	$6, %edx
    movl	$buf7, %esi
    movq	%rax, %rdi
    call	mempcpy
    movq	%rax, %rdx
    movq $buf2(%rip), %rax
    addq	$10, %rax
    cmpq	%rax, %rdx
    jne	L64
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L65
L64:
    call	abort
L65:
    movl	$buf7 + 1, %esi
    movq $buf2(%rip), %rcx
    movl	-4(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -4(%rbp)
    cltq
    addq	$8, %rax
    addq	%rcx, %rax
    movzbl	(%rsi), %edx
    movb	%dl, (%rax)
    leaq	1(%rax), %rdx
    movq $buf2(%rip), %rax
    addq	$11, %rax
    cmpq	%rax, %rdx
    jne	L66
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC9, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L66
    cmpl	$3, -4(%rbp)
    je	L67
L66:
    call	abort
L67:
    movq	-32(%rbp), %rax
    addq	$14, %rax
    movq	-40(%rbp), %rdx
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    leaq	2(%rax), %rdx
    movq $buf2(%rip), %rax
    addq	$16, %rax
    cmpq	%rax, %rdx
    jne	L68
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L69
L68:
    call	abort
L69:
    movq	-32(%rbp), %rax
    movq	$LC7(%rip), %rdx
    movq	%rdx, (%rax)
    movq	$LC7 + 8(%rip), %rdx
    movq	%rdx, 8(%rax)
    movzwl	$LC7 + 16(%rip), %edx
    movw	%dx, 16(%rax)
    movzbl	$LC7 + 18(%rip), %edx
    movb	%dl, 18(%rax)
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
    movq $buf2(%rip), %rax
    addq	$10, %rax
    cmpq	%rax, %rdx
    jne	L70
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L71
L70:
    call	abort
L71:
    movl	-44(%rbp), %eax
    addl	$1, %eax
    movslq	%eax, %rdx
    movl	$buf7 + 1, %edi
    movq $buf2(%rip), %rsi
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
    movq $buf2(%rip), %rax
    addq	$12, %rax
    cmpq	%rax, %rdx
    jne	L72
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC13, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    jne	L72
    cmpl	$4, -4(%rbp)
    je	L73
L72:
    call	abort
L73:
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
    movq $buf2(%rip), %rax
    addq	$16, %rax
    cmpq	%rax, %rdx
    jne	L74
    movq $buf2(%rip), %rax
    movl	$19, %edx
    movl	$LC14, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L76
L74:
    call	abort
L76:
    nop
    leave
    ret
    .section	.rodata
LC15:
    .string	"rstuvwxyz"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, $inside_main(%rip)
    movabsq	$6437991695636517714, %rax
    movq	%rax, $buf5(%rip)
    movabsq	$3906085646303834202, %rax
    movq	%rax, $buf5 + 8(%rip)
    movl	$3749943, $buf5 + 16(%rip)
    movabsq	$6437991695636517714, %rax
    movq	%rax, $buf7(%rip)
    movabsq	$3906085646303834202, %rax
    movq	%rax, $buf7 + 8(%rip)
    movl	$3749943, $buf7 + 16(%rip)
    movq $buf2(%rip), %rax
    movl	$0, %ecx
    movl	$LC15, %edx
    movq	%rax, %rsi
    movl	$buf1, %edi
    call	test
    nop
    popq	%rbp
    ret
