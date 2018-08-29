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
    jle	L53
    cmpl	$122, -4(%rbp)
    jg	L53
    movl	$1, %eax
    jmp	L54
L53:
    cmpl	$64, -4(%rbp)
    jle	L55
    cmpl	$90, -4(%rbp)
    jg	L55
    movl	$1, %eax
    jmp	L54
L55:
    cmpl	$47, -4(%rbp)
    jle	L56
    cmpl	$57, -4(%rbp)
    jg	L56
    movl	$1, %eax
    jmp	L54
L56:
    movl	$0, %eax
L54:
    popq	%rbp
    ret
    .globl	helper_neon_rshl_s8
helper_neon_rshl_s8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -84(%rbp)
    movl	%esi, -88(%rbp)
    movl	-84(%rbp), %eax
    movl	%eax, -16(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, -64(%rbp)
    movl	-88(%rbp), %eax
    movl	%eax, -16(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, -48(%rbp)
    movzbl	-48(%rbp), %eax
    movb	%al, -68(%rbp)
    cmpb	$7, -68(%rbp)
    jle	L58
    movb	$0, -32(%rbp)
    jmp	L59
L58:
    cmpb	$-8, -68(%rbp)
    jge	L60
    movzbl	-64(%rbp), %eax
    sarb	$7, %al
    movb	%al, -32(%rbp)
    jmp	L59
L60:
    cmpb	$-8, -68(%rbp)
    jne	L61
    movzbl	-64(%rbp), %eax
    movsbl	%al, %edx
    movsbl	-68(%rbp), %eax
    subl	$1, %eax
    sarx	%eax, %edx, %eax
    movb	%al, -32(%rbp)
    movzbl	-32(%rbp), %eax
    addl	$1, %eax
    movb	%al, -32(%rbp)
    movzbl	-32(%rbp), %eax
    sarb	%al
    movb	%al, -32(%rbp)
    jmp	L59
L61:
    cmpb	$0, -68(%rbp)
    jns	L62
    movzbl	-64(%rbp), %eax
    movsbl	%al, %eax
    movsbl	-68(%rbp), %edx
    notl	%edx
    movl	$1, %ecx
    shlx	%edx, %ecx, %edx
    addl	%eax, %edx
    movsbl	-68(%rbp), %eax
    negl	%eax
    sarx	%eax, %edx, %eax
    movb	%al, -32(%rbp)
    jmp	L59
L62:
    movzbl	-64(%rbp), %eax
    movsbl	%al, %edx
    movsbl	-68(%rbp), %eax
    shlx	%eax, %edx, %eax
    movb	%al, -32(%rbp)
L59:
    movzbl	-47(%rbp), %eax
    movb	%al, -67(%rbp)
    cmpb	$7, -67(%rbp)
    jle	L63
    movb	$0, -31(%rbp)
    jmp	L64
L63:
    cmpb	$-8, -67(%rbp)
    jge	L65
    movzbl	-63(%rbp), %eax
    sarb	$7, %al
    movb	%al, -31(%rbp)
    jmp	L64
L65:
    cmpb	$-8, -67(%rbp)
    jne	L66
    movzbl	-63(%rbp), %eax
    movsbl	%al, %edx
    movsbl	-67(%rbp), %eax
    subl	$1, %eax
    sarx	%eax, %edx, %eax
    movb	%al, -31(%rbp)
    movzbl	-31(%rbp), %eax
    addl	$1, %eax
    movb	%al, -31(%rbp)
    movzbl	-31(%rbp), %eax
    sarb	%al
    movb	%al, -31(%rbp)
    jmp	L64
L66:
    cmpb	$0, -67(%rbp)
    jns	L67
    movzbl	-63(%rbp), %eax
    movsbl	%al, %eax
    movsbl	-67(%rbp), %edx
    notl	%edx
    movl	$1, %ecx
    shlx	%edx, %ecx, %edx
    addl	%eax, %edx
    movsbl	-67(%rbp), %eax
    negl	%eax
    sarx	%eax, %edx, %eax
    movb	%al, -31(%rbp)
    jmp	L64
L67:
    movzbl	-63(%rbp), %eax
    movsbl	%al, %edx
    movsbl	-67(%rbp), %eax
    shlx	%eax, %edx, %eax
    movb	%al, -31(%rbp)
L64:
    movzbl	-46(%rbp), %eax
    movb	%al, -66(%rbp)
    cmpb	$7, -66(%rbp)
    jle	L68
    movb	$0, -30(%rbp)
    jmp	L69
L68:
    cmpb	$-8, -66(%rbp)
    jge	L70
    movzbl	-62(%rbp), %eax
    sarb	$7, %al
    movb	%al, -30(%rbp)
    jmp	L69
L70:
    cmpb	$-8, -66(%rbp)
    jne	L71
    movzbl	-62(%rbp), %eax
    movsbl	%al, %edx
    movsbl	-66(%rbp), %eax
    subl	$1, %eax
    sarx	%eax, %edx, %eax
    movb	%al, -30(%rbp)
    movzbl	-30(%rbp), %eax
    addl	$1, %eax
    movb	%al, -30(%rbp)
    movzbl	-30(%rbp), %eax
    sarb	%al
    movb	%al, -30(%rbp)
    jmp	L69
L71:
    cmpb	$0, -66(%rbp)
    jns	L72
    movzbl	-62(%rbp), %eax
    movsbl	%al, %eax
    movsbl	-66(%rbp), %edx
    notl	%edx
    movl	$1, %ecx
    shlx	%edx, %ecx, %edx
    addl	%eax, %edx
    movsbl	-66(%rbp), %eax
    negl	%eax
    sarx	%eax, %edx, %eax
    movb	%al, -30(%rbp)
    jmp	L69
L72:
    movzbl	-62(%rbp), %eax
    movsbl	%al, %edx
    movsbl	-66(%rbp), %eax
    shlx	%eax, %edx, %eax
    movb	%al, -30(%rbp)
L69:
    movzbl	-45(%rbp), %eax
    movb	%al, -65(%rbp)
    cmpb	$7, -65(%rbp)
    jle	L73
    movb	$0, -29(%rbp)
    jmp	L74
L73:
    cmpb	$-8, -65(%rbp)
    jge	L75
    movzbl	-61(%rbp), %eax
    sarb	$7, %al
    movb	%al, -29(%rbp)
    jmp	L74
L75:
    cmpb	$-8, -65(%rbp)
    jne	L76
    movzbl	-61(%rbp), %eax
    movsbl	%al, %edx
    movsbl	-65(%rbp), %eax
    subl	$1, %eax
    sarx	%eax, %edx, %eax
    movb	%al, -29(%rbp)
    movzbl	-29(%rbp), %eax
    addl	$1, %eax
    movb	%al, -29(%rbp)
    movzbl	-29(%rbp), %eax
    sarb	%al
    movb	%al, -29(%rbp)
    jmp	L74
L76:
    cmpb	$0, -65(%rbp)
    jns	L77
    movzbl	-61(%rbp), %eax
    movsbl	%al, %eax
    movsbl	-65(%rbp), %edx
    notl	%edx
    movl	$1, %ecx
    shlx	%edx, %ecx, %edx
    addl	%eax, %edx
    movsbl	-65(%rbp), %eax
    negl	%eax
    sarx	%eax, %edx, %eax
    movb	%al, -29(%rbp)
    jmp	L74
L77:
    movzbl	-61(%rbp), %eax
    movsbl	%al, %edx
    movsbl	-65(%rbp), %eax
    shlx	%eax, %edx, %eax
    movb	%al, -29(%rbp)
L74:
    movl	-32(%rbp), %eax
    movl	%eax, -16(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, -4(%rbp)
    movl	-4(%rbp), %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$16, %rsp
    movl	$16843009, %esi
    movl	$84215045, %edi
    call	helper_neon_rshl_s8
    movl	%eax, -4(%rbp)
    cmpl	$168430090, -4(%rbp)
    je	L80
    call	abort
L80:
    movl	$0, %eax
    leave
    ret
