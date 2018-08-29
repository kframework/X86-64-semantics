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
    .globl	p
    .bss
p:
    .zero	32
    .section	.rodata
LC0:
    .string	"abcde"
LC1:
    .string	"vwxyz"
LC2:
    .string	"wxyz"
LC3:
    .string	"a"
    .string	"cde"
LC4:
    .string	"a"
    .string	"cfghij"
LC5:
    .string	"ABCDE"
LC6:
    .string	"VWX"
LC7:
    .string	"WXyz"
LC8:
    .string	""
LC9:
    .string	"A"
    .string	"CDE"
LC10:
    .string	"FGHI"
LC11:
    .string	"A"
    .string	"CFGHIj"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$1684234849, p(%rip)
    movw	$101, p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L54
    movl	$6, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L55
L54:
    call	abort
L55:
    movl	$LC1 + 1, %edx
    movl	$p + 16, %eax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    movl	$p + 16, %edx
    cmpq	%rdx, %rax
    jne	L56
    movl	$p + 16, %eax
    movl	$5, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L57
L56:
    call	abort
L57:
    movl	$p + 1, %eax
    movb	$0, (%rax)
    movq	%rax, %rdx
    movl	$p + 1, %eax
    cmpq	%rax, %rdx
    jne	L58
    movl	$6, %edx
    movl	$LC3, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L59
L58:
    call	abort
L59:
    movl	$p + 3, %eax
    movl	$1768449894, (%rax)
    movw	$106, 4(%rax)
    movq	%rax, %rdx
    movl	$p + 3, %eax
    cmpq	%rax, %rdx
    jne	L60
    movl	$9, %edx
    movl	$LC4, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L61
L60:
    call	abort
L61:
    movl	$6, %edx
    movl	$LC5, %esi
    movl	$p, %edi
    call	memcpy
    cmpq	$p, %rax
    jne	L62
    movl	$6, %edx
    movl	$LC5, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L63
L62:
    call	abort
L63:
    movl	$LC6 + 1, %edx
    movl	$p + 16, %eax
    movzwl	(%rdx), %edx
    movw	%dx, (%rax)
    movl	$p + 16, %edx
    cmpq	%rdx, %rax
    jne	L64
    movl	$p + 16, %eax
    movl	$5, %edx
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L65
L64:
    call	abort
L65:
    movl	$p + 1, %eax
    movl	$1, %edx
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	memcpy
    movl	$p + 1, %edx
    cmpq	%rdx, %rax
    jne	L66
    movl	$6, %edx
    movl	$LC9, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L67
L66:
    call	abort
L67:
    movl	$p + 3, %eax
    movl	$4, %edx
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	memcpy
    movl	$p + 3, %edx
    cmpq	%rdx, %rax
    jne	L68
    movl	$9, %edx
    movl	$LC11, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L69
L68:
    call	abort
L69:
    movl	$1684234849, p(%rip)
    movw	$101, p + 4(%rip)
    movl	$p, %eax
    cmpq	$p, %rax
    jne	L70
    movl	$6, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L71
L70:
    call	abort
L71:
    movl	$6, %edx
    movl	$LC5, %esi
    movl	$p, %edi
    call	memcpy
    cmpq	$p, %rax
    jne	L72
    movl	$6, %edx
    movl	$LC5, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L74
L72:
    call	abort
L74:
    nop
    popq	%rbp
    ret
