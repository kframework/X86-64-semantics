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
    jmp	L10
L11:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L10:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L11
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
    jmp	L14
L15:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L14:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L15
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
    jle	L23
    cmpl	$122, -4(%rbp)
    jg	L23
    movl	$1, %eax
    jmp	L24
L23:
    cmpl	$64, -4(%rbp)
    jle	L25
    cmpl	$90, -4(%rbp)
    jg	L25
    movl	$1, %eax
    jmp	L24
L25:
    cmpl	$47, -4(%rbp)
    jle	L26
    cmpl	$57, -4(%rbp)
    jg	L26
    movl	$1, %eax
    jmp	L24
L26:
    movl	$0, %eax
L24:
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
    je	L32
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
    movl	$0, %eax
    jmp	L27
L29:
    movq	-8(%rbp), %rax
    jmp	L27
L32:
L27:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L34
L35:
    addq	$1, -8(%rbp)
L34:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L35
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
L38:
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
    jne	L38
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L41
L43:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L41:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L42
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L43
L42:
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
    jmp	L46
L47:
    addq	$1, -8(%rbp)
L46:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L47
    nop
L48:
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
    jne	L48
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	fputs
fputs:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, %rdi
    call	strlen
    movq	%rax, -16(%rbp)
    movq	-32(%rbp), %rcx
    movq	-16(%rbp), %rdx
    movq	-24(%rbp), %rax
    movl	$1, %esi
    movq	%rax, %rdi
    call	fwrite
    movq	%rax, -8(%rbp)
    movq	-16(%rbp), %rax
    cmpq	-8(%rbp), %rax
    jbe	L51
    movl	$-1, %eax
    jmp	L53
L51:
    movl	$0, %eax
L53:
    leave
    ret
    .globl	fputs_unlocked
fputs_unlocked:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	fputs
    leave
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
    .comm	i,4,4
    .section	.rodata
LC0:
    .string	"hello world"
LC1:
    .string	"bye"
LC2:
    .string	"hello\n"
LC3:
    .string	"f"
LC4:
    .string	"x"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$stdout, %rax
    movq	%rax, -32(%rbp)
    movq	$0, -24(%rbp)
    leaq	-32(%rbp), %rax
    movq	%rax, -48(%rbp)
    movq	$LC0, -40(%rbp)
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rsi
    movl	$10, %edi
    call	fputc
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rcx
    movl	$3, %edx
    movl	$1, %esi
    movl	$LC1, %edi
    call	fwrite
    movq	-48(%rbp), %rax
    movq	(%rax), %rdx
    movq	-40(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	fputs
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	-40(%rbp), %rdx
    addq	$5, %rdx
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	fputs
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	-40(%rbp), %rdx
    addq	$10, %rdx
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	fputs
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	-40(%rbp), %rdx
    addq	$11, %rdx
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	fputs
    movq	-48(%rbp), %rax
    addq	$8, %rax
    movq	%rax, -48(%rbp)
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-48(%rbp), %rax
    jne	L60
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L61
L60:
    call	abort
L61:
    leaq	-32(%rbp), %rax
    movq	%rax, -48(%rbp)
    movq	-48(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movq	(%rax), %rax
    movq	%rax, %rsi
    movl	$10, %edi
    call	fputc
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-48(%rbp), %rax
    jne	L62
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L63
L62:
    call	abort
L63:
    leaq	-32(%rbp), %rax
    movq	%rax, -48(%rbp)
    movq	-48(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movq	(%rax), %rax
    movq	%rax, %rcx
    movl	$6, %edx
    movl	$1, %esi
    movl	$LC2, %edi
    call	fwrite
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-48(%rbp), %rax
    jne	L64
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    je	L65
L64:
    call	abort
L65:
    leaq	-32(%rbp), %rax
    movq	%rax, -48(%rbp)
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rsi
    movl	$10, %edi
    call	fputc
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movq	%rax, %rcx
    movl	$6, %edx
    movl	$1, %esi
    movl	$LC2, %edi
    call	fwrite
    leaq	-32(%rbp), %rax
    movq	%rax, -48(%rbp)
    movq	-48(%rbp), %rax
    leaq	8(%rax), %rdx
    movq	%rdx, -48(%rbp)
    movq	(%rax), %rdx
    movl	i(%rip), %eax
    leal	1(%rax), %ecx
    movl	%ecx, i(%rip)
    testl	%eax, %eax
    je	L66
    movl	$LC3, %eax
    jmp	L67
L66:
    movl	$LC4, %eax
L67:
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	fputs
    leaq	-32(%rbp), %rax
    addq	$8, %rax
    cmpq	-48(%rbp), %rax
    jne	L68
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    testq	%rax, %rax
    jne	L68
    movl	i(%rip), %eax
    cmpl	$1, %eax
    je	L69
L68:
    call	abort
L69:
    subq	$8, -48(%rbp)
    movq	-48(%rbp), %rax
    movq	(%rax), %rax
    movl	i(%rip), %edx
    subl	$1, %edx
    movl	%edx, i(%rip)
    movq	%rax, %rsi
    movl	$10, %edi
    call	fputc
    leaq	-32(%rbp), %rax
    cmpq	%rax, -48(%rbp)
    jne	L70
    movl	i(%rip), %eax
    testl	%eax, %eax
    je	L73
L70:
    call	abort
L73:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L72
    call	__stack_chk_fail
L72:
    leave
    ret
