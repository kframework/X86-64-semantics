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
    jle	L37
    cmpl	$122, -4(%rbp)
    jg	L37
    movl	$1, %eax
    jmp	L38
L37:
    cmpl	$64, -4(%rbp)
    jle	L39
    cmpl	$90, -4(%rbp)
    jg	L39
    movl	$1, %eax
    jmp	L38
L39:
    cmpl	$47, -4(%rbp)
    jle	L40
    cmpl	$57, -4(%rbp)
    jg	L40
    movl	$1, %eax
    jmp	L38
L40:
    movl	$0, %eax
L38:
    popq	%rbp
    ret
    .globl	f
f:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	%esi, -8(%rbp)
    movl	-4(%rbp), %eax
    cmpl	-8(%rbp), %eax
    je	L43
    call	abort
L43:
    nop
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	$7, -20(%rbp)
    movl	$6, -16(%rbp)
    movl	$4, -12(%rbp)
    movl	$7, -8(%rbp)
    movl	$2, -4(%rbp)
    cmpl	$0, -20(%rbp)
    jne	L45
    movl	-16(%rbp), %eax
    cltd
    idivl	-12(%rbp)
    movl	%edx, %eax
    testl	%eax, %eax
    je	L46
L45:
    movl	$1, %eax
    jmp	L47
L46:
    movl	$0, %eax
L47:
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -20(%rbp)
    je	L48
    movl	-16(%rbp), %eax
    cltd
    idivl	-12(%rbp)
    movl	%edx, %eax
    jmp	L49
L48:
    movl	$0, %eax
L49:
    movl	$2, %esi
    movl	%eax, %edi
    call	f
    movl	-16(%rbp), %eax
    cltd
    idivl	-12(%rbp)
    movl	%edx, -20(%rbp)
    movl	-20(%rbp), %eax
    movl	$2, %esi
    movl	%eax, %edi
    call	f
    movl	-16(%rbp), %eax
    cltd
    idivl	-12(%rbp)
    movl	-20(%rbp), %eax
    imull	%edx, %eax
    movl	%eax, -20(%rbp)
    movl	-20(%rbp), %eax
    movl	$4, %esi
    movl	%eax, %edi
    call	f
    movl	-16(%rbp), %eax
    cltd
    idivl	-12(%rbp)
    movl	%edx, %ecx
    movl	-20(%rbp), %eax
    cltd
    idivl	%ecx
    movl	%eax, -20(%rbp)
    movl	-20(%rbp), %eax
    movl	$2, %esi
    movl	%eax, %edi
    call	f
    movl	-16(%rbp), %eax
    cltd
    idivl	-12(%rbp)
    movl	%edx, %ecx
    movl	-20(%rbp), %eax
    cltd
    idivl	%ecx
    movl	%edx, -20(%rbp)
    movl	-20(%rbp), %eax
    movl	$0, %esi
    movl	%eax, %edi
    call	f
    movl	-16(%rbp), %eax
    cltd
    idivl	-12(%rbp)
    movl	%edx, %eax
    addl	%eax, -20(%rbp)
    movl	-20(%rbp), %eax
    movl	$2, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -8(%rbp)
    jne	L50
    cmpl	$0, -12(%rbp)
    je	L51
    cmpl	$0, -4(%rbp)
    je	L51
L50:
    movl	$1, %eax
    jmp	L52
L51:
    movl	$0, %eax
L52:
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -8(%rbp)
    je	L53
    cmpl	$0, -12(%rbp)
    je	L53
    cmpl	$0, -4(%rbp)
    je	L53
    movl	$1, %eax
    jmp	L54
L53:
    movl	$0, %eax
L54:
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    je	L55
    cmpl	$0, -4(%rbp)
    je	L55
    movl	$1, %eax
    jmp	L56
L55:
    movl	$0, %eax
L56:
    movl	%eax, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    je	L57
    cmpl	$0, -4(%rbp)
    je	L57
    movl	$1, %edx
    jmp	L58
L57:
    movl	$0, %edx
L58:
    movl	-8(%rbp), %eax
    imull	%edx, %eax
    movl	%eax, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    je	L59
    cmpl	$0, -4(%rbp)
    je	L59
    movl	$1, %ecx
    jmp	L60
L59:
    movl	$0, %ecx
L60:
    movl	-8(%rbp), %eax
    cltd
    idivl	%ecx
    movl	%edx, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$0, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    je	L61
    cmpl	$0, -4(%rbp)
    je	L61
    movl	$1, %eax
    jmp	L62
L61:
    movl	$0, %eax
L62:
    addl	%eax, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    je	L63
    cmpl	$0, -4(%rbp)
    je	L63
    movl	$1, %eax
    jmp	L64
L63:
    movl	$0, %eax
L64:
    subl	%eax, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$0, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -8(%rbp)
    jne	L65
    cmpl	$0, -12(%rbp)
    jne	L65
    cmpl	$0, -4(%rbp)
    je	L66
L65:
    movl	$1, %eax
    jmp	L67
L66:
    movl	$0, %eax
L67:
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -8(%rbp)
    je	L68
    cmpl	$0, -12(%rbp)
    jne	L69
    cmpl	$0, -4(%rbp)
    je	L68
L69:
    movl	$1, %eax
    jmp	L70
L68:
    movl	$0, %eax
L70:
    movl	$0, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    jne	L71
    cmpl	$0, -4(%rbp)
    je	L72
L71:
    movl	$1, %eax
    jmp	L73
L72:
    movl	$0, %eax
L73:
    movl	%eax, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    jne	L74
    cmpl	$0, -4(%rbp)
    je	L75
L74:
    movl	$1, %edx
    jmp	L76
L75:
    movl	$0, %edx
L76:
    movl	-8(%rbp), %eax
    imull	%edx, %eax
    movl	%eax, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    jne	L77
    cmpl	$0, -4(%rbp)
    je	L78
L77:
    movl	$1, %ecx
    jmp	L79
L78:
    movl	$0, %ecx
L79:
    movl	-8(%rbp), %eax
    cltd
    idivl	%ecx
    movl	%edx, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$0, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    jne	L80
    cmpl	$0, -4(%rbp)
    je	L81
L80:
    movl	$1, %eax
    jmp	L82
L81:
    movl	$0, %eax
L82:
    addl	%eax, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$1, %esi
    movl	%eax, %edi
    call	f
    cmpl	$0, -12(%rbp)
    jne	L83
    cmpl	$0, -4(%rbp)
    je	L84
L83:
    movl	$1, %eax
    jmp	L85
L84:
    movl	$0, %eax
L85:
    subl	%eax, -8(%rbp)
    movl	-8(%rbp), %eax
    movl	$0, %esi
    movl	%eax, %edi
    call	f
    movl	$0, %edi
    call	exit
