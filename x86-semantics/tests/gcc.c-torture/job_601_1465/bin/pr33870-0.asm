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
merge_pagelist:
    pushq	%rbp
    movq	%rsp, %rbp
    addq	$-128, %rsp
    movq	%rdi, -120(%rbp)
    movq	%rsi, -128(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-96(%rbp), %rax
    movq	%rax, -104(%rbp)
    jmp	L54
L57:
    movq	-120(%rbp), %rax
    movl	(%rax), %edx
    movq	-128(%rbp), %rax
    movl	(%rax), %eax
    cmpl	%eax, %edx
    jnb	L55
    movq	-104(%rbp), %rax
    movq	-120(%rbp), %rdx
    movq	%rdx, 56(%rax)
    movq	-120(%rbp), %rax
    movq	%rax, -104(%rbp)
    movq	-120(%rbp), %rax
    movq	56(%rax), %rax
    movq	%rax, -120(%rbp)
    jmp	L54
L55:
    movq	-104(%rbp), %rax
    movq	-128(%rbp), %rdx
    movq	%rdx, 56(%rax)
    movq	-128(%rbp), %rax
    movq	%rax, -104(%rbp)
    movq	-128(%rbp), %rax
    movq	56(%rax), %rax
    movq	%rax, -128(%rbp)
L54:
    cmpq	$0, -120(%rbp)
    je	L56
    cmpq	$0, -128(%rbp)
    jne	L57
L56:
    cmpq	$0, -120(%rbp)
    je	L58
    movq	-104(%rbp), %rax
    movq	-120(%rbp), %rdx
    movq	%rdx, 56(%rax)
    jmp	L59
L58:
    cmpq	$0, -128(%rbp)
    je	L60
    movq	-104(%rbp), %rax
    movq	-128(%rbp), %rdx
    movq	%rdx, 56(%rax)
    jmp	L59
L60:
    movq	-104(%rbp), %rax
    movq	$0, 56(%rax)
L59:
    movq	-40(%rbp), %rax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L62
    call	__stack_chk_fail
L62:
    leave
    ret
    .globl	sort_pagelist
sort_pagelist:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$240, %rsp
    movq	%rdi, -232(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    leaq	-208(%rbp), %rax
    movl	$200, %edx
    movl	$0, %esi
    movq	%rax, %rdi
    call	memset
    jmp	L64
L69:
    movq	-232(%rbp), %rax
    movq	%rax, -216(%rbp)
    movq	-216(%rbp), %rax
    movq	56(%rax), %rax
    movq	%rax, -232(%rbp)
    movq	-216(%rbp), %rax
    movq	$0, 56(%rax)
    movl	$0, -220(%rbp)
    jmp	L65
L68:
    movl	-220(%rbp), %eax
    cltq
    movq	-208(%rbp,%rax,8), %rax
    testq	%rax, %rax
    jne	L66
    movl	-220(%rbp), %eax
    cltq
    movq	-216(%rbp), %rdx
    movq	%rdx, -208(%rbp,%rax,8)
    jmp	L67
L66:
    movl	-220(%rbp), %eax
    cltq
    movq	-208(%rbp,%rax,8), %rax
    movq	-216(%rbp), %rdx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	merge_pagelist
    movq	%rax, -216(%rbp)
    movl	-220(%rbp), %eax
    cltq
    movq	$0, -208(%rbp,%rax,8)
    addl	$1, -220(%rbp)
L65:
    cmpl	$23, -220(%rbp)
    jle	L68
L67:
    cmpl	$24, -220(%rbp)
    jne	L64
    movl	-220(%rbp), %eax
    cltq
    movq	-208(%rbp,%rax,8), %rax
    movq	-216(%rbp), %rdx
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	merge_pagelist
    movq	%rax, %rdx
    movl	-220(%rbp), %eax
    cltq
    movq	%rdx, -208(%rbp,%rax,8)
L64:
    cmpq	$0, -232(%rbp)
    jne	L69
    movq	-208(%rbp), %rax
    movq	%rax, -216(%rbp)
    movl	$1, -220(%rbp)
    jmp	L70
L71:
    movl	-220(%rbp), %eax
    cltq
    movq	-208(%rbp,%rax,8), %rdx
    movq	-216(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	merge_pagelist
    movq	%rax, -216(%rbp)
    addl	$1, -220(%rbp)
L70:
    cmpl	$24, -220(%rbp)
    jle	L71
    movq	-216(%rbp), %rax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L73
    call	__stack_chk_fail
L73:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$432, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$5, -416(%rbp)
    leaq	-416(%rbp), %rax
    addq	$80, %rax
    movq	%rax, -360(%rbp)
    movl	$4, -336(%rbp)
    leaq	-416(%rbp), %rax
    addq	$160, %rax
    movq	%rax, -280(%rbp)
    movl	$1, -256(%rbp)
    leaq	-416(%rbp), %rax
    addq	$240, %rax
    movq	%rax, -200(%rbp)
    movl	$3, -176(%rbp)
    movq	$0, -120(%rbp)
    leaq	-416(%rbp), %rax
    movq	%rax, %rdi
    call	sort_pagelist
    movq	%rax, -424(%rbp)
    movq	-424(%rbp), %rax
    movq	56(%rax), %rax
    cmpq	-424(%rbp), %rax
    jne	L75
    call	abort
L75:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L77
    call	__stack_chk_fail
L77:
    leave
    ret
