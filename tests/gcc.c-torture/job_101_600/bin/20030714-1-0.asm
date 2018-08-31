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
    .globl	xfalse
    .section	.rodata
xfalse:
    .zero	1
    .globl	true
true:
    .byte	1
    .text
    .globl	RenderBox_setStyle
RenderBox_setStyle:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	%rdi, -40(%rbp)
    movq	%rsi, -48(%rbp)
    movq	-40(%rbp), %rax
    movq	%rax, -8(%rbp)
    movq	-8(%rbp), %rax
    movzbl	26(%rax), %eax
    shrb	$4, %al
    andl	$1, %eax
    movb	%al, -27(%rbp)
    movzbl	-27(%rbp), %eax
    movb	%al, -26(%rbp)
    movq	-48(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rsi
    movq	%rax, %rdi
    call	RenderObject_setStyle
    movq	-48(%rbp), %rax
    movzbl	2(%rax), %eax
    shrb	%al
    andl	$3, %eax
    movzbl	%al, %eax
    movl	%eax, -20(%rbp)
    movl	-20(%rbp), %eax
    subl	$2, %eax
    cmpl	$1, %eax
    ja	L42
    movb	$1, -25(%rbp)
    movq	-8(%rbp), %rax
    movzbl	-25(%rbp), %edx
    andl	$1, %edx
    movl	%edx, %ecx
    sall	$4, %ecx
    movzbl	26(%rax), %edx
    andl	$-17, %edx
    orl	%ecx, %edx
    movb	%dl, 26(%rax)
    jmp	L44
L42:
    cmpb	$0, -26(%rbp)
    je	L45
    movb	$1, -24(%rbp)
    movq	-8(%rbp), %rax
    movzbl	-24(%rbp), %edx
    andl	$1, %edx
    movl	%edx, %ecx
    sall	$4, %ecx
    movzbl	26(%rax), %edx
    andl	$-17, %edx
    orl	%ecx, %edx
    movb	%dl, 26(%rax)
    movq	-8(%rbp), %rax
    movq	%rax, %rdi
    call	removeFromSpecialObjects
L45:
    movb	$0, -23(%rbp)
    movq	-8(%rbp), %rax
    movzbl	-23(%rbp), %edx
    andl	$1, %edx
    movl	%edx, %ecx
    sall	$4, %ecx
    movzbl	26(%rax), %edx
    andl	$-17, %edx
    orl	%ecx, %edx
    movb	%dl, 26(%rax)
    movq	-48(%rbp), %rax
    movzbl	2(%rax), %eax
    shrb	$3, %al
    andl	$3, %eax
    movzbl	%al, %eax
    movl	%eax, -16(%rbp)
    movq	-8(%rbp), %rax
    movq	32(%rax), %rax
    movq	-8(%rbp), %rdx
    movq	%rdx, %rdi
    call	%rax
    xorl	$1, %eax
    testb	%al, %al
    je	L46
    cmpl	$0, -16(%rbp)
    je	L46
    movb	$1, -22(%rbp)
    movq	-8(%rbp), %rax
    movzbl	-22(%rbp), %edx
    andl	$1, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	26(%rax), %edx
    andl	$-9, %edx
    orl	%ecx, %edx
    movb	%dl, 26(%rax)
    jmp	L44
L46:
    movq	-48(%rbp), %rax
    movzbl	2(%rax), %eax
    shrb	%al
    andl	$3, %eax
    movzbl	%al, %eax
    movl	%eax, -12(%rbp)
    cmpl	$1, -12(%rbp)
    jne	L47
    movb	$1, -21(%rbp)
    movq	-8(%rbp), %rax
    movzbl	-21(%rbp), %edx
    andl	$1, %edx
    movl	%edx, %ecx
    sall	$6, %ecx
    movzbl	26(%rax), %edx
    andl	$-65, %edx
    orl	%ecx, %edx
    movb	%dl, 26(%rax)
    jmp	L47
L44:
L47:
    nop
    leave
    ret
    .comm	g_this,40,32
    .comm	g__style,4,4
    .globl	RenderObject_setStyle
RenderObject_setStyle:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	%rsi, -16(%rbp)
    nop
    popq	%rbp
    ret
    .globl	removeFromSpecialObjects
removeFromSpecialObjects:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    nop
    popq	%rbp
    ret
    .globl	RenderBox_isTableCell
RenderBox_isTableCell:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	$0, %eax
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl	g_this + 26(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, g_this + 26(%rip)
    movl	$0, %eax
    andl	$1, %eax
    sall	$4, %eax
    movl	%eax, %edx
    movzbl	g_this + 26(%rip), %eax
    andl	$-17, %eax
    orl	%edx, %eax
    movb	%al, g_this + 26(%rip)
    movl	$0, %eax
    andl	$1, %eax
    leal	0(,%rax,8), %edx
    movzbl	g_this + 26(%rip), %eax
    andl	$-9, %eax
    orl	%edx, %eax
    movb	%al, g_this + 26(%rip)
    movq	$RenderBox_isTableCell, g_this + 32(%rip)
    movzbl	g__style + 2(%rip), %eax
    orl	$6, %eax
    movb	%al, g__style + 2(%rip)
    movzbl	g__style + 2(%rip), %eax
    andl	$-25, %eax
    movb	%al, g__style + 2(%rip)
    movl	$g__style, %esi
    movl	$g_this, %edi
    call	RenderBox_setStyle
    movzbl	g_this + 26(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    movl	$1, %edx
    cmpb	%dl, %al
    je	L53
    call	abort
L53:
    movzbl	g_this + 26(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movl	$0, %edx
    cmpb	%dl, %al
    je	L54
    call	abort
L54:
    movzbl	g_this + 26(%rip), %eax
    shrb	$3, %al
    andl	$1, %eax
    movl	$0, %edx
    cmpb	%dl, %al
    je	L55
    call	abort
L55:
    movl	$0, %edi
    call	exit
