    .text
    .globl	strlen
strlen:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	$0, -8(%rbp)
    jmp	L2
L3:
    addq	$1, -8(%rbp)
L2:
    movq	-24(%rbp), %rdx
    movq	-8(%rbp), %rax
    addq	%rdx, %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L3
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
L6:
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
    jne	L6
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	strcmp
strcmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    jmp	L9
L11:
    addq	$1, -8(%rbp)
    addq	$1, -16(%rbp)
L9:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    testb	%al, %al
    je	L10
    movq	-8(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L11
L10:
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
    .globl	strchr
strchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    jmp	L14
L16:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L14
    movl	$0, %eax
    jmp	L15
L14:
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-12(%rbp), %edx
    cmpb	%dl, %al
    jne	L16
    movq	-8(%rbp), %rax
L15:
    popq	%rbp
    ret
    .globl	strncpy
strncpy:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movq	%rsi, -32(%rbp)
    movq	%rdx, -40(%rbp)
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L20:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L18
    movq	-8(%rbp), %rax
    jmp	L19
L18:
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
    jne	L20
    jmp	L21
L22:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movb	$0, (%rax)
L21:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L22
    movq	-8(%rbp), %rax
L19:
    popq	%rbp
    ret
    .globl	strncmp
strncmp:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    movq	%rdx, -24(%rbp)
    jmp	L24
L26:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movzbl	(%rax), %ecx
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movzbl	(%rax), %eax
    cmpb	%al, %cl
    je	L24
    movq	-8(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-16(%rbp), %rax
    subq	$1, %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L25
L24:
    movq	-24(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    testq	%rax, %rax
    jne	L26
    movl	$0, %eax
L25:
    popq	%rbp
    ret
    .globl	strrchr
strrchr:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	%esi, -28(%rbp)
    movq	$0, -8(%rbp)
L29:
    movq	-24(%rbp), %rax
    movzbl	(%rax), %eax
    movl	-28(%rbp), %edx
    cmpb	%dl, %al
    jne	L28
    movq	-24(%rbp), %rax
    movq	%rax, -8(%rbp)
L28:
    movq	-24(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -24(%rbp)
    movzbl	(%rax), %eax
    testb	%al, %al
    jne	L29
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
    jmp	L32
L35:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L33
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L34
L33:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L32:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L35
    movl	$0, %eax
L34:
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
    jmp	L40
L41:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L40:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L41
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
    jmp	L44
L45:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
    movb	%dl, (%rax)
L44:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L45
    movq	-24(%rbp), %rax
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
    jle	L49
    cmpl	$122, -4(%rbp)
    jg	L49
    movl	$1, %eax
    jmp	L50
L49:
    cmpl	$64, -4(%rbp)
    jle	L51
    cmpl	$90, -4(%rbp)
    jg	L51
    movl	$1, %eax
    jmp	L50
L51:
    cmpl	$47, -4(%rbp)
    jle	L52
    cmpl	$57, -4(%rbp)
    jg	L52
    movl	$1, %eax
    jmp	L50
L52:
    movl	$0, %eax
L50:
    popq	%rbp
    ret
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    addl	$29, %eax
    cmpl	$9, %eax
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    addl	$9, %eax
    cmpl	$18, %eax
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    addl	$29, %eax
    cmpl	$9, %eax
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    addl	$9, %eax
    cmpl	$18, %eax
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$-19, -4(%rbp)
    setge	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$9, -4(%rbp)
    setg	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$-29, -4(%rbp)
    setge	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test8
test8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$-9, -4(%rbp)
    setge	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test9
test9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$-29, -4(%rbp)
    setl	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test10
test10:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$-9, -4(%rbp)
    setl	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test11
test11:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$-19, -4(%rbp)
    setl	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test12
test12:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$9, -4(%rbp)
    setle	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$-30, %edi
    call	test1
    testl	%eax, %eax
    je	L78
    call	abort
L78:
    movl	$-29, %edi
    call	test1
    cmpl	$1, %eax
    je	L79
    call	abort
L79:
    movl	$-20, %edi
    call	test1
    cmpl	$1, %eax
    je	L80
    call	abort
L80:
    movl	$-19, %edi
    call	test1
    testl	%eax, %eax
    je	L81
    call	abort
L81:
    movl	$0, %edi
    call	test2
    cmpl	$1, %eax
    je	L82
    call	abort
L82:
    movl	$9, %edi
    call	test2
    cmpl	$1, %eax
    je	L83
    call	abort
L83:
    movl	$10, %edi
    call	test2
    testl	%eax, %eax
    je	L84
    call	abort
L84:
    movl	$-1, %edi
    call	test2
    cmpl	$1, %eax
    je	L85
    call	abort
L85:
    movl	$-9, %edi
    call	test2
    cmpl	$1, %eax
    je	L86
    call	abort
L86:
    movl	$-10, %edi
    call	test2
    testl	%eax, %eax
    je	L87
    call	abort
L87:
    movl	$-30, %edi
    call	test3
    cmpl	$1, %eax
    je	L88
    call	abort
L88:
    movl	$-29, %edi
    call	test3
    testl	%eax, %eax
    je	L89
    call	abort
L89:
    movl	$-20, %edi
    call	test3
    testl	%eax, %eax
    je	L90
    call	abort
L90:
    movl	$-19, %edi
    call	test3
    cmpl	$1, %eax
    je	L91
    call	abort
L91:
    movl	$0, %edi
    call	test4
    testl	%eax, %eax
    je	L92
    call	abort
L92:
    movl	$9, %edi
    call	test4
    testl	%eax, %eax
    je	L93
    call	abort
L93:
    movl	$10, %edi
    call	test4
    cmpl	$1, %eax
    je	L94
    call	abort
L94:
    movl	$-1, %edi
    call	test4
    testl	%eax, %eax
    je	L95
    call	abort
L95:
    movl	$-9, %edi
    call	test4
    testl	%eax, %eax
    je	L96
    call	abort
L96:
    movl	$-10, %edi
    call	test4
    cmpl	$1, %eax
    je	L97
    call	abort
L97:
    movl	$-30, %edi
    call	test5
    testl	%eax, %eax
    je	L98
    call	abort
L98:
    movl	$-29, %edi
    call	test5
    testl	%eax, %eax
    je	L99
    call	abort
L99:
    movl	$-20, %edi
    call	test5
    testl	%eax, %eax
    je	L100
    call	abort
L100:
    movl	$-19, %edi
    call	test5
    cmpl	$1, %eax
    je	L101
    call	abort
L101:
    movl	$0, %edi
    call	test6
    testl	%eax, %eax
    je	L102
    call	abort
L102:
    movl	$9, %edi
    call	test6
    testl	%eax, %eax
    je	L103
    call	abort
L103:
    movl	$10, %edi
    call	test6
    cmpl	$1, %eax
    je	L104
    call	abort
L104:
    movl	$-1, %edi
    call	test6
    testl	%eax, %eax
    je	L105
    call	abort
L105:
    movl	$-9, %edi
    call	test6
    testl	%eax, %eax
    je	L106
    call	abort
L106:
    movl	$-10, %edi
    call	test6
    testl	%eax, %eax
    je	L107
    call	abort
L107:
    movl	$-30, %edi
    call	test7
    testl	%eax, %eax
    je	L108
    call	abort
L108:
    movl	$-29, %edi
    call	test7
    cmpl	$1, %eax
    je	L109
    call	abort
L109:
    movl	$-20, %edi
    call	test7
    cmpl	$1, %eax
    je	L110
    call	abort
L110:
    movl	$-19, %edi
    call	test7
    cmpl	$1, %eax
    je	L111
    call	abort
L111:
    movl	$0, %edi
    call	test8
    cmpl	$1, %eax
    je	L112
    call	abort
L112:
    movl	$9, %edi
    call	test8
    cmpl	$1, %eax
    je	L113
    call	abort
L113:
    movl	$10, %edi
    call	test8
    cmpl	$1, %eax
    je	L114
    call	abort
L114:
    movl	$-1, %edi
    call	test8
    cmpl	$1, %eax
    je	L115
    call	abort
L115:
    movl	$-9, %edi
    call	test8
    cmpl	$1, %eax
    je	L116
    call	abort
L116:
    movl	$-10, %edi
    call	test8
    testl	%eax, %eax
    je	L117
    call	abort
L117:
    movl	$-30, %edi
    call	test9
    cmpl	$1, %eax
    je	L118
    call	abort
L118:
    movl	$-29, %edi
    call	test9
    testl	%eax, %eax
    je	L119
    call	abort
L119:
    movl	$-20, %edi
    call	test9
    testl	%eax, %eax
    je	L120
    call	abort
L120:
    movl	$-19, %edi
    call	test9
    testl	%eax, %eax
    je	L121
    call	abort
L121:
    movl	$0, %edi
    call	test10
    testl	%eax, %eax
    je	L122
    call	abort
L122:
    movl	$9, %edi
    call	test10
    testl	%eax, %eax
    je	L123
    call	abort
L123:
    movl	$10, %edi
    call	test10
    testl	%eax, %eax
    je	L124
    call	abort
L124:
    movl	$-1, %edi
    call	test10
    testl	%eax, %eax
    je	L125
    call	abort
L125:
    movl	$-9, %edi
    call	test10
    testl	%eax, %eax
    je	L126
    call	abort
L126:
    movl	$-10, %edi
    call	test10
    cmpl	$1, %eax
    je	L127
    call	abort
L127:
    movl	$-30, %edi
    call	test11
    cmpl	$1, %eax
    je	L128
    call	abort
L128:
    movl	$-29, %edi
    call	test11
    cmpl	$1, %eax
    je	L129
    call	abort
L129:
    movl	$-20, %edi
    call	test11
    cmpl	$1, %eax
    je	L130
    call	abort
L130:
    movl	$-19, %edi
    call	test11
    testl	%eax, %eax
    je	L131
    call	abort
L131:
    movl	$0, %edi
    call	test12
    cmpl	$1, %eax
    je	L132
    call	abort
L132:
    movl	$9, %edi
    call	test12
    cmpl	$1, %eax
    je	L133
    call	abort
L133:
    movl	$10, %edi
    call	test12
    testl	%eax, %eax
    je	L134
    call	abort
L134:
    movl	$-1, %edi
    call	test12
    cmpl	$1, %eax
    je	L135
    call	abort
L135:
    movl	$-9, %edi
    call	test12
    cmpl	$1, %eax
    je	L136
    call	abort
L136:
    movl	$-10, %edi
    call	test12
    cmpl	$1, %eax
    je	L137
    call	abort
L137:
    movl	$0, %eax
    popq	%rbp
    ret
