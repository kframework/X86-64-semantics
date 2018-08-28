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
    subq	$8, %rsp
    movl	%edi, %eax
    movl	%esi, -8(%rbp)
    movb	%al, -4(%rbp)
    cmpb	$0, -4(%rbp)
    js	L40
    cmpl	$0, -8(%rbp)
    je	L41
    call	abort
L40:
    cmpl	$0, -8(%rbp)
    jne	L41
    call	abort
L41:
    cmpb	$0, -4(%rbp)
    jns	L42
    cmpl	$0, -8(%rbp)
    jne	L43
    call	abort
L42:
    cmpl	$0, -8(%rbp)
    je	L43
    call	abort
L43:
    cmpb	$0, -4(%rbp)
    jns	L44
    cmpl	$0, -8(%rbp)
    jne	L45
    call	abort
L44:
    cmpl	$0, -8(%rbp)
    je	L45
    call	abort
L45:
    cmpb	$0, -4(%rbp)
    js	L46
    cmpl	$0, -8(%rbp)
    je	L48
    call	abort
L46:
    cmpl	$0, -8(%rbp)
    jne	L48
    call	abort
L48:
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
    js	L50
    cmpl	$0, -8(%rbp)
    je	L51
    call	abort
L50:
    cmpl	$0, -8(%rbp)
    jne	L51
    call	abort
L51:
    movzbl	-4(%rbp), %eax
    testb	%al, %al
    jns	L52
    cmpl	$0, -8(%rbp)
    jne	L53
    call	abort
L52:
    cmpl	$0, -8(%rbp)
    je	L53
    call	abort
L53:
    movzbl	-4(%rbp), %eax
    testb	%al, %al
    jns	L54
    cmpl	$0, -8(%rbp)
    jne	L55
    call	abort
L54:
    cmpl	$0, -8(%rbp)
    je	L55
    call	abort
L55:
    movzbl	-4(%rbp), %eax
    testb	%al, %al
    js	L56
    cmpl	$0, -8(%rbp)
    je	L58
    call	abort
L56:
    cmpl	$0, -8(%rbp)
    jne	L58
    call	abort
L58:
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
    js	L60
    cmpl	$0, -8(%rbp)
    je	L61
    call	abort
L60:
    cmpl	$0, -8(%rbp)
    jne	L61
    call	abort
L61:
    cmpw	$0, -4(%rbp)
    jns	L62
    cmpl	$0, -8(%rbp)
    jne	L63
    call	abort
L62:
    cmpl	$0, -8(%rbp)
    je	L63
    call	abort
L63:
    cmpw	$0, -4(%rbp)
    jns	L64
    cmpl	$0, -8(%rbp)
    jne	L65
    call	abort
L64:
    cmpl	$0, -8(%rbp)
    je	L65
    call	abort
L65:
    cmpw	$0, -4(%rbp)
    js	L66
    cmpl	$0, -8(%rbp)
    je	L68
    call	abort
L66:
    cmpl	$0, -8(%rbp)
    jne	L68
    call	abort
L68:
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
    js	L70
    cmpl	$0, -8(%rbp)
    je	L71
    call	abort
L70:
    cmpl	$0, -8(%rbp)
    jne	L71
    call	abort
L71:
    movzwl	-4(%rbp), %eax
    testw	%ax, %ax
    jns	L72
    cmpl	$0, -8(%rbp)
    jne	L73
    call	abort
L72:
    cmpl	$0, -8(%rbp)
    je	L73
    call	abort
L73:
    movzwl	-4(%rbp), %eax
    testw	%ax, %ax
    jns	L74
    cmpl	$0, -8(%rbp)
    jne	L75
    call	abort
L74:
    cmpl	$0, -8(%rbp)
    je	L75
    call	abort
L75:
    movzwl	-4(%rbp), %eax
    testw	%ax, %ax
    js	L76
    cmpl	$0, -8(%rbp)
    je	L78
    call	abort
L76:
    cmpl	$0, -8(%rbp)
    jne	L78
    call	abort
L78:
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
    js	L80
    cmpl	$0, -8(%rbp)
    je	L81
    call	abort
L80:
    cmpl	$0, -8(%rbp)
    jne	L81
    call	abort
L81:
    cmpl	$0, -4(%rbp)
    jns	L82
    cmpl	$0, -8(%rbp)
    jne	L83
    call	abort
L82:
    cmpl	$0, -8(%rbp)
    je	L83
    call	abort
L83:
    cmpl	$0, -4(%rbp)
    jns	L84
    cmpl	$0, -8(%rbp)
    jne	L85
    call	abort
L84:
    cmpl	$0, -8(%rbp)
    je	L85
    call	abort
L85:
    cmpl	$0, -4(%rbp)
    js	L86
    cmpl	$0, -8(%rbp)
    je	L88
    call	abort
L86:
    cmpl	$0, -8(%rbp)
    jne	L88
    call	abort
L88:
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
    js	L90
    cmpl	$0, -8(%rbp)
    je	L91
    call	abort
L90:
    cmpl	$0, -8(%rbp)
    jne	L91
    call	abort
L91:
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    jns	L92
    cmpl	$0, -8(%rbp)
    jne	L93
    call	abort
L92:
    cmpl	$0, -8(%rbp)
    je	L93
    call	abort
L93:
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    jns	L94
    cmpl	$0, -8(%rbp)
    jne	L95
    call	abort
L94:
    cmpl	$0, -8(%rbp)
    je	L95
    call	abort
L95:
    movl	-4(%rbp), %eax
    testl	%eax, %eax
    js	L96
    cmpl	$0, -8(%rbp)
    je	L98
    call	abort
L96:
    cmpl	$0, -8(%rbp)
    jne	L98
    call	abort
L98:
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
    js	L100
    cmpl	$0, -12(%rbp)
    je	L101
    call	abort
L100:
    cmpl	$0, -12(%rbp)
    jne	L101
    call	abort
L101:
    cmpq	$0, -8(%rbp)
    jns	L102
    cmpl	$0, -12(%rbp)
    jne	L103
    call	abort
L102:
    cmpl	$0, -12(%rbp)
    je	L103
    call	abort
L103:
    cmpq	$0, -8(%rbp)
    jns	L104
    cmpl	$0, -12(%rbp)
    jne	L105
    call	abort
L104:
    cmpl	$0, -12(%rbp)
    je	L105
    call	abort
L105:
    cmpq	$0, -8(%rbp)
    js	L106
    cmpl	$0, -12(%rbp)
    je	L108
    call	abort
L106:
    cmpl	$0, -12(%rbp)
    jne	L108
    call	abort
L108:
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
    js	L110
    cmpl	$0, -12(%rbp)
    je	L111
    call	abort
L110:
    cmpl	$0, -12(%rbp)
    jne	L111
    call	abort
L111:
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    jns	L112
    cmpl	$0, -12(%rbp)
    jne	L113
    call	abort
L112:
    cmpl	$0, -12(%rbp)
    je	L113
    call	abort
L113:
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    jns	L114
    cmpl	$0, -12(%rbp)
    jne	L115
    call	abort
L114:
    cmpl	$0, -12(%rbp)
    je	L115
    call	abort
L115:
    movq	-8(%rbp), %rax
    testq	%rax, %rax
    js	L116
    cmpl	$0, -12(%rbp)
    je	L118
    call	abort
L116:
    cmpl	$0, -12(%rbp)
    jne	L118
    call	abort
L118:
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
