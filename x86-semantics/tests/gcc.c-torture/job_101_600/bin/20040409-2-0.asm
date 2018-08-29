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
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    xorl	$-2147478988, %eax
    popq	%rbp
    ret
    .globl	test1u
test1u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    xorl	$-2147478988, %eax
    popq	%rbp
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    xorl	$-2147478988, %eax
    popq	%rbp
    ret
    .globl	test2u
test2u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    xorl	$-2147478988, %eax
    popq	%rbp
    ret
    .globl	test3u
test3u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    addl	$-2147483648, %eax
    xorl	$4660, %eax
    popq	%rbp
    ret
    .globl	test4u
test4u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    xorl	$4660, %eax
    addl	$-2147483648, %eax
    popq	%rbp
    ret
    .globl	test5u
test5u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    addl	$-2147483648, %eax
    xorl	$4660, %eax
    popq	%rbp
    ret
    .globl	test6u
test6u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    xorl	$4660, %eax
    addl	$-2147483648, %eax
    popq	%rbp
    ret
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$-2147483648, -8(%rbp)
    movl	$4660, -4(%rbp)
    movl	-20(%rbp), %eax
    xorl	-8(%rbp), %eax
    xorl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	test7u
test7u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$-2147483648, -8(%rbp)
    movl	$4660, -4(%rbp)
    movl	-20(%rbp), %eax
    xorl	-8(%rbp), %eax
    xorl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	test8
test8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$4660, -8(%rbp)
    movl	$-2147483648, -4(%rbp)
    movl	-20(%rbp), %eax
    xorl	-8(%rbp), %eax
    xorl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	test8u
test8u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$4660, -8(%rbp)
    movl	$-2147483648, -4(%rbp)
    movl	-20(%rbp), %eax
    xorl	-8(%rbp), %eax
    xorl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	test9u
test9u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$-2147483648, -8(%rbp)
    movl	$4660, -4(%rbp)
    movl	-20(%rbp), %edx
    movl	-8(%rbp), %eax
    addl	%edx, %eax
    xorl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	test10u
test10u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$4660, -8(%rbp)
    movl	$-2147483648, -4(%rbp)
    movl	-20(%rbp), %eax
    xorl	-8(%rbp), %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    popq	%rbp
    ret
    .globl	test11u
test11u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$-2147483648, -8(%rbp)
    movl	$4660, -4(%rbp)
    movl	-20(%rbp), %eax
    subl	-8(%rbp), %eax
    xorl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	test12u
test12u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	$4660, -8(%rbp)
    movl	$-2147483648, -4(%rbp)
    movl	-20(%rbp), %eax
    xorl	-8(%rbp), %eax
    subl	-4(%rbp), %eax
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
    je	L78
    call	abort
L78:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test2
    cmpl	-8(%rbp), %eax
    je	L79
    call	abort
L79:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test7
    cmpl	-8(%rbp), %eax
    je	L80
    call	abort
L80:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test8
    cmpl	-8(%rbp), %eax
    je	L82
    call	abort
L82:
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
    je	L84
    call	abort
L84:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test2u
    cmpl	-8(%rbp), %eax
    je	L85
    call	abort
L85:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test3u
    cmpl	-8(%rbp), %eax
    je	L86
    call	abort
L86:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test4u
    cmpl	-8(%rbp), %eax
    je	L87
    call	abort
L87:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test5u
    cmpl	-8(%rbp), %eax
    je	L88
    call	abort
L88:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test6u
    cmpl	-8(%rbp), %eax
    je	L89
    call	abort
L89:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test7u
    cmpl	-8(%rbp), %eax
    je	L90
    call	abort
L90:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test8u
    cmpl	-8(%rbp), %eax
    je	L91
    call	abort
L91:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test9u
    cmpl	-8(%rbp), %eax
    je	L92
    call	abort
L92:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test10u
    cmpl	-8(%rbp), %eax
    je	L93
    call	abort
L93:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test11u
    cmpl	-8(%rbp), %eax
    je	L94
    call	abort
L94:
    movl	-4(%rbp), %eax
    movl	%eax, %edi
    call	test12u
    cmpl	-8(%rbp), %eax
    je	L96
    call	abort
L96:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$-2147478988, %esi
    movl	$0, %edi
    call	test
    movl	$-2147483648, %esi
    movl	$4660, %edi
    call	test
    movl	$4660, %esi
    movl	$-2147483648, %edi
    call	test
    movl	$0, %esi
    movl	$-2147478988, %edi
    call	test
    movl	$-4661, %esi
    movl	$2147483647, %edi
    call	test
    movl	$2147478987, %esi
    movl	$-1, %edi
    call	test
    movl	$-2147478988, %esi
    movl	$0, %edi
    call	testu
    movl	$-2147483648, %esi
    movl	$4660, %edi
    call	testu
    movl	$4660, %esi
    movl	$-2147483648, %edi
    call	testu
    movl	$0, %esi
    movl	$-2147478988, %edi
    call	testu
    movl	$-4661, %esi
    movl	$2147483647, %edi
    call	testu
    movl	$2147478987, %esi
    movl	$-1, %edi
    call	testu
    movl	$0, %eax
    popq	%rbp
    ret
