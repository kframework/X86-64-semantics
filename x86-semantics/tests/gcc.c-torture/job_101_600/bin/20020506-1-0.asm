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
    subq	$8, %rsp
    movl	%edi, %eax
    movl	%esi, -8(%rbp)
    movb	%al, -4(%rbp)
    cmpb	$0, -4(%rbp)
    js	L46
    cmpl	$0, -8(%rbp)
    je	L47
    call	abort
L46:
    cmpl	$0, -8(%rbp)
    jne	L47
    call	abort
L47:
    cmpb	$0, -4(%rbp)
    jns	L48
    cmpl	$0, -8(%rbp)
    jne	L49
    call	abort
L48:
    cmpl	$0, -8(%rbp)
    je	L49
    call	abort
L49:
    cmpb	$0, -4(%rbp)
    jns	L50
    cmpl	$0, -8(%rbp)
    jne	L51
    call	abort
L50:
    cmpl	$0, -8(%rbp)
    je	L51
    call	abort
L51:
    cmpb	$0, -4(%rbp)
    js	L52
    cmpl	$0, -8(%rbp)
    je	L54
    call	abort
L52:
    cmpl	$0, -8(%rbp)
    jne	L54
    call	abort
L54:
    nop
    leave
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, %eax
    movl	%esi, -8(%rbp)
    movb	%al, -4(%rbp)
    movzbl	-4(%rbp), %eax
    testb	%al, %al
    js	L56
    cmpl	$0, -8(%rbp)
    je	L57
    call	abort
L56:
    cmpl	$0, -8(%rbp)
    jne	L57
    call	abort
L57:
    movzbl	-4(%rbp), %eax
    testb	%al, %al
    jns	L58
    cmpl	$0, -8(%rbp)
    jne	L59
    call	abort
L58:
    cmpl	$0, -8(%rbp)
    je	L59
    call	abort
L59:
    movzbl	-4(%rbp), %eax
    testb	%al, %al
    jns	L60
    cmpl	$0, -8(%rbp)
    jne	L61
    call	abort
L60:
    cmpl	$0, -8(%rbp)
    je	L61
    call	abort
L61:
    movzbl	-4(%rbp), %eax
    testb	%al, %al
    js	L62
    cmpl	$0, -8(%rbp)
    je	L64
    call	abort
L62:
    cmpl	$0, -8(%rbp)
    jne	L64
    call	abort
L64:
    nop
    leave
    ret
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, %eax
    movl	%esi, -8(%rbp)
    movw	%ax, -4(%rbp)
    cmpw	$0, -4(%rbp)
    js	L66
    cmpl	$0, -8(%rbp)
    je	L67
    call	abort
L66:
    cmpl	$0, -8(%rbp)
    jne	L67
    call	abort
L67:
    cmpw	$0, -4(%rbp)
    jns	L68
    cmpl	$0, -8(%rbp)
    jne	L69
    call	abort
L68:
    cmpl	$0, -8(%rbp)
    je	L69
    call	abort
L69:
    cmpw	$0, -4(%rbp)
    jns	L70
    cmpl	$0, -8(%rbp)
    jne	L71
    call	abort
L70:
    cmpl	$0, -8(%rbp)
    je	L71
    call	abort
L71:
    cmpw	$0, -4(%rbp)
    js	L72
    cmpl	$0, -8(%rbp)
    je	L74
    call	abort
L72:
    cmpl	$0, -8(%rbp)
    jne	L74
    call	abort
L74:
    nop
    leave
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, %eax
    movl	%esi, -8(%rbp)
    movw	%ax, -4(%rbp)
    movzwl	-4(%rbp), %eax
    testw	%ax, %ax
    js	L76
    cmpl	$0, -8(%rbp)
    je	L77
    call	abort
L76:
    cmpl	$0, -8(%rbp)
    jne	L77
    call	abort
L77:
    movzwl	-4(%rbp), %eax
    testw	%ax, %ax
    jns	L78
    cmpl	$0, -8(%rbp)
    jne	L79
    call	abort
L78:
    cmpl	$0, -8(%rbp)
    je	L79
    call	abort
L79:
    movzwl	-4(%rbp), %eax
    testw	%ax, %ax
    jns	L80
    cmpl	$0, -8(%rbp)
    jne	L81
    call	abort
L80:
    cmpl	$0, -8(%rbp)
    je	L81
    call	abort
L81:
    movzwl	-4(%rbp), %eax
    testw	%ax, %ax
    js	L82
    cmpl	$0, -8(%rbp)
    je	L84
    call	abort
L82:
    cmpl	$0, -8(%rbp)
    jne	L84
    call	abort
L84:
    nop
    leave
    ret
    .globl	test5
test5:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    cmpl	$0, -4(%rbp)
    js	L86
    cmpl	$0, -8(%rbp)
    je	L87
    call	abort
L86:
    cmpl	$0, -8(%rbp)
    jne	L87
    call	abort
L87:
    cmpl	$0, -4(%rbp)
    jns	L88
    cmpl	$0, -8(%rbp)
    jne	L89
    call	abort
L88:
    cmpl	$0, -8(%rbp)
    je	L89
    call	abort
L89:
    cmpl	$0, -4(%rbp)
    jns	L90
    cmpl	$0, -8(%rbp)
    jne	L91
    call	abort
L90:
    cmpl	$0, -8(%rbp)
    je	L91
    call	abort
L91:
    cmpl	$0, -4(%rbp)
    js	L92
    cmpl	$0, -8(%rbp)
    je	L94
    call	abort
L92:
    cmpl	$0, -8(%rbp)
    jne	L94
    call	abort
L94:
    nop
    leave
    ret
    .globl	test6
test6:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    js	L96
    cmpl	$0, -8(%rbp)
    je	L97
    call	abort
L96:
    cmpl	$0, -8(%rbp)
    jne	L97
    call	abort
L97:
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    jns	L98
    cmpl	$0, -8(%rbp)
    jne	L99
    call	abort
L98:
    cmpl	$0, -8(%rbp)
    je	L99
    call	abort
L99:
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    jns	L100
    cmpl	$0, -8(%rbp)
    jne	L101
    call	abort
L100:
    cmpl	$0, -8(%rbp)
    je	L101
    call	abort
L101:
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    js	L102
    cmpl	$0, -8(%rbp)
    je	L104
    call	abort
L102:
    cmpl	$0, -8(%rbp)
    jne	L104
    call	abort
L104:
    nop
    leave
    ret
    .globl	test7
test7:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    cmpq	$0, -8(%rbp)
    js	L106
    cmpl	$0, -12(%rbp)
    je	L107
    call	abort
L106:
    cmpl	$0, -12(%rbp)
    jne	L107
    call	abort
L107:
    cmpq	$0, -8(%rbp)
    jns	L108
    cmpl	$0, -12(%rbp)
    jne	L109
    call	abort
L108:
    cmpl	$0, -12(%rbp)
    je	L109
    call	abort
L109:
    cmpq	$0, -8(%rbp)
    jns	L110
    cmpl	$0, -12(%rbp)
    jne	L111
    call	abort
L110:
    cmpl	$0, -12(%rbp)
    je	L111
    call	abort
L111:
    cmpq	$0, -8(%rbp)
    js	L112
    cmpl	$0, -12(%rbp)
    je	L114
    call	abort
L112:
    cmpl	$0, -12(%rbp)
    jne	L114
    call	abort
L114:
    nop
    leave
    ret
    .globl	test8
test8:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L116
    cmpl	$0, -12(%rbp)
    je	L117
    call	abort
L116:
    cmpl	$0, -12(%rbp)
    jne	L117
    call	abort
L117:
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    jns	L118
    cmpl	$0, -12(%rbp)
    jne	L119
    call	abort
L118:
    cmpl	$0, -12(%rbp)
    je	L119
    call	abort
L119:
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    jns	L120
    cmpl	$0, -12(%rbp)
    jne	L121
    call	abort
L120:
    cmpl	$0, -12(%rbp)
    je	L121
    call	abort
L121:
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L122
    cmpl	$0, -12(%rbp)
    je	L124
    call	abort
L122:
    cmpl	$0, -12(%rbp)
    jne	L124
    call	abort
L124:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %esi
    movl	$0, %edi
    call	test1
    movl	$0, %esi
    movl	$127, %edi
    call	test1
    movl	$1, %esi
    movl	$-128, %edi
    call	test1
    movl	$1, %esi
    movl	$-1, %edi
    call	test1
    movl	$0, %esi
    movl	$0, %edi
    call	test2
    movl	$0, %esi
    movl	$127, %edi
    call	test2
    movl	$1, %esi
    movl	$128, %edi
    call	test2
    movl	$1, %esi
    movl	$255, %edi
    call	test2
    movl	$0, %esi
    movl	$0, %edi
    call	test3
    movl	$0, %esi
    movl	$32767, %edi
    call	test3
    movl	$1, %esi
    movl	$-32768, %edi
    call	test3
    movl	$1, %esi
    movl	$-1, %edi
    call	test3
    movl	$0, %esi
    movl	$0, %edi
    call	test4
    movl	$0, %esi
    movl	$32767, %edi
    call	test4
    movl	$1, %esi
    movl	$32768, %edi
    call	test4
    movl	$1, %esi
    movl	$65535, %edi
    call	test4
    movl	$0, %esi
    movl	$0, %edi
    call	test5
    movl	$0, %esi
    movl	$2147483647, %edi
    call	test5
    movl	$1, %esi
    movl	$-2147483648, %edi
    call	test5
    movl	$1, %esi
    movl	$-1, %edi
    call	test5
    movl	$0, %esi
    movl	$0, %edi
    call	test6
    movl	$0, %esi
    movl	$2147483647, %edi
    call	test6
    movl	$1, %esi
    movl	$-2147483648, %edi
    call	test6
    movl	$1, %esi
    movl	$-1, %edi
    call	test6
    movl	$0, %esi
    movl	$0, %edi
    call	test7
    movl	$0, %esi
    movabsq	$9223372036854775807, %rdi
    call	test7
    movl	$1, %esi
    movabsq	$-9223372036854775808, %rdi
    call	test7
    movl	$1, %esi
    movq	$-1, %rdi
    call	test7
    movl	$0, %esi
    movl	$0, %edi
    call	test8
    movl	$0, %esi
    movabsq	$9223372036854775807, %rdi
    call	test8
    movl	$1, %esi
    movabsq	$-9223372036854775808, %rdi
    call	test8
    movl	$1, %esi
    movq	$-1, %rdi
    call	test8
    movl	$0, %eax
    popq	%rbp
    ret
