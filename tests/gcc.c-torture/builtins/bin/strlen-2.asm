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
    jmp	L32
L33:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L33
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
    jmp	L36
L37:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    jle	L45
    cmpl	$122, -4(%rbp)
    jg	L45
    movl	$1, %eax
    jmp	L46
L45:
    cmpl	$64, -4(%rbp)
    jle	L47
    cmpl	$90, -4(%rbp)
    jg	L47
    movl	$1, %eax
    jmp	L46
L47:
    cmpl	$47, -4(%rbp)
    jle	L48
    cmpl	$57, -4(%rbp)
    jg	L48
    movl	$1, %eax
    jmp	L46
L48:
    movl	$0, %eax
L46:
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
    .comm	g,8,8
    .comm	h,8,8
    .comm	i,8,8
    .comm	j,8,8
    .comm	k,8,8
    .comm	l,8,8
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $l(%rip), %rax
    testq	%rax, %rax
    je	L53
    call	abort
L53:
    movq $l(%rip), %rax
    addq	$1, %rax
    movq	%rax, $l(%rip)
    movq $l(%rip), %rax
    popq	%rbp
    ret
    .section	.rodata
LC0:
    .string	"foo"
LC1:
    .string	"bar"
LC2:
    .string	"xfoo"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movq $g(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $g(%rip)
    testq	%rax, %rax
    je	L56
    movl	$LC0, %eax
    jmp	L57
L56:
    movl	$LC1, %eax
L57:
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    jne	L58
    movq $g(%rip), %rax
    cmpq	$1, %rax
    je	L59
L58:
    call	abort
L59:
    movq $h(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $h(%rip)
    testq	%rax, %rax
    je	L60
    movl	$LC2 + 1, %eax
    jmp	L61
L60:
    movl	$LC1, %eax
L61:
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    jne	L62
    movq $h(%rip), %rax
    cmpq	$1, %rax
    je	L63
L62:
    call	abort
L63:
    movq $i(%rip), %rax
    addq	$1, %rax
    movq	%rax, $i(%rip)
    movq $i(%rip), %rax
    cmpq	$1, %rax
    je	L64
    call	abort
L64:
    movl	$0, $inside_main(%rip)
    movq $j(%rip), %rax
    testq	%rax, %rax
    je	L65
    movq $k(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $k(%rip)
    addq	$LC0, %rax
    jmp	L66
L65:
    movq $k(%rip), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, $k(%rip)
    addq	$LC1, %rax
L66:
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    jne	L67
    movq $k(%rip), %rax
    cmpq	$1, %rax
    je	L68
L67:
    call	abort
L68:
    call	foo
    testq	%rax, %rax
    je	L69
    movl	$LC0, %eax
    jmp	L70
L69:
    movl	$LC1, %eax
L70:
    movq	%rax, %rdi
    call	strlen
    cmpq	$3, %rax
    jne	L71
    movq $l(%rip), %rax
    cmpq	$1, %rax
    je	L73
L71:
    call	abort
L73:
    nop
    popq	%rbp
    ret
