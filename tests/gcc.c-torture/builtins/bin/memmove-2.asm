    .text
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
    jmp	L2
L5:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L3
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L4
L3:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L2:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L5
    movl	$0, %eax
L4:
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
    jmp	L9
L10:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L9:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L10
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
    jmp	L13
L14:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    jle	L22
    cmpl	$122, -4(%rbp)
    jg	L22
    movl	$1, %eax
    jmp	L23
L22:
    cmpl	$64, -4(%rbp)
    jle	L24
    cmpl	$90, -4(%rbp)
    jg	L24
    movl	$1, %eax
    jmp	L23
L24:
    cmpl	$47, -4(%rbp)
    jle	L25
    cmpl	$57, -4(%rbp)
    jg	L25
    movl	$1, %eax
    jmp	L23
L25:
    movl	$0, %eax
L23:
    popq	%rbp
    ret
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
    je	L31
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L28
    movl	$0, %eax
    jmp	L26
L28:
    movq	-8(%rbp), %rax
    jmp	L26
L31:
L26:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L33
L34:
    addq	$1, -8(%rbp)
L33:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L34
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
L37:
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
    jne	L37
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L40
L42:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L40:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L41
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L42
L41:
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
    jmp	L45
L46:
    addq	$1, -8(%rbp)
L45:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L46
    nop
L47:
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
    jne	L47
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	memmove
memmove:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -16(%rbp)
    movq	-8(%rbp), %rax
    cmpq	-16(%rbp), %rax
    jnb	L54
    jmp	L51
L52:
    movq	-16(%rbp), %rdx
    movq	-40(%rbp), %rax
    addq	%rax, %rdx
    movq	-8(%rbp), %rcx
    movq	-40(%rbp), %rax
    addq	%rcx, %rax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
L51:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L52
    jmp	L53
L55:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L54:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L55
L53:
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	bcopy
bcopy:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rcx
    movq	-16(%rbp), %rax
    movq	%rcx, %rsi
    movq	%rax, %rdi
    call	memmove
    nop
    leave
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
    .globl	p
    .data
p:
    .string	"abcdefg"
    .zero	24
    .globl	q
q:
    .quad	p + 4
    .section	.rodata
LC0:
    .string	"abddefg"
LC1:
    .string	"abddeff"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$p + 3, %edx
    movl	$p + 2, %eax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movl	$p + 2, %edx
    cmpq	%rdx, %rax
    jne	L62
    movl	$8, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L63
L62:
    call	abort
L63:
    movl	$p + 1, %edx
    movl	$p + 1, %eax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movl	$p + 1, %edx
    cmpq	%rdx, %rax
    jne	L64
    movl	$8, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L65
L64:
    call	abort
L65:
    movl	$p + 4, %edx
    movq $q(%rip), %rax
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
    movq	%rax, %rdx
    movl	$p + 4, %eax
    cmpq	%rax, %rdx
    jne	L66
    movl	$8, %edx
    movl	$LC0, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L67
L66:
    call	abort
L67:
    movl	$p + 6, %edx
    movl	$p + 5, %eax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
    movl	$8, %edx
    movl	$LC1, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L68
    call	abort
L68:
    movl	$p + 1, %edx
    movl	$p + 1, %eax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
    movl	$8, %edx
    movl	$LC1, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L69
    call	abort
L69:
    movl	$p + 4, %edx
    movq $q(%rip), %rax
    movzbl	(%rax), %eax
    movb	%al, (%rdx)
    movl	$8, %edx
    movl	$LC1, %esi
    movl	$p, %edi
    call	memcmp
    testl	%eax, %eax
    je	L71
    call	abort
L71:
    nop
    popq	%rbp
    ret
