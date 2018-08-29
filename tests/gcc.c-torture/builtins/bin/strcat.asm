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
    .section	.rodata
LC0:
    .string	"hello world"
LC1:
    .string	""
LC2:
    .string	"hello world"
    .string	"XXX"
LC3:
    .string	"hello world 1111"
    .string	"XXX"
LC4:
    .string	"hello world 2222"
    .string	"XXX"
LC5:
    .string	"hello world 3333"
    .string	"XXX"
LC6:
    .string	"hello world: this is a test."
    .string	"X"
    .text
    .globl	main_test
main_test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$112, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$LC0, -104(%rbp)
    movq	$LC1, -96(%rbp)
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L54
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L55
L54:
    call	abort
L55:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    movq	-96(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L56
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L57
L56:
    call	abort
L57:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    movq	-96(%rbp), %rdx
    movq	-88(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	%rax, %rdx
    jne	L58
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L58
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L59
L58:
    call	abort
L59:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    movq	-88(%rbp), %rax
    leaq	5(%rax), %rdx
    movq	-96(%rbp), %rax
    movq	%rax, %rsi
    movq	%rdx, %rdi
    call	strcat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L60
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L60
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L61
L60:
    call	abort
L61:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    movq	-104(%rbp), %rax
    leaq	11(%rax), %rdx
    addq	$1, -88(%rbp)
    movq	-88(%rbp), %rax
    addq	$5, %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcat
    movq	%rax, %rdx
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L62
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L62
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L63
L62:
    call	abort
L63:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	$-1, %rcx
    movq	%rax, %rdx
    movl	$0, %eax
    movq	%rdx, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    leaq	-1(%rax), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    movl	$825307424, (%rax)
    movw	$49, 4(%rax)
    leaq	-80(%rbp), %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L64
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L65
L64:
    call	abort
L65:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rdx
    addq	$5, %rdx
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movl	$842150432, (%rax)
    movw	$50, 4(%rax)
    leaq	-80(%rbp), %rax
    addq	$5, %rax
    cmpq	%rax, %rdx
    jne	L66
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L67
L66:
    call	abort
L67:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	%rax, -88(%rbp)
    addq	$1, -88(%rbp)
    movq	-88(%rbp), %rax
    leaq	5(%rax), %rdx
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movl	$858993440, (%rax)
    movw	$51, 4(%rax)
    leaq	-80(%rbp), %rax
    addq	$6, %rax
    cmpq	%rax, %rdx
    jne	L68
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L68
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L69
L68:
    call	abort
L69:
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rax
    movq	$-1, %rcx
    movq	%rax, %rdx
    movl	$0, %eax
    movq	%rdx, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    leaq	-1(%rax), %rdx
    leaq	-80(%rbp), %rax
    addq	%rdx, %rax
    movabsq	$9134095815942202, %rcx
    movq	%rcx, (%rax)
    leaq	-80(%rbp), %rdx
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movl	$2126697, (%rax)
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movw	$8289, (%rax)
    movb	$0, 2(%rax)
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movl	$1953719668, (%rax)
    movb	$0, 4(%rax)
    movq	%rdx, %rax
    movq	$-1, %rcx
    movq	%rax, %rsi
    movl	$0, %eax
    movq	%rsi, %rdi
    repnz scasb
    movq	%rcx, %rax
    notq	%rax
    subq	$1, %rax
    addq	%rdx, %rax
    movw	$46, (%rax)
    leaq	-80(%rbp), %rax
    movl	$30, %edx
    movl	$LC6, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L70
    call	abort
L70:
    movl	$1, inside_main(%rip)
    leaq	-80(%rbp), %rax
    movl	$64, %edx
    movl	$88, %esi
    movq	%rax, %rdi
    call	memset
    movq	-104(%rbp), %rdx
    leaq	-80(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	strcpy
    leaq	-80(%rbp), %rdx
    leaq	-80(%rbp), %rax
    cmpq	%rax, %rdx
    jne	L71
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L74
L71:
    call	abort
L74:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L73
    call	__stack_chk_fail
L73:
    leave
    ret
