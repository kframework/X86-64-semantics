    .file	"strcat.c"
    .text
    .globl	strcat
strcat:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
    nop
L4:
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
    jne	L4
    movq	-24(%rbp), %rax
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
    jmp	L7
L8:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L7:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L8
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
    jmp	L11
L12:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L11:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L12
    movq	-24(%rbp), %rax
    popq	%rbp
    ret
    .globl	exit
exit:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    #APP
    # 42 "./src/lib/strcat.c" 1
    movq $-1, %rax
    jmp %rax
    
    # 0 "" 2
    #NO_APP
    nop
    popq	%rbp
    ret
    .globl	abort
abort:
    pushq	%rbp
    movq	%rsp, %rbp
    #APP
    # 47 "./src/lib/strcat.c" 1
    movq $-1, %rax
    jmp %rax
    
    # 0 "" 2
    #NO_APP
    nop
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
    je	L21
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L18
    movl	$0, %eax
    jmp	L16
L18:
    movq	-8(%rbp), %rax
    jmp	L16
L21:
L16:
    popq	%rbp
    ret
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L23
L24:
    addq	$1, -8(%rbp)
L23:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L24
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
L27:
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
    jne	L27
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L30
L32:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L30:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L31
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L32
L31:
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
    jne	L38
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L39
L38:
    call	abort
L39:
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
    jne	L40
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L41
L40:
    call	abort
L41:
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
    jne	L42
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L42
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L43
L42:
    call	abort
L43:
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
    jne	L44
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L44
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L45
L44:
    call	abort
L45:
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
    jne	L46
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L46
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L47
L46:
    call	abort
L47:
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
    jne	L48
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC3, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L49
L48:
    call	abort
L49:
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
    jne	L50
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC4, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L51
L50:
    call	abort
L51:
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
    jne	L52
    leaq	-80(%rbp), %rax
    addq	$1, %rax
    cmpq	-88(%rbp), %rax
    jne	L52
    leaq	-80(%rbp), %rax
    movl	$20, %edx
    movl	$LC5, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L53
L52:
    call	abort
L53:
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
    je	L54
    call	abort
L54:
    movl	$1, $inside_main(%rip)
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
    jne	L55
    leaq	-80(%rbp), %rax
    movl	$15, %edx
    movl	$LC2, %esi
    movq	%rax, %rdi
    call	memcmp
    testl	%eax, %eax
    je	L58
L55:
    call	abort
L58:
    nop
    movq	-8(%rbp), %rax
    xorq	$40, %rax
    je	L57
    call	__stack_chk_fail
L57:
    leave
    ret
