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
    jmp	L15
L18:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L16
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L17
L16:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L15:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movl	$0, %eax
L17:
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
    jmp	L22
L23:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L22:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L23
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
    jmp	L26
L27:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L26:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L27
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
    jle	L35
    cmpl	$122, -4(%rbp)
    jg	L35
    movl	$1, %eax
    jmp	L36
L35:
    cmpl	$64, -4(%rbp)
    jle	L37
    cmpl	$90, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L36
L37:
    cmpl	$47, -4(%rbp)
    jle	L38
    cmpl	$57, -4(%rbp)
    jg	L38
    movl	$1, %eax
    jmp	L36
L38:
    movl	$0, %eax
L36:
    popq	%rbp
    ret
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    xorl	$2147483647, %eax
    popq	%rbp
    ret
    .globl	test1u
test1u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    xorl	$2147483647, %eax
    popq	%rbp
    ret
    .globl	test2u
test2u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    addl	$-2147483648, %eax
    notl	%eax
    popq	%rbp
    ret
    .globl	test3u
test3u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    addl	$-2147483648, %eax
    notl	%eax
    popq	%rbp
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$-2147483648, -4(%rbp)
    movl	-20(%rbp), %eax
    xorl	-4(%rbp), %eax
    notl	%eax
    popq	%rbp
    ret
    .globl	test4u
test4u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$-2147483648, -4(%rbp)
    movl	-20(%rbp), %eax
    xorl	-4(%rbp), %eax
    notl	%eax
    popq	%rbp
    ret
    .globl	test5u
test5u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$-2147483648, -4(%rbp)
    movl	-20(%rbp), %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    notl	%eax
    popq	%rbp
    ret
    .globl	test6u
test6u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$-2147483648, -4(%rbp)
    movl	-20(%rbp), %eax
    subl	-4(%rbp), %eax
    notl	%eax
    popq	%rbp
    ret
    .globl	test
test:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test1
    cmpl	-8(%rbp), %eax
    je	L56
    call	abort
L56:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test4
    cmpl	-8(%rbp), %eax
    je	L58
    call	abort
L58:
    nop
    leave
    ret
    .globl	testu
testu:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test1u
    cmpl	-8(%rbp), %eax
    je	L60
    call	abort
L60:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test2u
    cmpl	-8(%rbp), %eax
    je	L61
    call	abort
L61:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test3u
    cmpl	-8(%rbp), %eax
    je	L62
    call	abort
L62:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test4u
    cmpl	-8(%rbp), %eax
    je	L63
    call	abort
L63:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test5u
    cmpl	-8(%rbp), %eax
    je	L64
    call	abort
L64:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test6u
    cmpl	-8(%rbp), %eax
    je	L66
    call	abort
L66:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$2147483647, %esi
    movl	$0, %edi
    call	test
    movl	$-1, %esi
    movl	$-2147483648, %edi
    call	test
    movl	$1842063751, %esi
    movl	$305419896, %edi
    call	test
    movl	$-305419897, %esi
    movl	$-1842063752, %edi
    call	test
    movl	$0, %esi
    movl	$2147483647, %edi
    call	test
    movl	$-2147483648, %esi
    movl	$-1, %edi
    call	test
    movl	$2147483647, %esi
    movl	$0, %edi
    call	testu
    movl	$-1, %esi
    movl	$-2147483648, %edi
    call	testu
    movl	$1842063751, %esi
    movl	$305419896, %edi
    call	testu
    movl	$-305419897, %esi
    movl	$-1842063752, %edi
    call	testu
    movl	$0, %esi
    movl	$2147483647, %edi
    call	testu
    movl	$-2147483648, %esi
    movl	$-1, %edi
    call	testu
    movl	$0, %eax
    popq	%rbp
    ret
