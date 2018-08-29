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
    .comm	i,9,8
    .comm	j,9,8
    .globl	foo
foo:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	i + 5(%rip), %eax
    andl	$7, %eax
    movb	%al, i + 5(%rip)
    movzbl	i + 6(%rip), %eax
    andl	$0, %eax
    movb	%al, i + 6(%rip)
    movzbl	i + 7(%rip), %eax
    andl	$-4, %eax
    movb	%al, i + 7(%rip)
    movzbl	i(%rip), %eax
    andl	$0, %eax
    orl	$5, %eax
    movb	%al, i(%rip)
    movzbl	i + 1(%rip), %eax
    andl	$0, %eax
    movb	%al, i + 1(%rip)
    movzbl	i + 2(%rip), %eax
    andl	$-4, %eax
    movb	%al, i + 2(%rip)
    movzbl	i + 2(%rip), %eax
    andl	$-5, %eax
    movb	%al, i + 2(%rip)
    movzbl	i + 2(%rip), %eax
    andl	$7, %eax
    orl	$-40, %eax
    movb	%al, i + 2(%rip)
    movzbl	i + 3(%rip), %eax
    orl	$-1, %eax
    movb	%al, i + 3(%rip)
    movzbl	i + 4(%rip), %eax
    orl	$-1, %eax
    movb	%al, i + 4(%rip)
    movzbl	i + 5(%rip), %eax
    orl	$7, %eax
    movb	%al, i + 5(%rip)
    movzbl	i + 7(%rip), %eax
    andl	$3, %eax
    orl	$20, %eax
    movb	%al, i + 7(%rip)
    movzbl	i + 8(%rip), %eax
    andl	$0, %eax
    movb	%al, i + 8(%rip)
    nop
    popq	%rbp
    ret
    .globl	bar
bar:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	j(%rip), %eax
    andl	$0, %eax
    orl	$5, %eax
    movb	%al, j(%rip)
    movzbl	j + 1(%rip), %eax
    andl	$0, %eax
    movb	%al, j + 1(%rip)
    movzbl	j + 2(%rip), %eax
    andl	$-4, %eax
    movb	%al, j + 2(%rip)
    movzbl	j + 2(%rip), %eax
    andl	$-5, %eax
    movb	%al, j + 2(%rip)
    movzbl	j + 2(%rip), %eax
    andl	$7, %eax
    orl	$-40, %eax
    movb	%al, j + 2(%rip)
    movzbl	j + 3(%rip), %eax
    orl	$-1, %eax
    movb	%al, j + 3(%rip)
    movzbl	j + 4(%rip), %eax
    orl	$-1, %eax
    movb	%al, j + 4(%rip)
    movzbl	j + 5(%rip), %eax
    orl	$7, %eax
    movb	%al, j + 5(%rip)
    movzbl	j + 5(%rip), %eax
    andl	$7, %eax
    movb	%al, j + 5(%rip)
    movzbl	j + 6(%rip), %eax
    andl	$0, %eax
    movb	%al, j + 6(%rip)
    movzbl	j + 7(%rip), %eax
    andl	$-4, %eax
    movb	%al, j + 7(%rip)
    movzbl	j + 7(%rip), %eax
    andl	$3, %eax
    orl	$20, %eax
    movb	%al, j + 7(%rip)
    movzbl	j + 8(%rip), %eax
    andl	$0, %eax
    movb	%al, j + 8(%rip)
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %eax
    call	foo
    movl	$0, %eax
    call	bar
    movzbl	i(%rip), %eax
    movzbl	i + 1(%rip), %edx
    salq	$8, %rdx
    orq	%rax, %rdx
    movzbl	i + 2(%rip), %eax
    andl	$3, %eax
    salq	$16, %rax
    orq	%rdx, %rax
    salq	$46, %rax
    sarq	$46, %rax
    movl	%eax, %ecx
    movzbl	j(%rip), %eax
    movzbl	j + 1(%rip), %edx
    salq	$8, %rdx
    orq	%rax, %rdx
    movzbl	j + 2(%rip), %eax
    andl	$3, %eax
    salq	$16, %rax
    orq	%rdx, %rax
    salq	$46, %rax
    sarq	$46, %rax
    cmpl	%eax, %ecx
    jne	L56
    movzbl	i + 2(%rip), %eax
    sall	$5, %eax
    movl	%eax, %edx
    sarb	$7, %dl
    movzbl	j + 2(%rip), %eax
    sall	$5, %eax
    sarb	$7, %al
    cmpb	%al, %dl
    jne	L56
    movzbl	i + 2(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	i + 3(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	i + 4(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	i + 5(%rip), %eax
    andl	$7, %eax
    salq	$21, %rax
    orq	%rdx, %rax
    salq	$40, %rax
    sarq	$40, %rax
    movl	%eax, %ecx
    movzbl	j + 2(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	j + 3(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	j + 4(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	j + 5(%rip), %eax
    andl	$7, %eax
    salq	$21, %rax
    orq	%rdx, %rax
    salq	$40, %rax
    sarq	$40, %rax
    cmpl	%eax, %ecx
    jne	L56
    movzbl	i + 5(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	i + 6(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	i + 7(%rip), %eax
    andl	$3, %eax
    salq	$13, %rax
    orq	%rdx, %rax
    salq	$49, %rax
    sarq	$49, %rax
    movl	%eax, %ecx
    movzbl	j + 5(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	j + 6(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	j + 7(%rip), %eax
    andl	$3, %eax
    salq	$13, %rax
    orq	%rdx, %rax
    salq	$49, %rax
    sarq	$49, %rax
    cmpw	%ax, %cx
    jne	L56
    movzbl	i + 7(%rip), %eax
    shrb	$2, %al
    movzbl	%al, %eax
    movzbl	i + 8(%rip), %edx
    salq	$6, %rdx
    orq	%rdx, %rax
    salq	$50, %rax
    sarq	$50, %rax
    movl	%eax, %ecx
    movzbl	j + 7(%rip), %eax
    shrb	$2, %al
    movzbl	%al, %eax
    movzbl	j + 8(%rip), %edx
    salq	$6, %rdx
    orq	%rdx, %rax
    salq	$50, %rax
    sarq	$50, %rax
    cmpw	%ax, %cx
    je	L57
L56:
    call	abort
L57:
    movl	$0, %eax
    popq	%rbp
    ret
