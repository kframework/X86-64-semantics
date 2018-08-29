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
    jmp	L20
L23:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L21
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L22
L21:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
    movl	$0, %eax
L22:
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
    jmp	L28
L29:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L29
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
    jmp	L32
L33:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    jle	L41
    cmpl	$122, -4(%rbp)
    jg	L41
    movl	$1, %eax
    jmp	L42
L41:
    cmpl	$64, -4(%rbp)
    jle	L43
    cmpl	$90, -4(%rbp)
    jg	L43
    movl	$1, %eax
    jmp	L42
L43:
    cmpl	$47, -4(%rbp)
    jle	L44
    cmpl	$57, -4(%rbp)
    jg	L44
    movl	$1, %eax
    jmp	L42
L44:
    movl	$0, %eax
L42:
    popq	%rbp
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	(%rax), %rax
    leaq	1(%rax), %rcx
    movq	-8(%rbp), %rdx
    movq	%rcx, (%rdx)
    movzbl	(%rax), %eax
    movsbl	%al, %eax
    popq	%rbp
    ret
    .globl	baz
baz:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$64, -4(%rbp)
    setne	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$40, %rsp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movl	%ecx, %eax
    movb	%dl, -36(%rbp)
    movb	%al, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, %rdi
    call	bar
    movb	%al, -5(%rbp)
    movl	$0, -4(%rbp)
L54:
    movl	-4(%rbp), %eax
    leal	1(%rax), %edx
    movl	%edx, -4(%rbp)
    movslq	%eax, %rdx
    movq	-32(%rbp), %rax
    addq	%rax, %rdx
    movzbl	-5(%rbp), %eax
    movb	%al, (%rdx)
    movq	-24(%rbp), %rax
    movq	%rax, %rdi
    call	bar
    movb	%al, -5(%rbp)
    cmpb	$0, -36(%rbp)
    je	L50
    cmpb	$39, -5(%rbp)
    je	L55
L50:
    cmpb	$0, -40(%rbp)
    je	L52
    cmpb	$34, -5(%rbp)
    je	L56
L52:
    movzbl	-36(%rbp), %eax
    xorl	$1, %eax
    testb	%al, %al
    je	L54
    movzbl	-40(%rbp), %eax
    xorl	$1, %eax
    testb	%al, %al
    je	L54
    movsbl	-5(%rbp), %eax
    movl	%eax, %edi
    call	baz
    testl	%eax, %eax
    je	L57
    jmp	L54
L55:
    nop
    jmp	L51
L56:
    nop
    jmp	L51
L57:
    nop
L51:
    movl	-4(%rbp), %eax
    movslq	%eax, %rdx
    movq	-32(%rbp), %rax
    addq	%rdx, %rax
    movb	$0, (%rax)
    nop
    leave
    ret
    .section	.rodata
LC0:
    .string	"abcde'fgh"
LC1:
    .string	"fgh"
LC2:
    .string	"abcde"
LC3:
    .string	"ABCDEFG\"HI"
LC4:
    .string	"HI"
LC5:
    .string	"ABCDEFG"
LC6:
    .string	"abcd\"e'fgh"
LC7:
    .string	"e'fgh"
LC8:
    .string	"abcd"
LC9:
    .string	"ABCDEF'G\"HI"
LC10:
    .string	"G\"HI"
LC11:
    .string	"ABCDEF"
LC12:
    .string	"abcdef@gh"
LC13:
    .string	"gh"
LC14:
    .string	"abcdef"
    .text
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$96, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC0, -88(%rbp)
    leaq	-80(%rbp), %rsi
    leaq	-88(%rbp), %rax
    movl	$0, %ecx
    movl	$1, %edx
    movq	%rax, %rdi
    call	foo
    movq	-88(%rbp), %rax
    movl	$LC1, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    jne	L59
    leaq	-80(%rbp), %rax
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L60
L59:
    call	abort
L60:
    movq	$LC3, -88(%rbp)
    leaq	-80(%rbp), %rsi
    leaq	-88(%rbp), %rax
    movl	$1, %ecx
    movl	$0, %edx
    movq	%rax, %rdi
    call	foo
    movq	-88(%rbp), %rax
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    jne	L61
    leaq	-80(%rbp), %rax
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L62
L61:
    call	abort
L62:
    movq	$LC6, -88(%rbp)
    leaq	-80(%rbp), %rsi
    leaq	-88(%rbp), %rax
    movl	$1, %ecx
    movl	$1, %edx
    movq	%rax, %rdi
    call	foo
    movq	-88(%rbp), %rax
    movl	$LC7, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    jne	L63
    leaq	-80(%rbp), %rax
    movl	$LC8, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L64
L63:
    call	abort
L64:
    movq	$LC9, -88(%rbp)
    leaq	-80(%rbp), %rsi
    leaq	-88(%rbp), %rax
    movl	$1, %ecx
    movl	$1, %edx
    movq	%rax, %rdi
    call	foo
    movq	-88(%rbp), %rax
    movl	$LC10, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    jne	L65
    leaq	-80(%rbp), %rax
    movl	$LC11, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L66
L65:
    call	abort
L66:
    movq	$LC12, -88(%rbp)
    leaq	-80(%rbp), %rsi
    leaq	-88(%rbp), %rax
    movl	$0, %ecx
    movl	$0, %edx
    movq	%rax, %rdi
    call	foo
    movq	-88(%rbp), %rax
    movl	$LC13, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    jne	L67
    leaq	-80(%rbp), %rax
    movl	$LC14, %esi
    movq	%rax, %rdi
    call	strcmp
    testl	%eax, %eax
    je	L68
L67:
    call	abort
L68:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L70
    call	__stack_chk_fail
L70:
    leave
    ret
