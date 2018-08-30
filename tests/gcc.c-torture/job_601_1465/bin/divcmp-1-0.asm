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
    subl	$20, %eax
    cmpl	$9, %eax
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test1u
test1u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    subl	$20, %eax
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
    .globl	test2u
test2u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$9, -4(%rbp)
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
    subl	$20, %eax
    cmpl	$9, %eax
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test3u
test3u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	-4(%rbp), %eax
    subl	$20, %eax
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
    .globl	test4u
test4u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$9, -4(%rbp)
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$19, -4(%rbp)
    setle	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test5u
test5u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$19, -4(%rbp)
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$-9, -4(%rbp)
    setl	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$29, -4(%rbp)
    setle	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test7u
test7u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$29, -4(%rbp)
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test8
test8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$9, -4(%rbp)
    setle	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test8u
test8u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$9, -4(%rbp)
    setbe	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test9
test9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$29, -4(%rbp)
    setg	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test9u
test9u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$29, -4(%rbp)
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test10
test10:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$9, -4(%rbp)
    setg	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test10u
test10u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$9, -4(%rbp)
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test11
test11:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$19, -4(%rbp)
    setg	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test11u
test11u:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$19, -4(%rbp)
    seta	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	test12
test12:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    cmpl	$-9, -4(%rbp)
    setge	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$19, %edi
    call	test1
    testl	%eax, %eax
    je	L98
    call	abort
L98:
    movl	$20, %edi
    call	test1
    cmpl	$1, %eax
    je	L99
    call	abort
L99:
    movl	$29, %edi
    call	test1
    cmpl	$1, %eax
    je	L100
    call	abort
L100:
    movl	$30, %edi
    call	test1
    testl	%eax, %eax
    je	L101
    call	abort
L101:
    movl	$19, %edi
    call	test1u
    testl	%eax, %eax
    je	L102
    call	abort
L102:
    movl	$20, %edi
    call	test1u
    cmpl	$1, %eax
    je	L103
    call	abort
L103:
    movl	$29, %edi
    call	test1u
    cmpl	$1, %eax
    je	L104
    call	abort
L104:
    movl	$30, %edi
    call	test1u
    testl	%eax, %eax
    je	L105
    call	abort
L105:
    movl	$0, %edi
    call	test2
    cmpl	$1, %eax
    je	L106
    call	abort
L106:
    movl	$9, %edi
    call	test2
    cmpl	$1, %eax
    je	L107
    call	abort
L107:
    movl	$10, %edi
    call	test2
    testl	%eax, %eax
    je	L108
    call	abort
L108:
    movl	$-1, %edi
    call	test2
    cmpl	$1, %eax
    je	L109
    call	abort
L109:
    movl	$-9, %edi
    call	test2
    cmpl	$1, %eax
    je	L110
    call	abort
L110:
    movl	$-10, %edi
    call	test2
    testl	%eax, %eax
    je	L111
    call	abort
L111:
    movl	$0, %edi
    call	test2u
    cmpl	$1, %eax
    je	L112
    call	abort
L112:
    movl	$9, %edi
    call	test2u
    cmpl	$1, %eax
    je	L113
    call	abort
L113:
    movl	$10, %edi
    call	test2u
    testl	%eax, %eax
    je	L114
    call	abort
L114:
    movl	$-1, %edi
    call	test2u
    testl	%eax, %eax
    je	L115
    call	abort
L115:
    movl	$-9, %edi
    call	test2u
    testl	%eax, %eax
    je	L116
    call	abort
L116:
    movl	$-10, %edi
    call	test2u
    testl	%eax, %eax
    je	L117
    call	abort
L117:
    movl	$19, %edi
    call	test3
    cmpl	$1, %eax
    je	L118
    call	abort
L118:
    movl	$20, %edi
    call	test3
    testl	%eax, %eax
    je	L119
    call	abort
L119:
    movl	$29, %edi
    call	test3
    testl	%eax, %eax
    je	L120
    call	abort
L120:
    movl	$30, %edi
    call	test3
    cmpl	$1, %eax
    je	L121
    call	abort
L121:
    movl	$19, %edi
    call	test3u
    cmpl	$1, %eax
    je	L122
    call	abort
L122:
    movl	$20, %edi
    call	test3u
    testl	%eax, %eax
    je	L123
    call	abort
L123:
    movl	$29, %edi
    call	test3u
    testl	%eax, %eax
    je	L124
    call	abort
L124:
    movl	$30, %edi
    call	test3u
    cmpl	$1, %eax
    je	L125
    call	abort
L125:
    movl	$0, %edi
    call	test4
    testl	%eax, %eax
    je	L126
    call	abort
L126:
    movl	$9, %edi
    call	test4
    testl	%eax, %eax
    je	L127
    call	abort
L127:
    movl	$10, %edi
    call	test4
    cmpl	$1, %eax
    je	L128
    call	abort
L128:
    movl	$-1, %edi
    call	test4
    testl	%eax, %eax
    je	L129
    call	abort
L129:
    movl	$-9, %edi
    call	test4
    testl	%eax, %eax
    je	L130
    call	abort
L130:
    movl	$-10, %edi
    call	test4
    cmpl	$1, %eax
    je	L131
    call	abort
L131:
    movl	$0, %edi
    call	test4u
    testl	%eax, %eax
    je	L132
    call	abort
L132:
    movl	$9, %edi
    call	test4u
    testl	%eax, %eax
    je	L133
    call	abort
L133:
    movl	$10, %edi
    call	test4u
    cmpl	$1, %eax
    je	L134
    call	abort
L134:
    movl	$-1, %edi
    call	test4u
    cmpl	$1, %eax
    je	L135
    call	abort
L135:
    movl	$-9, %edi
    call	test4u
    cmpl	$1, %eax
    je	L136
    call	abort
L136:
    movl	$-10, %edi
    call	test4u
    cmpl	$1, %eax
    je	L137
    call	abort
L137:
    movl	$19, %edi
    call	test5
    cmpl	$1, %eax
    je	L138
    call	abort
L138:
    movl	$20, %edi
    call	test5
    testl	%eax, %eax
    je	L139
    call	abort
L139:
    movl	$29, %edi
    call	test5
    testl	%eax, %eax
    je	L140
    call	abort
L140:
    movl	$30, %edi
    call	test5
    testl	%eax, %eax
    je	L141
    call	abort
L141:
    movl	$19, %edi
    call	test5u
    cmpl	$1, %eax
    je	L142
    call	abort
L142:
    movl	$20, %edi
    call	test5u
    testl	%eax, %eax
    je	L143
    call	abort
L143:
    movl	$29, %edi
    call	test5u
    testl	%eax, %eax
    je	L144
    call	abort
L144:
    movl	$30, %edi
    call	test5u
    testl	%eax, %eax
    je	L145
    call	abort
L145:
    movl	$0, %edi
    call	test6
    testl	%eax, %eax
    je	L146
    call	abort
L146:
    movl	$9, %edi
    call	test6
    testl	%eax, %eax
    je	L147
    call	abort
L147:
    movl	$10, %edi
    call	test6
    testl	%eax, %eax
    je	L148
    call	abort
L148:
    movl	$-1, %edi
    call	test6
    testl	%eax, %eax
    je	L149
    call	abort
L149:
    movl	$-9, %edi
    call	test6
    testl	%eax, %eax
    je	L150
    call	abort
L150:
    movl	$-10, %edi
    call	test6
    cmpl	$1, %eax
    je	L151
    call	abort
L151:
    movl	$19, %edi
    call	test7
    cmpl	$1, %eax
    je	L152
    call	abort
L152:
    movl	$20, %edi
    call	test7
    cmpl	$1, %eax
    je	L153
    call	abort
L153:
    movl	$29, %edi
    call	test7
    cmpl	$1, %eax
    je	L154
    call	abort
L154:
    movl	$30, %edi
    call	test7
    testl	%eax, %eax
    je	L155
    call	abort
L155:
    movl	$19, %edi
    call	test7u
    cmpl	$1, %eax
    je	L156
    call	abort
L156:
    movl	$20, %edi
    call	test7u
    cmpl	$1, %eax
    je	L157
    call	abort
L157:
    movl	$29, %edi
    call	test7u
    cmpl	$1, %eax
    je	L158
    call	abort
L158:
    movl	$30, %edi
    call	test7u
    testl	%eax, %eax
    je	L159
    call	abort
L159:
    movl	$0, %edi
    call	test8
    cmpl	$1, %eax
    je	L160
    call	abort
L160:
    movl	$9, %edi
    call	test8
    cmpl	$1, %eax
    je	L161
    call	abort
L161:
    movl	$10, %edi
    call	test8
    testl	%eax, %eax
    je	L162
    call	abort
L162:
    movl	$-1, %edi
    call	test8
    cmpl	$1, %eax
    je	L163
    call	abort
L163:
    movl	$-9, %edi
    call	test8
    cmpl	$1, %eax
    je	L164
    call	abort
L164:
    movl	$-10, %edi
    call	test8
    cmpl	$1, %eax
    je	L165
    call	abort
L165:
    movl	$0, %edi
    call	test8u
    cmpl	$1, %eax
    je	L166
    call	abort
L166:
    movl	$9, %edi
    call	test8u
    cmpl	$1, %eax
    je	L167
    call	abort
L167:
    movl	$10, %edi
    call	test8u
    testl	%eax, %eax
    je	L168
    call	abort
L168:
    movl	$-1, %edi
    call	test8u
    testl	%eax, %eax
    je	L169
    call	abort
L169:
    movl	$-9, %edi
    call	test8u
    testl	%eax, %eax
    je	L170
    call	abort
L170:
    movl	$-10, %edi
    call	test8u
    testl	%eax, %eax
    je	L171
    call	abort
L171:
    movl	$19, %edi
    call	test9
    testl	%eax, %eax
    je	L172
    call	abort
L172:
    movl	$20, %edi
    call	test9
    testl	%eax, %eax
    je	L173
    call	abort
L173:
    movl	$29, %edi
    call	test9
    testl	%eax, %eax
    je	L174
    call	abort
L174:
    movl	$30, %edi
    call	test9
    cmpl	$1, %eax
    je	L175
    call	abort
L175:
    movl	$19, %edi
    call	test9u
    testl	%eax, %eax
    je	L176
    call	abort
L176:
    movl	$20, %edi
    call	test9u
    testl	%eax, %eax
    je	L177
    call	abort
L177:
    movl	$29, %edi
    call	test9u
    testl	%eax, %eax
    je	L178
    call	abort
L178:
    movl	$30, %edi
    call	test9u
    cmpl	$1, %eax
    je	L179
    call	abort
L179:
    movl	$0, %edi
    call	test10
    testl	%eax, %eax
    je	L180
    call	abort
L180:
    movl	$9, %edi
    call	test10
    testl	%eax, %eax
    je	L181
    call	abort
L181:
    movl	$10, %edi
    call	test10
    cmpl	$1, %eax
    je	L182
    call	abort
L182:
    movl	$-1, %edi
    call	test10
    testl	%eax, %eax
    je	L183
    call	abort
L183:
    movl	$-9, %edi
    call	test10
    testl	%eax, %eax
    je	L184
    call	abort
L184:
    movl	$-10, %edi
    call	test10
    testl	%eax, %eax
    je	L185
    call	abort
L185:
    movl	$0, %edi
    call	test10u
    testl	%eax, %eax
    je	L186
    call	abort
L186:
    movl	$9, %edi
    call	test10u
    testl	%eax, %eax
    je	L187
    call	abort
L187:
    movl	$10, %edi
    call	test10u
    cmpl	$1, %eax
    je	L188
    call	abort
L188:
    movl	$-1, %edi
    call	test10u
    cmpl	$1, %eax
    je	L189
    call	abort
L189:
    movl	$-9, %edi
    call	test10u
    cmpl	$1, %eax
    je	L190
    call	abort
L190:
    movl	$-10, %edi
    call	test10u
    cmpl	$1, %eax
    je	L191
    call	abort
L191:
    movl	$19, %edi
    call	test11
    testl	%eax, %eax
    je	L192
    call	abort
L192:
    movl	$20, %edi
    call	test11
    cmpl	$1, %eax
    je	L193
    call	abort
L193:
    movl	$29, %edi
    call	test11
    cmpl	$1, %eax
    je	L194
    call	abort
L194:
    movl	$30, %edi
    call	test11
    cmpl	$1, %eax
    je	L195
    call	abort
L195:
    movl	$19, %edi
    call	test11u
    testl	%eax, %eax
    je	L196
    call	abort
L196:
    movl	$20, %edi
    call	test11u
    cmpl	$1, %eax
    je	L197
    call	abort
L197:
    movl	$29, %edi
    call	test11u
    cmpl	$1, %eax
    je	L198
    call	abort
L198:
    movl	$30, %edi
    call	test11u
    cmpl	$1, %eax
    je	L199
    call	abort
L199:
    movl	$0, %edi
    call	test12
    cmpl	$1, %eax
    je	L200
    call	abort
L200:
    movl	$9, %edi
    call	test12
    cmpl	$1, %eax
    je	L201
    call	abort
L201:
    movl	$10, %edi
    call	test12
    cmpl	$1, %eax
    je	L202
    call	abort
L202:
    movl	$-1, %edi
    call	test12
    cmpl	$1, %eax
    je	L203
    call	abort
L203:
    movl	$-9, %edi
    call	test12
    cmpl	$1, %eax
    je	L204
    call	abort
L204:
    movl	$-10, %edi
    call	test12
    testl	%eax, %eax
    je	L205
    call	abort
L205:
    movl	$0, %eax
    popq	%rbp
    ret
