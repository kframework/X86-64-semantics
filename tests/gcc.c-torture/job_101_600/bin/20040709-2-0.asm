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
    .globl	myrnd
myrnd:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	s2411(%rip), %eax
    imull	$1103515245, %eax, %eax
    movl	%eax, s2411(%rip)
    movl	s2411(%rip), %eax
    addl	$12345, %eax
    movl	%eax, s2411(%rip)
    movl	s2411(%rip), %eax
    shrl	$16, %eax
    andl	$2047, %eax
    popq	%rbp
    ret
    .comm	sA,2,1
    .globl	retmeA
retmeA:
    pushq	%rbp
    movq	%rsp, %rbp
    movw	%di, -16(%rbp)
    movzwl	-16(%rbp), %eax
    popq	%rbp
    ret
    .globl	fn1A
fn1A:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movzwl	sA(%rip), %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    movl	%eax, %edi
    call	retmeA
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2A
fn2A:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movzwl	sA(%rip), %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitA
retitA:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sA(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sA + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3A
fn3A:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sA(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sA + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sA(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sA(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sA + 1(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sA + 1(%rip)
    call	retitA
    leave
    ret
    .globl	testA
testA:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	$sA, -24(%rbp)
    movl	$0, -44(%rbp)
    jmp	L54
L55:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L54:
    movl	-44(%rbp), %eax
    cmpl	$1, %eax
    jbe	L55
    movzbl	sA(%rip), %eax
    orl	$-32, %eax
    movb	%al, sA(%rip)
    movzbl	sA + 1(%rip), %eax
    orl	$-1, %eax
    movb	%al, sA + 1(%rip)
    movzbl	sA(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sA + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -40(%rbp)
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sA(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sA(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sA + 1(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sA + 1(%rip)
    movzwl	sA(%rip), %eax
    movw	%ax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sA(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L56
    movzbl	-48(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    andl	$7, %edx
    movzbl	sA(%rip), %eax
    shrb	$2, %al
    andl	$7, %eax
    cmpb	%al, %dl
    jne	L56
    movzwl	-48(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %ecx
    movzbl	sA(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sA + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L56
    movzbl	-48(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sA(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L56
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L57
L56:
    call	abort
L57:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sA(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sA(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sA + 1(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sA + 1(%rip)
    movzwl	sA(%rip), %eax
    movw	%ax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sA(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L58
    movzbl	-48(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    andl	$7, %edx
    movzbl	sA(%rip), %eax
    shrb	$2, %al
    andl	$7, %eax
    cmpb	%al, %dl
    jne	L58
    movzwl	-48(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %ecx
    movzbl	sA(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sA + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L58
    movzbl	-48(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sA(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L58
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L59
L58:
    call	abort
L59:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sA(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sA(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sA + 1(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sA + 1(%rip)
    movzwl	sA(%rip), %eax
    movw	%ax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sA(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L60
    movzbl	-48(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    andl	$7, %edx
    movzbl	sA(%rip), %eax
    shrb	$2, %al
    andl	$7, %eax
    cmpb	%al, %dl
    jne	L60
    movzbl	sA(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sA + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-28(%rbp), %eax
    jne	L60
    movzbl	-48(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sA(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L60
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L62
L60:
    call	abort
L62:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sB,6,1
    .globl	retmeB
retmeB:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movl	16(%rbp), %edx
    movl	%edx, (%rax)
    movzwl	20(%rbp), %edx
    movw	%dx, 4(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1B
fn1B:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movl	sB(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	sB + 4(%rip), %eax
    movw	%ax, -12(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    leaq	-16(%rbp), %rdx
    subq	$8, %rsp
    movq	%rsp, %rax
    movl	-16(%rbp), %ecx
    movl	%ecx, (%rax)
    movzwl	-12(%rbp), %ecx
    movw	%cx, 4(%rax)
    movq	%rdx, %rdi
    call	retmeB
    addq	$8, %rsp
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L67
    call	__stack_chk_fail
L67:
    leave
    ret
    .globl	fn2B
fn2B:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	sB(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	sB + 4(%rip), %eax
    movw	%ax, -12(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitB
retitB:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sB(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sB + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3B
fn3B:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sB(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sB + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sB(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sB(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sB + 1(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sB + 1(%rip)
    call	retitB
    leave
    ret
    .globl	testB
testB:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sB, -24(%rbp)
    movl	$0, -52(%rbp)
    jmp	L75
L76:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L75:
    movl	-52(%rbp), %eax
    cmpl	$5, %eax
    jbe	L76
    movzbl	sB(%rip), %eax
    orl	$-32, %eax
    movb	%al, sB(%rip)
    movzbl	sB + 1(%rip), %eax
    orl	$-1, %eax
    movb	%al, sB + 1(%rip)
    movzbl	sB(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sB + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sB(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sB(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sB + 1(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sB + 1(%rip)
    movl	sB(%rip), %eax
    movl	%eax, -32(%rbp)
    movzwl	sB + 4(%rip), %eax
    movw	%ax, -28(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$15, %eax
    movl	%eax, %edx
    movzbl	sB(%rip), %eax
    andl	$15, %eax
    cmpb	%al, %dl
    jne	L77
    movzbl	-32(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sB(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L77
    movzwl	-32(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %ecx
    movzbl	sB(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sB + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L77
    movl	-30(%rbp), %edx
    movl	sB + 2(%rip), %eax
    cmpl	%eax, %edx
    jne	L77
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L78
L77:
    call	abort
L78:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sB(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sB(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sB + 1(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sB + 1(%rip)
    movl	sB(%rip), %eax
    movl	%eax, -32(%rbp)
    movzwl	sB + 4(%rip), %eax
    movw	%ax, -28(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$15, %eax
    movl	%eax, %edx
    movzbl	sB(%rip), %eax
    andl	$15, %eax
    cmpb	%al, %dl
    jne	L79
    movzbl	-32(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sB(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L79
    movzwl	-32(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %ecx
    movzbl	sB(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sB + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L79
    movl	-30(%rbp), %edx
    movl	sB + 2(%rip), %eax
    cmpl	%eax, %edx
    jne	L79
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L80
L79:
    call	abort
L80:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sB(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sB(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sB + 1(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sB + 1(%rip)
    movl	sB(%rip), %eax
    movl	%eax, -32(%rbp)
    movzwl	sB + 4(%rip), %eax
    movw	%ax, -28(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$15, %eax
    movl	%eax, %edx
    movzbl	sB(%rip), %eax
    andl	$15, %eax
    cmpb	%al, %dl
    jne	L81
    movzbl	-32(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sB(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L81
    movzbl	sB(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sB + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-36(%rbp), %eax
    jne	L81
    movl	-30(%rbp), %edx
    movl	sB + 2(%rip), %eax
    cmpl	%eax, %edx
    jne	L81
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L83
L81:
    call	abort
L83:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sC,6,1
    .globl	retmeC
retmeC:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -24(%rbp)
    movl	-24(%rbp), %eax
    movl	%eax, -16(%rbp)
    movzwl	-20(%rbp), %eax
    movw	%ax, -12(%rbp)
    movl	$0, %eax
    movzbl	-16(%rbp), %edx
    movzbl	%dl, %edx
    movb	$0, %al
    orq	%rdx, %rax
    movzbl	-15(%rbp), %edx
    movb	%dl, %ah
    movzbl	-14(%rbp), %edx
    movzbl	%dl, %edx
    salq	$16, %rdx
    andq	$-16711681, %rax
    orq	%rdx, %rax
    movzbl	-13(%rbp), %edx
    movzbl	%dl, %edx
    movq	%rdx, %rcx
    salq	$24, %rcx
    movabsq	$-4278190081, %rdx
    andq	%rdx, %rax
    orq	%rcx, %rax
    movzbl	-12(%rbp), %edx
    movzbl	%dl, %edx
    movq	%rdx, %rcx
    salq	$32, %rcx
    movabsq	$-1095216660481, %rdx
    andq	%rdx, %rax
    orq	%rcx, %rax
    movzbl	-11(%rbp), %edx
    movzbl	%dl, %edx
    movq	%rdx, %rcx
    salq	$40, %rcx
    movabsq	$-280375465082881, %rdx
    andq	%rdx, %rax
    orq	%rcx, %rax
    popq	%rbp
    ret
    .globl	fn1C
fn1C:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$24, %rsp
    movl	%edi, -20(%rbp)
    movl	sC(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	sC + 4(%rip), %eax
    movw	%ax, -12(%rbp)
    movzwl	-12(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-12(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -12(%rbp)
    movq	-16(%rbp), %rdi
    call	retmeC
    movb	%al, -16(%rbp)
    movzbl	%ah, %edx
    movb	%dl, -15(%rbp)
    movq	%rax, %rdx
    shrq	$16, %rdx
    andb	$255, %dh
    movb	%dl, -14(%rbp)
    movq	%rax, %rdx
    shrq	$24, %rdx
    andb	$255, %dh
    movb	%dl, -13(%rbp)
    movq	%rax, %rdx
    shrq	$32, %rdx
    andb	$255, %dh
    movb	%dl, -12(%rbp)
    shrq	$40, %rax
    andb	$255, %ah
    movb	%al, -11(%rbp)
    movzwl	-12(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2C
fn2C:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	sC(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	sC + 4(%rip), %eax
    movw	%ax, -12(%rbp)
    movzwl	-12(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-12(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -12(%rbp)
    movzwl	-12(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$2047, %ax
    sall	$5, %eax
    movl	%eax, %edx
    movzwl	-12(%rbp), %eax
    andl	$31, %eax
    orl	%edx, %eax
    movw	%ax, -12(%rbp)
    movzwl	-12(%rbp), %eax
    shrw	$5, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitC
retitC:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sC + 4(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sC + 5(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3C
fn3C:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sC + 4(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sC + 5(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sC + 4(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sC + 4(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sC + 5(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sC + 5(%rip)
    call	retitC
    leave
    ret
    .globl	testC
testC:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$48, %rsp
    movq	$sC, -16(%rbp)
    movl	$0, -44(%rbp)
    jmp	L95
L96:
    movq	-16(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -16(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L95:
    movl	-44(%rbp), %eax
    cmpl	$5, %eax
    jbe	L96
    movzbl	sC + 4(%rip), %eax
    orl	$-32, %eax
    movb	%al, sC + 4(%rip)
    movzbl	sC + 5(%rip), %eax
    orl	$-1, %eax
    movb	%al, sC + 5(%rip)
    movzbl	sC + 4(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sC + 5(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -40(%rbp)
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sC + 4(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sC + 4(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sC + 5(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sC + 5(%rip)
    movl	sC(%rip), %eax
    movl	%eax, -24(%rbp)
    movzwl	sC + 4(%rip), %eax
    movw	%ax, -20(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1C
    movl	%eax, -28(%rbp)
    movzbl	-20(%rbp), %eax
    andl	$15, %eax
    movl	%eax, %edx
    movzbl	sC + 4(%rip), %eax
    andl	$15, %eax
    cmpb	%al, %dl
    jne	L97
    movzbl	-20(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sC + 4(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L97
    movzwl	-20(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %ecx
    movzbl	sC + 4(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sC + 5(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L97
    movl	-24(%rbp), %edx
    movl	sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L97
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L98
L97:
    call	abort
L98:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sC + 4(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sC + 4(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sC + 5(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sC + 5(%rip)
    movl	sC(%rip), %eax
    movl	%eax, -24(%rbp)
    movzwl	sC + 4(%rip), %eax
    movw	%ax, -20(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2C
    movl	%eax, -28(%rbp)
    movzbl	-20(%rbp), %eax
    andl	$15, %eax
    movl	%eax, %edx
    movzbl	sC + 4(%rip), %eax
    andl	$15, %eax
    cmpb	%al, %dl
    jne	L99
    movzbl	-20(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sC + 4(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L99
    movzwl	-20(%rbp), %eax
    shrw	$5, %ax
    movl	%eax, %ecx
    movzbl	sC + 4(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sC + 5(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L99
    movl	-24(%rbp), %edx
    movl	sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L99
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L100
L99:
    call	abort
L100:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$2047, %ax
    movzwl	%ax, %edx
    andl	$7, %edx
    movl	%edx, %ecx
    sall	$5, %ecx
    movzbl	sC + 4(%rip), %edx
    andl	$31, %edx
    orl	%ecx, %edx
    movb	%dl, sC + 4(%rip)
    shrw	$3, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sC + 5(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sC + 5(%rip)
    movl	sC(%rip), %eax
    movl	%eax, -24(%rbp)
    movzwl	sC + 4(%rip), %eax
    movw	%ax, -20(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3C
    movl	%eax, -28(%rbp)
    movzbl	-20(%rbp), %eax
    andl	$15, %eax
    movl	%eax, %edx
    movzbl	sC + 4(%rip), %eax
    andl	$15, %eax
    cmpb	%al, %dl
    jne	L101
    movzbl	-20(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sC + 4(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L101
    movzbl	sC + 4(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sC + 5(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-28(%rbp), %eax
    jne	L101
    movl	-24(%rbp), %edx
    movl	sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L101
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L103
L101:
    call	abort
L103:
    nop
    addq	$48, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sD,8,8
    .globl	retmeD
retmeD:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1D
fn1D:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sD(%rip), %rax
    movq	%rax, -16(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-12(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -12(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	retmeD
    movq	%rax, -16(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    leave
    ret
    .globl	fn2D
fn2D:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sD(%rip), %rax
    movq	%rax, -16(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-12(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-12(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	retitD
retitD:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sD + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sD + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sD + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sD + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    popq	%rbp
    ret
    .globl	fn3D
fn3D:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sD + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sD + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sD + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sD + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sD + 4(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 4(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sD + 5(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 5(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sD + 6(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 6(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sD + 7(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sD + 7(%rip)
    call	retitD
    leave
    ret
    .globl	testD
testD:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sD, -24(%rbp)
    movl	$0, -52(%rbp)
    jmp	L115
L116:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L115:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L116
    movzbl	sD + 4(%rip), %eax
    orl	$-8, %eax
    movb	%al, sD + 4(%rip)
    movzbl	sD + 5(%rip), %eax
    orl	$-1, %eax
    movb	%al, sD + 5(%rip)
    movzbl	sD + 6(%rip), %eax
    orl	$-1, %eax
    movb	%al, sD + 6(%rip)
    movzbl	sD + 7(%rip), %eax
    orl	$-1, %eax
    movb	%al, sD + 7(%rip)
    movzbl	sD + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sD + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sD + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sD + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sD + 4(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 4(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sD + 5(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 5(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sD + 6(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 6(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sD + 7(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sD + 7(%rip)
    movq	sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %ecx
    andl	$63, %ecx
    movzbl	sD(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sD + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L117
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sD + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sD + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sD + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sD + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L117
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sD + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sD + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sD + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sD + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L117
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L117
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L118
L117:
    call	abort
L118:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sD + 4(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 4(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sD + 5(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 5(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sD + 6(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 6(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sD + 7(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sD + 7(%rip)
    movq	sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %ecx
    andl	$63, %ecx
    movzbl	sD(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sD + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L119
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sD + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sD + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sD + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sD + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L119
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sD + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sD + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sD + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sD + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L119
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L119
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L120
L119:
    call	abort
L120:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sD + 4(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 4(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sD + 5(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 5(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sD + 6(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sD + 6(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sD + 7(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sD + 7(%rip)
    movq	sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %ecx
    andl	$63, %ecx
    movzbl	sD(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sD + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L121
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sD + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sD + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sD + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sD + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L121
    movzbl	sD + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sD + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sD + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sD + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	-36(%rbp), %eax
    jne	L121
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L121
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L123
L121:
    call	abort
L123:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sE,16,16
    .globl	retmeE
retmeE:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, %rax
    movq	%rsi, %rcx
    movq	%rcx, %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rax
    movq	-8(%rbp), %rdx
    popq	%rbp
    ret
    .globl	fn1E
fn1E:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sE(%rip), %rax
    movq	sE + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-4(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-4(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -4(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeE
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-4(%rbp), %eax
    shrl	$3, %eax
    leave
    ret
    .globl	fn2E
fn2E:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sE(%rip), %rax
    movq	sE + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-4(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-4(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -4(%rbp)
    movl	-4(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-4(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -4(%rbp)
    movl	-4(%rbp), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	retitE
retitE:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sE + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sE + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sE + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sE + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    popq	%rbp
    ret
    .globl	fn3E
fn3E:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sE + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sE + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sE + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sE + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sE + 12(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 12(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sE + 13(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 13(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sE + 14(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 14(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sE + 15(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sE + 15(%rip)
    call	retitE
    leave
    ret
    .globl	testE
testE:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sE, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L135
L136:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L135:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L136
    movzbl	sE + 12(%rip), %eax
    orl	$-8, %eax
    movb	%al, sE + 12(%rip)
    movzbl	sE + 13(%rip), %eax
    orl	$-1, %eax
    movb	%al, sE + 13(%rip)
    movzbl	sE + 14(%rip), %eax
    orl	$-1, %eax
    movb	%al, sE + 14(%rip)
    movzbl	sE + 15(%rip), %eax
    orl	$-1, %eax
    movb	%al, sE + 15(%rip)
    movzbl	sE + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sE + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sE + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sE + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sE + 12(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 12(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sE + 13(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 13(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sE + 14(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 14(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sE + 15(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sE + 15(%rip)
    movq	sE(%rip), %rax
    movq	sE + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1E
    movl	%eax, -44(%rbp)
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sE + 8(%rip), %eax
    movzbl	sE + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L137
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sE + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sE + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sE + 11(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sE + 12(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L137
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sE + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sE + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sE + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sE + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L137
    movq	-32(%rbp), %rdx
    movq	sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L137
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L138
L137:
    call	abort
L138:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sE + 12(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 12(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sE + 13(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 13(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sE + 14(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 14(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sE + 15(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sE + 15(%rip)
    movq	sE(%rip), %rax
    movq	sE + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2E
    movl	%eax, -44(%rbp)
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sE + 8(%rip), %eax
    movzbl	sE + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L139
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sE + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sE + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sE + 11(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sE + 12(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L139
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sE + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sE + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sE + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sE + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L139
    movq	-32(%rbp), %rdx
    movq	sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L139
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L140
L139:
    call	abort
L140:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sE + 12(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 12(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sE + 13(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 13(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sE + 14(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sE + 14(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sE + 15(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sE + 15(%rip)
    movq	sE(%rip), %rax
    movq	sE + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3E
    movl	%eax, -44(%rbp)
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sE + 8(%rip), %eax
    movzbl	sE + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L141
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sE + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sE + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sE + 11(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sE + 12(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L141
    movzbl	sE + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sE + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sE + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sE + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	-44(%rbp), %eax
    jne	L141
    movq	-32(%rbp), %rdx
    movq	sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L141
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L143
L141:
    call	abort
L143:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sF,16,16
    .globl	retmeF
retmeF:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, %rax
    movq	%rsi, %rcx
    movq	%rcx, %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rax
    movq	-8(%rbp), %rdx
    popq	%rbp
    ret
    .globl	fn1F
fn1F:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sF(%rip), %rax
    movq	sF + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-12(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -12(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeF
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    leave
    ret
    .globl	fn2F
fn2F:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sF(%rip), %rax
    movq	sF + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-12(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	-12(%rbp), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, -12(%rbp)
    movl	-12(%rbp), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	retitF
retitF:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sF + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sF + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sF + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sF + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    popq	%rbp
    ret
    .globl	fn3F
fn3F:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sF + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sF + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sF + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sF + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sF + 4(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 4(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sF + 5(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 5(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sF + 6(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 6(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sF + 7(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sF + 7(%rip)
    call	retitF
    leave
    ret
    .globl	testF
testF:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sF, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L155
L156:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L155:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L156
    movzbl	sF + 4(%rip), %eax
    orl	$-8, %eax
    movb	%al, sF + 4(%rip)
    movzbl	sF + 5(%rip), %eax
    orl	$-1, %eax
    movb	%al, sF + 5(%rip)
    movzbl	sF + 6(%rip), %eax
    orl	$-1, %eax
    movb	%al, sF + 6(%rip)
    movzbl	sF + 7(%rip), %eax
    orl	$-1, %eax
    movb	%al, sF + 7(%rip)
    movzbl	sF + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sF + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sF + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sF + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sF + 4(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 4(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sF + 5(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 5(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sF + 6(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 6(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sF + 7(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sF + 7(%rip)
    movq	sF(%rip), %rax
    movq	sF + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1F
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sF(%rip), %eax
    movzbl	sF + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L157
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sF + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sF + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sF + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sF + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L157
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sF + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sF + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sF + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sF + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L157
    movq	-24(%rbp), %rdx
    movq	sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L157
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L158
L157:
    call	abort
L158:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sF + 4(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 4(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sF + 5(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 5(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sF + 6(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 6(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sF + 7(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sF + 7(%rip)
    movq	sF(%rip), %rax
    movq	sF + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2F
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sF(%rip), %eax
    movzbl	sF + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L159
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sF + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sF + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sF + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sF + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L159
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sF + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sF + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sF + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sF + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L159
    movq	-24(%rbp), %rdx
    movq	sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L159
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L160
L159:
    call	abort
L160:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    movl	%eax, %edx
    andl	$31, %edx
    leal	0(,%rdx,8), %ecx
    movzbl	sF + 4(%rip), %edx
    andl	$7, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 4(%rip)
    movl	%eax, %edx
    shrl	$5, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sF + 5(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 5(%rip)
    movl	%eax, %edx
    shrl	$13, %edx
    movl	%edx, %edx
    movzbl	%dl, %ecx
    movzbl	sF + 6(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sF + 6(%rip)
    shrl	$21, %eax
    movl	%eax, %eax
    movzbl	%al, %edx
    movzbl	sF + 7(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sF + 7(%rip)
    movq	sF(%rip), %rax
    movq	sF + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3F
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sF(%rip), %eax
    movzbl	sF + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L161
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sF + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sF + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sF + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sF + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L161
    movzbl	sF + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sF + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sF + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sF + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	-44(%rbp), %eax
    jne	L161
    movq	-24(%rbp), %rdx
    movq	sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L161
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L163
L161:
    call	abort
L163:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sG,9,8
    .globl	retmeG
retmeG:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movzbl	24(%rbp), %edx
    movb	%dl, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1G
fn1G:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sG(%rip), %rax
    movq	%rax, -32(%rbp)
    movzbl	sG + 8(%rip), %eax
    movb	%al, -24(%rbp)
    movzbl	-32(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    leal	0(,%rax,4), %edx
    movzbl	-32(%rbp), %eax
    andl	$3, %eax
    orl	%edx, %eax
    movb	%al, -32(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movzbl	-24(%rbp), %ecx
    movb	%cl, 8(%rax)
    movq	%rdx, %rdi
    call	retmeG
    addq	$16, %rsp
    movzbl	-32(%rbp), %eax
    shrb	$2, %al
    movzbl	%al, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L168
    call	__stack_chk_fail
L168:
    leave
    ret
    .globl	fn2G
fn2G:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sG(%rip), %rax
    movq	%rax, -16(%rbp)
    movzbl	sG + 8(%rip), %eax
    movb	%al, -8(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    leal	0(,%rax,4), %edx
    movzbl	-16(%rbp), %eax
    andl	$3, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$2, %al
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$63, %eax
    leal	0(,%rax,4), %edx
    movzbl	-16(%rbp), %eax
    andl	$3, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$2, %al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitG
retitG:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3G
fn3G:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    leal	0(,%rax,4), %edx
    movzbl	sG(%rip), %eax
    andl	$3, %eax
    orl	%edx, %eax
    movb	%al, sG(%rip)
    call	retitG
    leave
    ret
    .globl	testG
testG:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sG, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L176
L177:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L176:
    movl	-60(%rbp), %eax
    cmpl	$8, %eax
    jbe	L177
    movzbl	sG(%rip), %eax
    orl	$-4, %eax
    movb	%al, sG(%rip)
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    movzbl	%al, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$63, %eax
    leal	0(,%rax,4), %edx
    movzbl	sG(%rip), %eax
    andl	$3, %eax
    orl	%edx, %eax
    movb	%al, sG(%rip)
    movq	sG(%rip), %rax
    movq	%rax, -32(%rbp)
    movzbl	sG + 8(%rip), %eax
    movb	%al, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1G
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sG(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L178
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sG(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L178
    movzbl	-32(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    cmpb	%al, %dl
    jne	L178
    movq	-31(%rbp), %rdx
    movq	sG + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L178
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L179
L178:
    call	abort
L179:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$63, %eax
    leal	0(,%rax,4), %edx
    movzbl	sG(%rip), %eax
    andl	$3, %eax
    orl	%edx, %eax
    movb	%al, sG(%rip)
    movq	sG(%rip), %rax
    movq	%rax, -32(%rbp)
    movzbl	sG + 8(%rip), %eax
    movb	%al, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2G
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sG(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L180
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sG(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L180
    movzbl	-32(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    cmpb	%al, %dl
    jne	L180
    movq	-31(%rbp), %rdx
    movq	sG + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L180
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L181
L180:
    call	abort
L181:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$63, %eax
    leal	0(,%rax,4), %edx
    movzbl	sG(%rip), %eax
    andl	$3, %eax
    orl	%edx, %eax
    movb	%al, sG(%rip)
    movq	sG(%rip), %rax
    movq	%rax, -32(%rbp)
    movzbl	sG + 8(%rip), %eax
    movb	%al, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3G
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sG(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L182
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sG(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L182
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L182
    movq	-31(%rbp), %rdx
    movq	sG + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L182
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L184
L182:
    call	abort
L184:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sH,10,8
    .globl	retmeH
retmeH:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movzwl	24(%rbp), %edx
    movw	%dx, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1H
fn1H:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sH(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sH + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movzbl	-31(%rbp), %eax
    movl	-36(%rbp), %edx
    addl	%edx, %eax
    movb	%al, -31(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movzwl	-24(%rbp), %ecx
    movw	%cx, 8(%rax)
    movq	%rdx, %rdi
    call	retmeH
    addq	$16, %rsp
    movzbl	-31(%rbp), %eax
    movzbl	%al, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L189
    call	__stack_chk_fail
L189:
    leave
    ret
    .globl	fn2H
fn2H:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sH(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	sH + 8(%rip), %eax
    movw	%ax, -8(%rbp)
    movzbl	-15(%rbp), %eax
    movl	-20(%rbp), %edx
    addl	%edx, %eax
    movb	%al, -15(%rbp)
    movzbl	-15(%rbp), %ecx
    movzbl	%cl, %edx
    movl	%edx, %eax
    sall	$4, %eax
    addl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    shrw	$8, %ax
    shrb	$3, %al
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    movb	%al, -15(%rbp)
    movzbl	-15(%rbp), %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitH
retitH:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sH + 1(%rip), %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3H
fn3H:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sH + 1(%rip), %eax
    movl	-4(%rbp), %edx
    addl	%edx, %eax
    movb	%al, sH + 1(%rip)
    call	retitH
    leave
    ret
    .globl	testH
testH:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sH, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L197
L198:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L197:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L198
    movb	$-1, sH + 1(%rip)
    movzbl	sH + 1(%rip), %eax
    movzbl	%al, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    movb	%al, sH + 1(%rip)
    movq	sH(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sH + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1H
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L199
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    shrb	$6, %al
    cmpb	%al, %dl
    jne	L199
    movzbl	-31(%rbp), %edx
    movzbl	sH + 1(%rip), %eax
    cmpb	%al, %dl
    jne	L199
    movq	-30(%rbp), %rdx
    movq	sH + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L199
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L200
L199:
    call	abort
L200:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    movb	%al, sH + 1(%rip)
    movq	sH(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sH + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2H
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L201
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    shrb	$6, %al
    cmpb	%al, %dl
    jne	L201
    movzbl	-31(%rbp), %edx
    movzbl	sH + 1(%rip), %eax
    cmpb	%al, %dl
    jne	L201
    movq	-30(%rbp), %rdx
    movq	sH + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L201
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L202
L201:
    call	abort
L202:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    movb	%al, sH + 1(%rip)
    movq	sH(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sH + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3H
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L203
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    shrb	$6, %al
    cmpb	%al, %dl
    jne	L203
    movzbl	sH + 1(%rip), %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L203
    movq	-30(%rbp), %rdx
    movq	sH + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L203
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L205
L203:
    call	abort
L205:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sI,9,8
    .globl	retmeI
retmeI:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movzbl	24(%rbp), %edx
    movb	%dl, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1I
fn1I:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sI(%rip), %rax
    movq	%rax, -32(%rbp)
    movzbl	sI + 8(%rip), %eax
    movb	%al, -24(%rbp)
    movzbl	-32(%rbp), %eax
    shrb	$7, %al
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    sall	$7, %eax
    movl	%eax, %edx
    movzbl	-32(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movb	%al, -32(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movzbl	-24(%rbp), %ecx
    movb	%cl, 8(%rax)
    movq	%rdx, %rdi
    call	retmeI
    addq	$16, %rsp
    movzbl	-32(%rbp), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L210
    call	__stack_chk_fail
L210:
    leave
    ret
    .globl	fn2I
fn2I:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sI(%rip), %rax
    movq	%rax, -16(%rbp)
    movzbl	sI + 8(%rip), %eax
    movb	%al, -8(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$7, %al
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    sall	$7, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$7, %al
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$1, %eax
    sall	$7, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitI
retitI:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3I
fn3I:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    sall	$7, %eax
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movb	%al, sI(%rip)
    call	retitI
    leave
    ret
    .globl	testI
testI:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sI, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L218
L219:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L218:
    movl	-60(%rbp), %eax
    cmpl	$8, %eax
    jbe	L219
    movzbl	sI(%rip), %eax
    orl	$-128, %eax
    movb	%al, sI(%rip)
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    sall	$7, %eax
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movb	%al, sI(%rip)
    movq	sI(%rip), %rax
    movq	%rax, -32(%rbp)
    movzbl	sI + 8(%rip), %eax
    movb	%al, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1I
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L220
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L220
    movzbl	-32(%rbp), %eax
    shrb	$7, %al
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    cmpb	%al, %dl
    jne	L220
    movq	-31(%rbp), %rdx
    movq	sI + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L220
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L221
L220:
    call	abort
L221:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    sall	$7, %eax
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movb	%al, sI(%rip)
    movq	sI(%rip), %rax
    movq	%rax, -32(%rbp)
    movzbl	sI + 8(%rip), %eax
    movb	%al, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2I
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L222
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L222
    movzbl	-32(%rbp), %eax
    shrb	$7, %al
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    cmpb	%al, %dl
    jne	L222
    movq	-31(%rbp), %rdx
    movq	sI + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L222
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L223
L222:
    call	abort
L223:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    sall	$7, %eax
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movb	%al, sI(%rip)
    movq	sI(%rip), %rax
    movq	%rax, -32(%rbp)
    movzbl	sI + 8(%rip), %eax
    movb	%al, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3I
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L224
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L224
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L224
    movq	-31(%rbp), %rdx
    movq	sI + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L224
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L226
L224:
    call	abort
L226:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sJ,4,1
    .globl	retmeJ
retmeJ:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -16(%rbp)
    movl	-16(%rbp), %eax
    popq	%rbp
    ret
    .globl	fn1J
fn1J:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movl	sJ(%rip), %eax
    movl	%eax, -16(%rbp)
    movzbl	-15(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	-15(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, -15(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, %edi
    call	retmeJ
    movl	%eax, -16(%rbp)
    movzbl	-15(%rbp), %eax
    shrb	%al
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2J
fn2J:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	sJ(%rip), %eax
    movl	%eax, -16(%rbp)
    movzbl	-15(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	-15(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, -15(%rbp)
    movzbl	-15(%rbp), %eax
    shrb	%al
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	-15(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, -15(%rbp)
    movzbl	-15(%rbp), %eax
    shrb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitJ
retitJ:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3J
fn3J:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	sJ + 1(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, sJ + 1(%rip)
    call	retitJ
    leave
    ret
    .globl	testJ
testJ:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	$sJ, -24(%rbp)
    movl	$0, -44(%rbp)
    jmp	L238
L239:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L238:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L239
    movzbl	sJ + 1(%rip), %eax
    orl	$-2, %eax
    movb	%al, sJ + 1(%rip)
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movl	%eax, -40(%rbp)
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	sJ + 1(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, sJ + 1(%rip)
    movl	sJ(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1J
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sJ(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L240
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    andb	$255, %ch
    movzbl	sJ(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sJ + 1(%rip), %edx
    andl	$1, %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L240
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L240
    movzwl	-46(%rbp), %edx
    movzwl	sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L240
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L241
L240:
    call	abort
L241:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	sJ + 1(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, sJ + 1(%rip)
    movl	sJ(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2J
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sJ(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L242
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    andb	$255, %ch
    movzbl	sJ(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sJ + 1(%rip), %edx
    andl	$1, %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L242
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L242
    movzwl	-46(%rbp), %edx
    movzwl	sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L242
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L243
L242:
    call	abort
L243:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	sJ + 1(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, sJ + 1(%rip)
    movl	sJ(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3J
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sJ(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L244
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    andb	$255, %ch
    movzbl	sJ(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sJ + 1(%rip), %edx
    andl	$1, %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L244
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L244
    movzwl	-46(%rbp), %edx
    movzwl	sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L244
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L246
L244:
    call	abort
L246:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sK,4,1
    .globl	retmeK
retmeK:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -16(%rbp)
    movl	-16(%rbp), %eax
    popq	%rbp
    ret
    .globl	fn1K
fn1K:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movl	sK(%rip), %eax
    movl	%eax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, %edi
    call	retmeK
    movl	%eax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2K
fn2K:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	sK(%rip), %eax
    movl	%eax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitK
retitK:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3K
fn3K:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sK(%rip)
    call	retitK
    leave
    ret
    .globl	testK
testK:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	$sK, -24(%rbp)
    movl	$0, -44(%rbp)
    jmp	L258
L259:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L258:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L259
    movzbl	sK(%rip), %eax
    orl	$63, %eax
    movb	%al, sK(%rip)
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    movl	%eax, -40(%rbp)
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sK(%rip)
    movl	sK(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1K
    movl	%eax, -28(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sK + 2(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sK + 3(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L260
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %ecx
    andw	$1023, %cx
    movzbl	sK(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sK + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rax, %rdx
    movzbl	sK + 2(%rip), %eax
    andl	$1, %eax
    salq	$9, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L260
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L260
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L260
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L261
L260:
    call	abort
L261:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sK(%rip)
    movl	sK(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2K
    movl	%eax, -28(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sK + 2(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sK + 3(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L262
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %ecx
    andw	$1023, %cx
    movzbl	sK(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sK + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rax, %rdx
    movzbl	sK + 2(%rip), %eax
    andl	$1, %eax
    salq	$9, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L262
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L262
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L262
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L263
L262:
    call	abort
L263:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sK(%rip)
    movl	sK(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3K
    movl	%eax, -28(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sK + 2(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sK + 3(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L264
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %ecx
    andw	$1023, %cx
    movzbl	sK(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sK + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rax, %rdx
    movzbl	sK + 2(%rip), %eax
    andl	$1, %eax
    salq	$9, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L264
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L264
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L264
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L266
L264:
    call	abort
L266:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sL,8,8
    .globl	retmeL
retmeL:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1L
fn1L:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sL(%rip), %rax
    movq	%rax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	retmeL
    movq	%rax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2L
fn2L:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sL(%rip), %rax
    movq	%rax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitL
retitL:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3L
fn3L:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sL(%rip)
    call	retitL
    leave
    ret
    .globl	testL
testL:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sL, -24(%rbp)
    movl	$0, -52(%rbp)
    jmp	L278
L279:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L278:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L279
    movzbl	sL(%rip), %eax
    orl	$63, %eax
    movb	%al, sL(%rip)
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sL(%rip)
    movq	sL(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1L
    movl	%eax, -36(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sL + 2(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sL + 3(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L280
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sL(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sL + 1(%rip), %edx
    salq	$2, %rdx
    orq	%rax, %rdx
    movzbl	sL + 2(%rip), %eax
    andl	$1, %eax
    salq	$10, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L280
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L280
    movl	-28(%rbp), %edx
    movl	sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L280
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L281
L280:
    call	abort
L281:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sL(%rip)
    movq	sL(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2L
    movl	%eax, -36(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sL + 2(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sL + 3(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L282
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sL(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sL + 1(%rip), %edx
    salq	$2, %rdx
    orq	%rax, %rdx
    movzbl	sL + 2(%rip), %eax
    andl	$1, %eax
    salq	$10, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L282
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L282
    movl	-28(%rbp), %edx
    movl	sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L282
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L283
L282:
    call	abort
L283:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sL(%rip)
    movq	sL(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3L
    movl	%eax, -36(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sL + 2(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sL + 3(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L284
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sL(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sL + 1(%rip), %edx
    salq	$2, %rdx
    orq	%rax, %rdx
    movzbl	sL + 2(%rip), %eax
    andl	$1, %eax
    salq	$10, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L284
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L284
    movl	-28(%rbp), %edx
    movl	sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L284
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L286
L284:
    call	abort
L286:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sM,8,8
    .globl	retmeM
retmeM:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1M
fn1M:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sM(%rip), %rax
    movq	%rax, -16(%rbp)
    movzbl	-12(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-12(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -12(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	retmeM
    movq	%rax, -16(%rbp)
    movzbl	-12(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2M
fn2M:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sM(%rip), %rax
    movq	%rax, -16(%rbp)
    movzbl	-12(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-12(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -12(%rbp)
    movzbl	-12(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	-12(%rbp), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, -12(%rbp)
    movzbl	-12(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitM
retitM:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3M
fn3M:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sM + 4(%rip)
    call	retitM
    leave
    ret
    .globl	testM
testM:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sM, -24(%rbp)
    movl	$0, -52(%rbp)
    jmp	L298
L299:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L298:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L299
    movzbl	sM + 4(%rip), %eax
    orl	$63, %eax
    movb	%al, sM + 4(%rip)
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sM + 4(%rip)
    movq	sM(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1M
    movl	%eax, -36(%rbp)
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sM + 6(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sM + 7(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L300
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sM + 4(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sM + 5(%rip), %edx
    salq	$2, %rdx
    orq	%rax, %rdx
    movzbl	sM + 6(%rip), %eax
    andl	$1, %eax
    salq	$10, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L300
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L300
    movl	-32(%rbp), %edx
    movl	sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L300
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L301
L300:
    call	abort
L301:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sM + 4(%rip)
    movq	sM(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2M
    movl	%eax, -36(%rbp)
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sM + 6(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sM + 7(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L302
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sM + 4(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sM + 5(%rip), %edx
    salq	$2, %rdx
    orq	%rax, %rdx
    movzbl	sM + 6(%rip), %eax
    andl	$1, %eax
    salq	$10, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L302
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L302
    movl	-32(%rbp), %edx
    movl	sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L302
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L303
L302:
    call	abort
L303:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, sM + 4(%rip)
    movq	sM(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3M
    movl	%eax, -36(%rbp)
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    movzbl	sM + 6(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sM + 7(%rip), %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L304
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sM + 4(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sM + 5(%rip), %edx
    salq	$2, %rdx
    orq	%rax, %rdx
    movzbl	sM + 6(%rip), %eax
    andl	$1, %eax
    salq	$10, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L304
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L304
    movl	-32(%rbp), %edx
    movl	sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L304
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L306
L304:
    call	abort
L306:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sN,8,8
    .globl	retmeN
retmeN:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1N
fn1N:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sN(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    movzbl	%al, %eax
    andl	$63, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	retmeN
    movq	%rax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2N
fn2N:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sN(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    movzbl	%al, %eax
    andl	$63, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$63, %eax
    movzbl	%al, %eax
    andl	$63, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitN
retitN:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sN(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sN + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3N
fn3N:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sN(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sN + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    movzbl	%al, %edx
    andl	$3, %edx
    movl	%edx, %ecx
    sall	$6, %ecx
    movzbl	sN(%rip), %edx
    andl	$63, %edx
    orl	%ecx, %edx
    movb	%dl, sN(%rip)
    shrb	$2, %al
    movzbl	%al, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sN + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sN + 1(%rip)
    call	retitN
    leave
    ret
    .globl	testN
testN:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sN, -24(%rbp)
    movl	$0, -52(%rbp)
    jmp	L318
L319:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L318:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L319
    movzbl	sN(%rip), %eax
    orl	$-64, %eax
    movb	%al, sN(%rip)
    movzbl	sN + 1(%rip), %eax
    orl	$15, %eax
    movb	%al, sN + 1(%rip)
    movzbl	sN(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sN + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    movzbl	%al, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %edx
    andl	$3, %edx
    movl	%edx, %ecx
    sall	$6, %ecx
    movzbl	sN(%rip), %edx
    andl	$63, %edx
    orl	%ecx, %edx
    movb	%dl, sN(%rip)
    shrb	$2, %al
    movzbl	%al, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sN + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sN + 1(%rip)
    movq	sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sN + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sN + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sN + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sN + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L320
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sN + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sN + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sN + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sN + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L320
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %ecx
    andl	$63, %ecx
    movzbl	sN(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sN + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L320
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L320
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L321
L320:
    call	abort
L321:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %edx
    andl	$3, %edx
    movl	%edx, %ecx
    sall	$6, %ecx
    movzbl	sN(%rip), %edx
    andl	$63, %edx
    orl	%ecx, %edx
    movb	%dl, sN(%rip)
    shrb	$2, %al
    movzbl	%al, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sN + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sN + 1(%rip)
    movq	sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sN + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sN + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sN + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sN + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L322
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sN + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sN + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sN + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sN + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L322
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %ecx
    andl	$63, %ecx
    movzbl	sN(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sN + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L322
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L322
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L323
L322:
    call	abort
L323:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %edx
    andl	$3, %edx
    movl	%edx, %ecx
    sall	$6, %ecx
    movzbl	sN(%rip), %edx
    andl	$63, %edx
    orl	%ecx, %edx
    movb	%dl, sN(%rip)
    shrb	$2, %al
    movzbl	%al, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sN + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sN + 1(%rip)
    movq	sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sN + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sN + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sN + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sN + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L324
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sN + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sN + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sN + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sN + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L324
    movzbl	sN(%rip), %eax
    shrb	$6, %al
    movzbl	%al, %eax
    movzbl	sN + 1(%rip), %edx
    andl	$15, %edx
    salq	$2, %rdx
    orq	%rdx, %rax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L324
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L324
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L326
L324:
    call	abort
L326:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sO,16,16
    .globl	retmeO
retmeO:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, %rax
    movq	%rsi, %rcx
    movq	%rcx, %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rax
    movq	-8(%rbp), %rdx
    popq	%rbp
    ret
    .globl	fn1O
fn1O:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sO(%rip), %rax
    movq	sO + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-8(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -8(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeO
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2O
fn2O:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sO(%rip), %rax
    movq	sO + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-8(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-8(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitO
retitO:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sO + 8(%rip), %eax
    movzbl	sO + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3O
fn3O:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sO + 8(%rip), %eax
    movzbl	sO + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sO + 8(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sO + 8(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sO + 9(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sO + 9(%rip)
    call	retitO
    leave
    ret
    .globl	testO
testO:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sO, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L338
L339:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L338:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L339
    movzbl	sO + 8(%rip), %eax
    orl	$-1, %eax
    movb	%al, sO + 8(%rip)
    movzbl	sO + 9(%rip), %eax
    orl	$15, %eax
    movb	%al, sO + 9(%rip)
    movzbl	sO + 8(%rip), %eax
    movzbl	sO + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sO + 8(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sO + 8(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sO + 9(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sO + 9(%rip)
    movq	sO(%rip), %rax
    movq	sO + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1O
    movl	%eax, -44(%rbp)
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sO + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sO + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sO + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sO + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L340
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sO + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sO + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sO + 11(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sO + 12(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L340
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sO + 8(%rip), %eax
    movzbl	sO + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L340
    movq	-32(%rbp), %rdx
    movq	sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L340
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L341
L340:
    call	abort
L341:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sO + 8(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sO + 8(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sO + 9(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sO + 9(%rip)
    movq	sO(%rip), %rax
    movq	sO + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2O
    movl	%eax, -44(%rbp)
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sO + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sO + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sO + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sO + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L342
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sO + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sO + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sO + 11(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sO + 12(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L342
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sO + 8(%rip), %eax
    movzbl	sO + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L342
    movq	-32(%rbp), %rdx
    movq	sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L342
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L343
L342:
    call	abort
L343:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sO + 8(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sO + 8(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sO + 9(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sO + 9(%rip)
    movq	sO(%rip), %rax
    movq	sO + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3O
    movl	%eax, -44(%rbp)
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sO + 12(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sO + 13(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sO + 14(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sO + 15(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L344
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sO + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sO + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sO + 11(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sO + 12(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L344
    movzbl	sO + 8(%rip), %eax
    movzbl	sO + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L344
    movq	-32(%rbp), %rdx
    movq	sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L344
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L346
L344:
    call	abort
L346:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sP,16,16
    .globl	retmeP
retmeP:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, %rax
    movq	%rsi, %rcx
    movq	%rcx, %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movq	-16(%rbp), %rax
    movq	-8(%rbp), %rdx
    popq	%rbp
    ret
    .globl	fn1P
fn1P:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sP(%rip), %rax
    movq	sP + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeP
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2P
fn2P:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sP(%rip), %rax
    movq	sP + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitP
retitP:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sP(%rip), %eax
    movzbl	sP + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3P
fn3P:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sP(%rip), %eax
    movzbl	sP + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sP(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sP(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sP + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sP + 1(%rip)
    call	retitP
    leave
    ret
    .globl	testP
testP:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sP, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L358
L359:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L358:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L359
    movzbl	sP(%rip), %eax
    orl	$-1, %eax
    movb	%al, sP(%rip)
    movzbl	sP + 1(%rip), %eax
    orl	$15, %eax
    movb	%al, sP + 1(%rip)
    movzbl	sP(%rip), %eax
    movzbl	sP + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sP(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sP(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sP + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sP + 1(%rip)
    movq	sP(%rip), %rax
    movq	sP + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1P
    movl	%eax, -44(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sP + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sP + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sP + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sP + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L360
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sP + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sP + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sP + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sP + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L360
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sP(%rip), %eax
    movzbl	sP + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L360
    movq	-24(%rbp), %rdx
    movq	sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L360
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L361
L360:
    call	abort
L361:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sP(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sP(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sP + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sP + 1(%rip)
    movq	sP(%rip), %rax
    movq	sP + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2P
    movl	%eax, -44(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sP + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sP + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sP + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sP + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L362
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sP + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sP + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sP + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sP + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L362
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sP(%rip), %eax
    movzbl	sP + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L362
    movq	-24(%rbp), %rdx
    movq	sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L362
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L363
L362:
    call	abort
L363:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sP(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sP(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sP + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sP + 1(%rip)
    movq	sP(%rip), %rax
    movq	sP + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3P
    movl	%eax, -44(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %ecx
    movzbl	sP + 4(%rip), %eax
    shrb	$3, %al
    movzbl	%al, %eax
    movzbl	sP + 5(%rip), %edx
    salq	$5, %rdx
    orq	%rax, %rdx
    movzbl	sP + 6(%rip), %eax
    salq	$13, %rax
    orq	%rax, %rdx
    movzbl	sP + 7(%rip), %eax
    salq	$21, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L364
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %ecx
    andl	$8388607, %ecx
    movzbl	sP + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sP + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sP + 3(%rip), %eax
    salq	$12, %rax
    orq	%rax, %rdx
    movzbl	sP + 4(%rip), %eax
    andl	$7, %eax
    salq	$20, %rax
    orq	%rdx, %rax
    cmpl	%eax, %ecx
    jne	L364
    movzbl	sP(%rip), %eax
    movzbl	sP + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L364
    movq	-24(%rbp), %rdx
    movq	sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L364
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L366
L364:
    call	abort
L366:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sQ,10,8
    .globl	retmeQ
retmeQ:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movzwl	24(%rbp), %edx
    movw	%dx, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1Q
fn1Q:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sQ(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sQ + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-32(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -32(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movzwl	-24(%rbp), %ecx
    movw	%cx, 8(%rax)
    movq	%rdx, %rdi
    call	retmeQ
    addq	$16, %rsp
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L371
    call	__stack_chk_fail
L371:
    leave
    ret
    .globl	fn2Q
fn2Q:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sQ(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	sQ + 8(%rip), %eax
    movw	%ax, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitQ
retitQ:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sQ(%rip), %eax
    movzbl	sQ + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3Q
fn3Q:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sQ(%rip), %eax
    movzbl	sQ + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sQ(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sQ(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sQ + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sQ + 1(%rip)
    call	retitQ
    leave
    ret
    .globl	testQ
testQ:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sQ, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L379
L380:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L379:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L380
    movzbl	sQ(%rip), %eax
    orl	$-1, %eax
    movb	%al, sQ(%rip)
    movzbl	sQ + 1(%rip), %eax
    orl	$15, %eax
    movb	%al, sQ + 1(%rip)
    movzbl	sQ(%rip), %eax
    movzbl	sQ + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sQ(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sQ(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sQ + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sQ + 1(%rip)
    movq	sQ(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sQ + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1Q
    movl	%eax, -44(%rbp)
    movzbl	-31(%rbp), %eax
    shrb	$5, %al
    movl	%eax, %edx
    movzbl	sQ + 1(%rip), %eax
    shrb	$5, %al
    cmpb	%al, %dl
    jne	L381
    movzbl	-31(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sQ + 1(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L381
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sQ(%rip), %eax
    movzbl	sQ + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L381
    movq	-30(%rbp), %rdx
    movq	sQ + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L381
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L382
L381:
    call	abort
L382:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sQ(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sQ(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sQ + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sQ + 1(%rip)
    movq	sQ(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sQ + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2Q
    movl	%eax, -44(%rbp)
    movzbl	-31(%rbp), %eax
    shrb	$5, %al
    movl	%eax, %edx
    movzbl	sQ + 1(%rip), %eax
    shrb	$5, %al
    cmpb	%al, %dl
    jne	L383
    movzbl	-31(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sQ + 1(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L383
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sQ(%rip), %eax
    movzbl	sQ + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L383
    movq	-30(%rbp), %rdx
    movq	sQ + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L383
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L384
L383:
    call	abort
L384:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sQ(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sQ(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sQ + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sQ + 1(%rip)
    movq	sQ(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sQ + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3Q
    movl	%eax, -44(%rbp)
    movzbl	-31(%rbp), %eax
    shrb	$5, %al
    movl	%eax, %edx
    movzbl	sQ + 1(%rip), %eax
    shrb	$5, %al
    cmpb	%al, %dl
    jne	L385
    movzbl	-31(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sQ + 1(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L385
    movzbl	sQ(%rip), %eax
    movzbl	sQ + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L385
    movq	-30(%rbp), %rdx
    movq	sQ + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L385
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L387
L385:
    call	abort
L387:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sR,10,8
    .globl	retmeR
retmeR:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movzwl	24(%rbp), %edx
    movw	%dx, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1R
fn1R:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sR(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sR + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$3, %eax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andl	$3, %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	-32(%rbp), %eax
    andl	$-4, %eax
    orl	%edx, %eax
    movb	%al, -32(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movzwl	-24(%rbp), %ecx
    movw	%cx, 8(%rax)
    movq	%rdx, %rdi
    call	retmeR
    addq	$16, %rsp
    movzbl	-32(%rbp), %eax
    andl	$3, %eax
    movzbl	%al, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L392
    call	__stack_chk_fail
L392:
    leave
    ret
    .globl	fn2R
fn2R:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sR(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	sR + 8(%rip), %eax
    movw	%ax, -8(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$3, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$3, %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-4, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$3, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$3, %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-4, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$3, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitR
retitR:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3R
fn3R:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$3, %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	sR(%rip), %eax
    andl	$-4, %eax
    orl	%edx, %eax
    movb	%al, sR(%rip)
    call	retitR
    leave
    ret
    .globl	testR
testR:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sR, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L400
L401:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L400:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L401
    movzbl	sR(%rip), %eax
    orl	$3, %eax
    movb	%al, sR(%rip)
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    movzbl	%al, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$3, %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	sR(%rip), %eax
    andl	$-4, %eax
    orl	%edx, %eax
    movb	%al, sR(%rip)
    movq	sR(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sR + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1R
    movl	%eax, -44(%rbp)
    movzbl	-31(%rbp), %eax
    shrb	$5, %al
    movl	%eax, %edx
    movzbl	sR + 1(%rip), %eax
    shrb	$5, %al
    cmpb	%al, %dl
    jne	L402
    movzwl	-32(%rbp), %eax
    shrw	$2, %ax
    andw	$2047, %ax
    movzbl	sR(%rip), %edx
    shrb	$2, %dl
    movzbl	%dl, %edx
    movzbl	sR + 1(%rip), %ecx
    andl	$31, %ecx
    salq	$6, %rcx
    orq	%rcx, %rdx
    cmpw	%dx, %ax
    jne	L402
    movzbl	-32(%rbp), %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    cmpb	%al, %dl
    jne	L402
    movq	-30(%rbp), %rdx
    movq	sR + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L402
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L403
L402:
    call	abort
L403:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$3, %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	sR(%rip), %eax
    andl	$-4, %eax
    orl	%edx, %eax
    movb	%al, sR(%rip)
    movq	sR(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sR + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2R
    movl	%eax, -44(%rbp)
    movzbl	-31(%rbp), %eax
    shrb	$5, %al
    movl	%eax, %edx
    movzbl	sR + 1(%rip), %eax
    shrb	$5, %al
    cmpb	%al, %dl
    jne	L404
    movzwl	-32(%rbp), %eax
    shrw	$2, %ax
    andw	$2047, %ax
    movzbl	sR(%rip), %edx
    shrb	$2, %dl
    movzbl	%dl, %edx
    movzbl	sR + 1(%rip), %ecx
    andl	$31, %ecx
    salq	$6, %rcx
    orq	%rcx, %rdx
    cmpw	%dx, %ax
    jne	L404
    movzbl	-32(%rbp), %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    cmpb	%al, %dl
    jne	L404
    movq	-30(%rbp), %rdx
    movq	sR + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L404
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L405
L404:
    call	abort
L405:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$3, %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	sR(%rip), %eax
    andl	$-4, %eax
    orl	%edx, %eax
    movb	%al, sR(%rip)
    movq	sR(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sR + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3R
    movl	%eax, -44(%rbp)
    movzbl	-31(%rbp), %eax
    shrb	$5, %al
    movl	%eax, %edx
    movzbl	sR + 1(%rip), %eax
    shrb	$5, %al
    cmpb	%al, %dl
    jne	L406
    movzwl	-32(%rbp), %eax
    shrw	$2, %ax
    andw	$2047, %ax
    movzbl	sR(%rip), %edx
    shrb	$2, %dl
    movzbl	%dl, %edx
    movzbl	sR + 1(%rip), %ecx
    andl	$31, %ecx
    salq	$6, %rcx
    orq	%rcx, %rdx
    cmpw	%dx, %ax
    jne	L406
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L406
    movq	-30(%rbp), %rdx
    movq	sR + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L406
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L408
L406:
    call	abort
L408:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sS,10,8
    .globl	retmeS
retmeS:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movzwl	24(%rbp), %edx
    movw	%dx, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1S
fn1S:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sS(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sS + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-32(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -32(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movzwl	-24(%rbp), %ecx
    movw	%cx, 8(%rax)
    movq	%rdx, %rdi
    call	retmeS
    addq	$16, %rsp
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L413
    call	__stack_chk_fail
L413:
    leave
    ret
    .globl	fn2S
fn2S:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sS(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	sS + 8(%rip), %eax
    movw	%ax, -8(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitS
retitS:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3S
fn3S:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sS(%rip)
    call	retitS
    leave
    ret
    .globl	testS
testS:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sS, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L421
L422:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L421:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L422
    movzbl	sS(%rip), %eax
    orl	$1, %eax
    movb	%al, sS(%rip)
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sS(%rip)
    movq	sS(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sS + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1S
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sS(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sS + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L423
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L423
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L423
    movq	-30(%rbp), %rdx
    movq	sS + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L423
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L424
L423:
    call	abort
L424:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sS(%rip)
    movq	sS(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sS + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2S
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sS(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sS + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L425
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L425
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L425
    movq	-30(%rbp), %rdx
    movq	sS + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L425
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L426
L425:
    call	abort
L426:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sS(%rip)
    movq	sS(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sS + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3S
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sS(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sS + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L427
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L427
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L427
    movq	-30(%rbp), %rdx
    movq	sS + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L427
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L429
L427:
    call	abort
L429:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sT,4,1
    .globl	retmeT
retmeT:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -16(%rbp)
    movl	-16(%rbp), %eax
    popq	%rbp
    ret
    .globl	fn1T
fn1T:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movl	sT(%rip), %eax
    movl	%eax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, %edi
    call	retmeT
    movl	%eax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2T
fn2T:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	sT(%rip), %eax
    movl	%eax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitT
retitT:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3T
fn3T:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sT(%rip)
    call	retitT
    leave
    ret
    .globl	testT
testT:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	$sT, -24(%rbp)
    movl	$0, -44(%rbp)
    jmp	L441
L442:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L441:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L442
    movzbl	sT(%rip), %eax
    orl	$1, %eax
    movb	%al, sT(%rip)
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    movl	%eax, -40(%rbp)
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sT(%rip)
    movl	sT(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1T
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sT + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L443
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    andb	$255, %ch
    movzbl	sT(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sT + 1(%rip), %edx
    andl	$1, %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L443
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L443
    movzwl	-46(%rbp), %edx
    movzwl	sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L443
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L444
L443:
    call	abort
L444:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sT(%rip)
    movl	sT(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2T
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sT + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L445
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    andb	$255, %ch
    movzbl	sT(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sT + 1(%rip), %edx
    andl	$1, %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L445
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L445
    movzwl	-46(%rbp), %edx
    movzwl	sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L445
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L446
L445:
    call	abort
L446:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sT(%rip)
    movl	sT(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3T
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sT + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L447
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %ecx
    andb	$255, %ch
    movzbl	sT(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movzbl	sT + 1(%rip), %edx
    andl	$1, %edx
    salq	$7, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L447
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L447
    movzwl	-46(%rbp), %edx
    movzwl	sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L447
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L449
L447:
    call	abort
L449:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sU,10,8
    .globl	retmeU
retmeU:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movzwl	24(%rbp), %edx
    movw	%dx, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1U
fn1U:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sU(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sU + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl	-32(%rbp), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, -32(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movzwl	-24(%rbp), %ecx
    movw	%cx, 8(%rax)
    movq	%rdx, %rdi
    call	retmeU
    addq	$16, %rsp
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L454
    call	__stack_chk_fail
L454:
    leave
    ret
    .globl	fn2U
fn2U:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sU(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	sU + 8(%rip), %eax
    movw	%ax, -8(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$6, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl	-16(%rbp), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, -16(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitU
retitU:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3U
fn3U:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, sU(%rip)
    call	retitU
    leave
    ret
    .globl	testU
testU:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sU, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L462
L463:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L462:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L463
    movzbl	sU(%rip), %eax
    orl	$64, %eax
    movb	%al, sU(%rip)
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, sU(%rip)
    movq	sU(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sU + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1U
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sU(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sU + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L464
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L464
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L464
    movq	-30(%rbp), %rdx
    movq	sU + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L464
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L465
L464:
    call	abort
L465:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, sU(%rip)
    movq	sU(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sU + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2U
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sU(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sU + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L466
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L466
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L466
    movq	-30(%rbp), %rdx
    movq	sU + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L466
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L467
L466:
    call	abort
L467:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, sU(%rip)
    movq	sU(%rip), %rax
    movq	%rax, -32(%rbp)
    movzwl	sU + 8(%rip), %eax
    movw	%ax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3U
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sU(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sU + 1(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L468
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L468
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L468
    movq	-30(%rbp), %rdx
    movq	sU + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L468
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L470
L468:
    call	abort
L470:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sV,4,1
    .globl	retmeV
retmeV:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -16(%rbp)
    movl	-16(%rbp), %eax
    popq	%rbp
    ret
    .globl	fn1V
fn1V:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movl	sV(%rip), %eax
    movl	%eax, -16(%rbp)
    movzbl	-15(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-15(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -15(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, %edi
    call	retmeV
    movl	%eax, -16(%rbp)
    movzbl	-15(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2V
fn2V:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl	sV(%rip), %eax
    movl	%eax, -16(%rbp)
    movzbl	-15(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-15(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -15(%rbp)
    movzbl	-15(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	-15(%rbp), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, -15(%rbp)
    movzbl	-15(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitV
retitV:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3V
fn3V:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sV + 1(%rip)
    call	retitV
    leave
    ret
    .globl	testV
testV:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$40, %rsp
    movq	$sV, -24(%rbp)
    movl	$0, -44(%rbp)
    jmp	L482
L483:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L482:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L483
    movzbl	sV + 1(%rip), %eax
    orl	$1, %eax
    movb	%al, sV + 1(%rip)
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    movl	%eax, -40(%rbp)
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sV + 1(%rip)
    movl	sV(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1V
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L484
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L484
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L484
    movzwl	-46(%rbp), %edx
    movzwl	sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L484
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L485
L484:
    call	abort
L485:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sV + 1(%rip)
    movl	sV(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2V
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L486
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L486
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L486
    movzwl	-46(%rbp), %edx
    movzwl	sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L486
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L487
L486:
    call	abort
L487:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sV + 1(%rip)
    movl	sV(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3V
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L488
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L488
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L488
    movzwl	-46(%rbp), %edx
    movzwl	sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L488
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L490
L488:
    call	abort
L490:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sW,12,8
    .globl	retmeW
retmeW:
    leaq	8(%rsp), %r10
    andq	$-32, %rsp
    pushq	-8(%r10)
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r10
    vmovq	%xmm0, %rax
    movl	%edi, %edx
    movq	%rax, -48(%rbp)
    movl	%edx, -40(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, -24(%rbp)
    vmovsd	-32(%rbp), %xmm0
    movl	-24(%rbp), %eax
    vmovq	%xmm0, %rdx
    vmovq	%rdx, %xmm0
    popq	%r10
    popq	%rbp
    leaq	-8(%r10), %rsp
    ret
    .globl	fn1W
fn1W:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sW(%rip), %rax
    movq	%rax, -16(%rbp)
    movl	sW + 8(%rip), %eax
    movl	%eax, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-8(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -8(%rbp)
    movq	-16(%rbp), %rdx
    movl	-8(%rbp), %eax
    vmovq	%rdx, %xmm0
    movl	%eax, %edi
    call	retmeW
    vmovq	%xmm0, %rdx
    movq	%rdx, -16(%rbp)
    movl	%eax, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2W
fn2W:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sW(%rip), %rax
    movq	%rax, -16(%rbp)
    movl	sW + 8(%rip), %eax
    movl	%eax, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-8(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-8(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -8(%rbp)
    movzwl	-8(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitW
retitW:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sW + 8(%rip), %eax
    movzbl	sW + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3W
fn3W:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sW + 8(%rip), %eax
    movzbl	sW + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sW + 8(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sW + 8(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sW + 9(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sW + 9(%rip)
    call	retitW
    leave
    ret
    .globl	testW
testW:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sW, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L502
L503:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L502:
    movl	-60(%rbp), %eax
    cmpl	$11, %eax
    jbe	L503
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, sW(%rip)
    movzbl	sW + 8(%rip), %eax
    orl	$-1, %eax
    movb	%al, sW + 8(%rip)
    movzbl	sW + 9(%rip), %eax
    orl	$15, %eax
    movb	%al, sW + 9(%rip)
    movzbl	sW + 8(%rip), %eax
    movzbl	sW + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sW + 8(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sW + 8(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sW + 9(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sW + 9(%rip)
    movq	sW(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sW + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1W
    movl	%eax, -44(%rbp)
    movzbl	-21(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sW + 11(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L504
    movl	-24(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$8191, %cx
    movzbl	sW + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sW + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sW + 11(%rip), %eax
    andl	$1, %eax
    salq	$12, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L504
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sW + 8(%rip), %eax
    movzbl	sW + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L504
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sW(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L504
    vucomisd	%xmm1, %xmm0
    jne	L504
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L505
L504:
    call	abort
L505:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sW + 8(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sW + 8(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sW + 9(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sW + 9(%rip)
    movq	sW(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sW + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2W
    movl	%eax, -44(%rbp)
    movzbl	-21(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sW + 11(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L506
    movl	-24(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$8191, %cx
    movzbl	sW + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sW + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sW + 11(%rip), %eax
    andl	$1, %eax
    salq	$12, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L506
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sW + 8(%rip), %eax
    movzbl	sW + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L506
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sW(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L506
    vucomisd	%xmm1, %xmm0
    jne	L506
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L507
L506:
    call	abort
L507:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sW + 8(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sW + 8(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sW + 9(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sW + 9(%rip)
    movq	sW(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sW + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3W
    movl	%eax, -44(%rbp)
    movzbl	-21(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sW + 11(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L508
    movl	-24(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$8191, %cx
    movzbl	sW + 9(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sW + 10(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sW + 11(%rip), %eax
    andl	$1, %eax
    salq	$12, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L508
    movzbl	sW + 8(%rip), %eax
    movzbl	sW + 9(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L508
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sW(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L508
    vucomisd	%xmm1, %xmm0
    jne	L508
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L510
L508:
    call	abort
L510:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sX,12,8
    .globl	retmeX
retmeX:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movl	24(%rbp), %edx
    movl	%edx, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1X
fn1X:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sX(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sX + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-32(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -32(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	-24(%rbp), %ecx
    movl	%ecx, 8(%rax)
    movq	%rdx, %rdi
    call	retmeX
    addq	$16, %rsp
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L515
    call	__stack_chk_fail
L515:
    leave
    ret
    .globl	fn2X
fn2X:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sX(%rip), %rax
    movq	%rax, -16(%rbp)
    movl	sX + 8(%rip), %eax
    movl	%eax, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitX
retitX:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sX(%rip), %eax
    movzbl	sX + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3X
fn3X:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sX(%rip), %eax
    movzbl	sX + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sX(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sX(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sX + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sX + 1(%rip)
    call	retitX
    leave
    ret
    .globl	testX
testX:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sX, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L523
L524:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L523:
    movl	-60(%rbp), %eax
    cmpl	$11, %eax
    jbe	L524
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, sX + 4(%rip)
    movzbl	sX(%rip), %eax
    orl	$-1, %eax
    movb	%al, sX(%rip)
    movzbl	sX + 1(%rip), %eax
    orl	$15, %eax
    movb	%al, sX + 1(%rip)
    movzbl	sX(%rip), %eax
    movzbl	sX + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sX(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sX(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sX + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sX + 1(%rip)
    movq	sX(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sX + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1X
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L525
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$8191, %cx
    movzbl	sX + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sX + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sX + 3(%rip), %eax
    andl	$1, %eax
    salq	$12, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L525
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sX(%rip), %eax
    movzbl	sX + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L525
    vmovsd	-28(%rbp), %xmm0
    vmovsd	sX + 4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L525
    vucomisd	%xmm1, %xmm0
    jne	L525
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L526
L525:
    call	abort
L526:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sX(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sX(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sX + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sX + 1(%rip)
    movq	sX(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sX + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2X
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L527
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$8191, %cx
    movzbl	sX + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sX + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sX + 3(%rip), %eax
    andl	$1, %eax
    salq	$12, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L527
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sX(%rip), %eax
    movzbl	sX + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L527
    vmovsd	-28(%rbp), %xmm0
    vmovsd	sX + 4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L527
    vucomisd	%xmm1, %xmm0
    jne	L527
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L528
L527:
    call	abort
L528:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sX(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sX(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sX + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sX + 1(%rip)
    movq	sX(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sX + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3X
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L529
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$8191, %cx
    movzbl	sX + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sX + 2(%rip), %edx
    salq	$4, %rdx
    orq	%rax, %rdx
    movzbl	sX + 3(%rip), %eax
    andl	$1, %eax
    salq	$12, %rax
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L529
    movzbl	sX(%rip), %eax
    movzbl	sX + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L529
    vmovsd	-28(%rbp), %xmm0
    vmovsd	sX + 4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L529
    vucomisd	%xmm1, %xmm0
    jne	L529
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L531
L529:
    call	abort
L531:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sY,12,8
    .globl	retmeY
retmeY:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movl	24(%rbp), %edx
    movl	%edx, 8(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1Y
fn1Y:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sY(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sY + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-32(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -32(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$16, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movl	-24(%rbp), %ecx
    movl	%ecx, 8(%rax)
    movq	%rdx, %rdi
    call	retmeY
    addq	$16, %rsp
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L536
    call	__stack_chk_fail
L536:
    leave
    ret
    .globl	fn2Y
fn2Y:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sY(%rip), %rax
    movq	%rax, -16(%rbp)
    movl	sY + 8(%rip), %eax
    movl	%eax, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitY
retitY:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sY(%rip), %eax
    movzbl	sY + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3Y
fn3Y:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sY(%rip), %eax
    movzbl	sY + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sY(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sY(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sY + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sY + 1(%rip)
    call	retitY
    leave
    ret
    .globl	testY
testY:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sY, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L544
L545:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L544:
    movl	-60(%rbp), %eax
    cmpl	$11, %eax
    jbe	L545
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, sY + 4(%rip)
    movzbl	sY(%rip), %eax
    orl	$-1, %eax
    movb	%al, sY(%rip)
    movzbl	sY + 1(%rip), %eax
    orl	$15, %eax
    movb	%al, sY + 1(%rip)
    movzbl	sY(%rip), %eax
    movzbl	sY + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sY(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sY(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sY + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sY + 1(%rip)
    movq	sY(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sY + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1Y
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sY + 2(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sY + 3(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L546
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sY + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sY + 2(%rip), %edx
    andl	$127, %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L546
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sY(%rip), %eax
    movzbl	sY + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L546
    vmovsd	-28(%rbp), %xmm0
    vmovsd	sY + 4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L546
    vucomisd	%xmm1, %xmm0
    jne	L546
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L547
L546:
    call	abort
L547:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sY(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sY(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sY + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sY + 1(%rip)
    movq	sY(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sY + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2Y
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sY + 2(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sY + 3(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L548
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sY + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sY + 2(%rip), %edx
    andl	$127, %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L548
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %ecx
    movzbl	sY(%rip), %eax
    movzbl	sY + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L548
    vmovsd	-28(%rbp), %xmm0
    vmovsd	sY + 4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L548
    vucomisd	%xmm1, %xmm0
    jne	L548
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L549
L548:
    call	abort
L549:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    movzbl	%dl, %ecx
    movzbl	sY(%rip), %edx
    andl	$0, %edx
    orl	%ecx, %edx
    movb	%dl, sY(%rip)
    shrw	$8, %ax
    movzwl	%ax, %eax
    andl	$15, %eax
    movl	%eax, %edx
    andl	$15, %edx
    movzbl	sY + 1(%rip), %eax
    andl	$-16, %eax
    orl	%edx, %eax
    movb	%al, sY + 1(%rip)
    movq	sY(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sY + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3Y
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %ecx
    movzbl	sY + 2(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    movzbl	sY + 3(%rip), %edx
    addq	%rdx, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L550
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %ecx
    andw	$2047, %cx
    movzbl	sY + 1(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sY + 2(%rip), %edx
    andl	$127, %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L550
    movzbl	sY(%rip), %eax
    movzbl	sY + 1(%rip), %edx
    andl	$15, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L550
    vmovsd	-28(%rbp), %xmm0
    vmovsd	sY + 4(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L550
    vucomisd	%xmm1, %xmm0
    jne	L550
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L552
L550:
    call	abort
L552:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sZ,12,8
    .globl	retmeZ
retmeZ:
    leaq	8(%rsp), %r10
    andq	$-32, %rsp
    pushq	-8(%r10)
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%r10
    vmovq	%xmm0, %rax
    movl	%edi, %edx
    movq	%rax, -48(%rbp)
    movl	%edx, -40(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, -24(%rbp)
    vmovsd	-32(%rbp), %xmm0
    movl	-24(%rbp), %eax
    vmovq	%xmm0, %rdx
    vmovq	%rdx, %xmm0
    popq	%r10
    popq	%rbp
    leaq	-8(%r10), %rsp
    ret
    .globl	fn1Z
fn1Z:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sZ(%rip), %rax
    movq	%rax, -16(%rbp)
    movl	sZ + 8(%rip), %eax
    movl	%eax, -8(%rbp)
    movzwl	-6(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	-6(%rbp), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, -6(%rbp)
    movq	-16(%rbp), %rdx
    movl	-8(%rbp), %eax
    vmovq	%rdx, %xmm0
    movl	%eax, %edi
    call	retmeZ
    vmovq	%xmm0, %rdx
    movq	%rdx, -16(%rbp)
    movl	%eax, -8(%rbp)
    movzwl	-6(%rbp), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2Z
fn2Z:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sZ(%rip), %rax
    movq	%rax, -16(%rbp)
    movl	sZ + 8(%rip), %eax
    movl	%eax, -8(%rbp)
    movzwl	-6(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	-6(%rbp), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, -6(%rbp)
    movzwl	-6(%rbp), %eax
    shrw	$4, %ax
    movzwl	%ax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    imull	%edx
    leal	(%rdx,%rcx), %eax
    sarl	$3, %eax
    movl	%eax, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	-6(%rbp), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, -6(%rbp)
    movzwl	-6(%rbp), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitZ
retitZ:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	sZ + 10(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sZ + 11(%rip), %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3Z
fn3Z:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl	sZ + 10(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sZ + 11(%rip), %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    andl	$15, %edx
    movl	%edx, %ecx
    sall	$4, %ecx
    movzbl	sZ + 10(%rip), %edx
    andl	$15, %edx
    orl	%ecx, %edx
    movb	%dl, sZ + 10(%rip)
    shrw	$4, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sZ + 11(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sZ + 11(%rip)
    call	retitZ
    leave
    ret
    .globl	testZ
testZ:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sZ, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L564
L565:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L564:
    movl	-60(%rbp), %eax
    cmpl	$11, %eax
    jbe	L565
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, sZ(%rip)
    movzbl	sZ + 10(%rip), %eax
    orl	$-16, %eax
    movb	%al, sZ + 10(%rip)
    movzbl	sZ + 11(%rip), %eax
    orl	$-1, %eax
    movb	%al, sZ + 11(%rip)
    movzbl	sZ + 10(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sZ + 11(%rip), %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    andl	$15, %edx
    movl	%edx, %ecx
    sall	$4, %ecx
    movzbl	sZ + 10(%rip), %edx
    andl	$15, %edx
    orl	%ecx, %edx
    movb	%dl, sZ + 10(%rip)
    shrw	$4, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sZ + 11(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sZ + 11(%rip)
    movq	sZ(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sZ + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1Z
    movl	%eax, -44(%rbp)
    movl	-24(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %ecx
    andl	$127, %ecx
    movzbl	sZ + 9(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sZ + 10(%rip), %edx
    andl	$15, %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L566
    movzwl	-24(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %ecx
    movzbl	sZ + 8(%rip), %eax
    movzbl	sZ + 9(%rip), %edx
    andl	$31, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L566
    movzwl	-22(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %ecx
    movzbl	sZ + 10(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sZ + 11(%rip), %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L566
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sZ(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L566
    vucomisd	%xmm1, %xmm0
    jne	L566
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L567
L566:
    call	abort
L567:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    andl	$15, %edx
    movl	%edx, %ecx
    sall	$4, %ecx
    movzbl	sZ + 10(%rip), %edx
    andl	$15, %edx
    orl	%ecx, %edx
    movb	%dl, sZ + 10(%rip)
    shrw	$4, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sZ + 11(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sZ + 11(%rip)
    movq	sZ(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sZ + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2Z
    movl	%eax, -44(%rbp)
    movl	-24(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %ecx
    andl	$127, %ecx
    movzbl	sZ + 9(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sZ + 10(%rip), %edx
    andl	$15, %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L568
    movzwl	-24(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %ecx
    movzbl	sZ + 8(%rip), %eax
    movzbl	sZ + 9(%rip), %edx
    andl	$31, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L568
    movzwl	-22(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %ecx
    movzbl	sZ + 10(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sZ + 11(%rip), %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L568
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sZ(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L568
    vucomisd	%xmm1, %xmm0
    jne	L568
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    movl	%eax, %ecx
    movl	$-2004318071, %edx
    movl	%ecx, %eax
    mull	%edx
    movl	%edx, %eax
    shrl	$3, %eax
    movl	%eax, %edx
    sall	$4, %edx
    subl	%eax, %edx
    movl	%ecx, %eax
    subl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L569
L568:
    call	abort
L569:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %edx
    andl	$15, %edx
    movl	%edx, %ecx
    sall	$4, %ecx
    movzbl	sZ + 10(%rip), %edx
    andl	$15, %edx
    orl	%ecx, %edx
    movb	%dl, sZ + 10(%rip)
    shrw	$4, %ax
    movzwl	%ax, %eax
    movzbl	%al, %edx
    movzbl	sZ + 11(%rip), %eax
    andl	$0, %eax
    orl	%edx, %eax
    movb	%al, sZ + 11(%rip)
    movq	sZ(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	sZ + 8(%rip), %eax
    movl	%eax, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3Z
    movl	%eax, -44(%rbp)
    movl	-24(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %ecx
    andl	$127, %ecx
    movzbl	sZ + 9(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sZ + 10(%rip), %edx
    andl	$15, %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    cmpb	%al, %cl
    jne	L570
    movzwl	-24(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %ecx
    movzbl	sZ + 8(%rip), %eax
    movzbl	sZ + 9(%rip), %edx
    andl	$31, %edx
    salq	$8, %rdx
    orq	%rdx, %rax
    cmpw	%ax, %cx
    jne	L570
    movzbl	sZ + 10(%rip), %eax
    shrb	$4, %al
    movzbl	%al, %eax
    movzbl	sZ + 11(%rip), %edx
    salq	$4, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L570
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sZ(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L570
    vucomisd	%xmm1, %xmm0
    jne	L570
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L572
L570:
    call	abort
L572:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    call	testA
    call	testB
    call	testC
    call	testD
    call	testE
    call	testF
    call	testG
    call	testH
    call	testI
    call	testJ
    call	testK
    call	testL
    call	testM
    call	testN
    call	testO
    call	testP
    call	testQ
    call	testR
    call	testS
    call	testT
    call	testU
    call	testV
    call	testW
    call	testX
    call	testY
    call	testZ
    movl	$0, %edi
    call	exit
    .data
s2411:
    .long	1388815473
    .section	.rodata
LC0:
    .long	0
    .long	1075118080
