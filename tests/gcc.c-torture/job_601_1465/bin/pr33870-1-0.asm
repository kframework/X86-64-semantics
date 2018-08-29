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
    jmp	L28
L31:
    movq	-16(%rbp), %rax
    movzbl	(%rax), %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    cmpb	%al, %dl
    je	L29
    movq	-16(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %edx
    movq	-8(%rbp), %rax
    movzbl	(%rax), %eax
    movzbl	%al, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    jmp	L30
L29:
    addq	$1, -16(%rbp)
    addq	$1, -8(%rbp)
L28:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L31
    movl	$0, %eax
L30:
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
    jmp	L36
L37:
    movq	-8(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -8(%rbp)
    movl	-28(%rbp), %edx
    movb	%dl, (%rax)
L36:
    movq	-40(%rbp), %rax
    leaq	-1(%rax), %rdx
    movq	%rdx, -40(%rbp)
    testq	%rax, %rax
    jne	L37
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
    jmp	L40
L41:
    movq	-16(%rbp), %rax
    leaq	1(%rax), %rdx
    movq	%rdx, -16(%rbp)
    movq	-8(%rbp), %rdx
    leaq	1(%rdx), %rcx
    movq	%rcx, -8(%rbp)
    movzbl	(%rdx), %edx
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
    .comm	xx,8,8
    .comm	vx,4,4
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
    addq	$64, %rax
    movq	%rax, xx(%rip)
    leaq	-96(%rbp), %rax
    movq	%rax, -104(%rbp)
    jmp	L54
L58:
    movq	-120(%rbp), %rax
    movl	8(%rax), %edx
    movq	-128(%rbp), %rax
    movl	8(%rax), %eax
    cmpl	%eax, %edx
    jnb	L55
    movq	-104(%rbp), %rax
    movq	-120(%rbp), %rdx
    movq	%rdx, 64(%rax)
    movq	-120(%rbp), %rax
    movq	%rax, -104(%rbp)
    movq	-120(%rbp), %rax
    movq	64(%rax), %rax
    movq	%rax, -120(%rbp)
    jmp	L56
L55:
    movq	-104(%rbp), %rax
    movq	-128(%rbp), %rdx
    movq	%rdx, 64(%rax)
    movq	-128(%rbp), %rax
    movq	%rax, -104(%rbp)
    movq	-128(%rbp), %rax
    movq	64(%rax), %rax
    movq	%rax, -128(%rbp)
L56:
    movq	xx(%rip), %rax
    movq	(%rax), %rax
    movl	(%rax), %eax
    movl	%eax, vx(%rip)
L54:
    cmpq	$0, -120(%rbp)
    je	L57
    cmpq	$0, -128(%rbp)
    jne	L58
L57:
    cmpq	$0, -120(%rbp)
    je	L59
    movq	-104(%rbp), %rax
    movq	-120(%rbp), %rdx
    movq	%rdx, 64(%rax)
    jmp	L60
L59:
    cmpq	$0, -128(%rbp)
    je	L61
    movq	-104(%rbp), %rax
    movq	-128(%rbp), %rdx
    movq	%rdx, 64(%rax)
    jmp	L60
L61:
    movq	-104(%rbp), %rax
    movq	$0, 64(%rax)
L60:
    movq	-32(%rbp), %rax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L63
    call	__stack_chk_fail
L63:
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
    jmp	L65
L70:
    movq	-232(%rbp), %rax
    movq	%rax, -216(%rbp)
    movq	-216(%rbp), %rax
    movq	64(%rax), %rax
    movq	%rax, -232(%rbp)
    movq	-216(%rbp), %rax
    movq	$0, 64(%rax)
    movl	$0, -220(%rbp)
    jmp	L66
L69:
    movl	-220(%rbp), %eax
    cltq
    movq	-208(%rbp,%rax,8), %rax
    testq	%rax, %rax
    jne	L67
    movl	-220(%rbp), %eax
    cltq
    movq	-216(%rbp), %rdx
    movq	%rdx, -208(%rbp,%rax,8)
    jmp	L68
L67:
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
    movl	-220(%rbp), %eax
    cltq
    movq	$0, -208(%rbp,%rax,8)
    addl	$1, -220(%rbp)
L66:
    cmpl	$23, -220(%rbp)
    jle	L69
L68:
    cmpl	$24, -220(%rbp)
    jne	L65
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
L65:
    cmpq	$0, -232(%rbp)
    jne	L70
    movq	-208(%rbp), %rax
    movq	%rax, -216(%rbp)
    movl	$1, -220(%rbp)
    jmp	L71
L72:
    movl	-220(%rbp), %eax
    cltq
    movq	-208(%rbp,%rax,8), %rdx
    movq	-216(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	merge_pagelist
    movq	%rax, -216(%rbp)
    addl	$1, -220(%rbp)
L71:
    cmpl	$24, -220(%rbp)
    jle	L72
    movq	-216(%rbp), %rax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L74
    call	__stack_chk_fail
L74:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$464, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	$5, -440(%rbp)
    leaq	-448(%rbp), %rax
    addq	$88, %rax
    movq	%rax, -384(%rbp)
    movl	$4, -352(%rbp)
    leaq	-448(%rbp), %rax
    addq	$176, %rax
    movq	%rax, -296(%rbp)
    movl	$1, -264(%rbp)
    leaq	-448(%rbp), %rax
    addq	$264, %rax
    movq	%rax, -208(%rbp)
    movl	$3, -176(%rbp)
    movq	$0, -120(%rbp)
    leaq	-448(%rbp), %rax
    movq	%rax, %rdi
    call	sort_pagelist
    movq	%rax, -456(%rbp)
    movq	-456(%rbp), %rax
    movq	64(%rax), %rax
    cmpq	-456(%rbp), %rax
    jne	L76
    call	abort
L76:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L78
    call	__stack_chk_fail
L78:
    leave
    ret
