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
    .globl	myrnd
myrnd:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	s2418(%rip), %eax
    imull	$1103515245, %eax, %eax
    movl	%eax, s2418(%rip)
    movl	s2418(%rip), %eax
    addl	$12345, %eax
    movl	%eax, s2418(%rip)
    movl	s2418(%rip), %eax
    shrl	$16, %eax
    andl	$2047, %eax
    popq	%rbp
    ret
    .globl	sA
    .bss
sA:
    .zero	2
    .text
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
    jmp	L58
L59:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L58:
    movl	-44(%rbp), %eax
    cmpl	$1, %eax
    jbe	L59
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
    je	L61
L60:
    call	abort
L61:
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
    jne	L62
    movzbl	-48(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    andl	$7, %edx
    movzbl	sA(%rip), %eax
    shrb	$2, %al
    andl	$7, %eax
    cmpb	%al, %dl
    jne	L62
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
    jne	L62
    movzbl	-48(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sA(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L62
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
    je	L63
L62:
    call	abort
L63:
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
    jne	L64
    movzbl	-48(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    andl	$7, %edx
    movzbl	sA(%rip), %eax
    shrb	$2, %al
    andl	$7, %eax
    cmpb	%al, %dl
    jne	L64
    movzbl	sA(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sA + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-28(%rbp), %eax
    jne	L64
    movzbl	-48(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sA(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L64
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L66
L64:
    call	abort
L66:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sB
    .bss
sB:
    .zero	6
    .text
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
    je	L71
    call	__stack_chk_fail
L71:
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
    jmp	L79
L80:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L79:
    movl	-52(%rbp), %eax
    cmpl	$5, %eax
    jbe	L80
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
    je	L82
L81:
    call	abort
L82:
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
    jne	L83
    movzbl	-32(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sB(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L83
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
    jne	L83
    movl	-30(%rbp), %edx
    movl	sB + 2(%rip), %eax
    cmpl	%eax, %edx
    jne	L83
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
    je	L84
L83:
    call	abort
L84:
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
    jne	L85
    movzbl	-32(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sB(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L85
    movzbl	sB(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sB + 1(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-36(%rbp), %eax
    jne	L85
    movl	-30(%rbp), %edx
    movl	sB + 2(%rip), %eax
    cmpl	%eax, %edx
    jne	L85
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L87
L85:
    call	abort
L87:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sC
    .bss
sC:
    .zero	6
    .text
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
    jmp	L99
L100:
    movq	-16(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -16(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L99:
    movl	-44(%rbp), %eax
    cmpl	$5, %eax
    jbe	L100
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
    je	L102
L101:
    call	abort
L102:
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
    jne	L103
    movzbl	-20(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sC + 4(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L103
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
    jne	L103
    movl	-24(%rbp), %edx
    movl	sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L103
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
    je	L104
L103:
    call	abort
L104:
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
    jne	L105
    movzbl	-20(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sC + 4(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L105
    movzbl	sC + 4(%rip), %eax
    shrb	$5, %al
    movzbl	%al, %eax
    movzbl	sC + 5(%rip), %edx
    salq	$3, %rdx
    orq	%rdx, %rax
    movzwl	%ax, %eax
    cmpl	-28(%rbp), %eax
    jne	L105
    movl	-24(%rbp), %edx
    movl	sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L105
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L107
L105:
    call	abort
L107:
    nop
    addq	$48, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sD
    .bss
sD:
    .zero	8
    .text
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
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	fn3D
fn3D:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sD + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sD + 4(%rip)
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
    jmp	L119
L120:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L119:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L120
    movl	sD + 4(%rip), %eax
    orl	$-8, %eax
    movl	%eax, sD + 4(%rip)
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sD + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sD + 4(%rip)
    movq	sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl	sD(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L121
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L121
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
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
    je	L122
L121:
    call	abort
L122:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sD + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sD + 4(%rip)
    movq	sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl	sD(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L123
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L123
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L123
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L123
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
    je	L124
L123:
    call	abort
L124:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sD + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sD + 4(%rip)
    movq	sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl	sD(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L125
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L125
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	-36(%rbp), %eax
    jne	L125
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L125
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L127
L125:
    call	abort
L127:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sE
    .bss
sE:
    .zero	16
    .text
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
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	fn3E
fn3E:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sE + 12(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sE + 12(%rip)
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
    jmp	L139
L140:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L139:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L140
    movl	sE + 12(%rip), %eax
    orl	$-8, %eax
    movl	%eax, sE + 12(%rip)
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sE + 12(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sE + 12(%rip)
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
    movl	%eax, %edx
    movzwl	sE + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L141
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L141
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
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
    je	L142
L141:
    call	abort
L142:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sE + 12(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sE + 12(%rip)
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
    movl	%eax, %edx
    movzwl	sE + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L143
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L143
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L143
    movq	-32(%rbp), %rdx
    movq	sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L143
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
    je	L144
L143:
    call	abort
L144:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sE + 12(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sE + 12(%rip)
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
    movl	%eax, %edx
    movzwl	sE + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L145
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L145
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	-44(%rbp), %eax
    jne	L145
    movq	-32(%rbp), %rdx
    movq	sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L145
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L147
L145:
    call	abort
L147:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sF
    .bss
sF:
    .zero	16
    .text
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
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	fn3F
fn3F:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sF + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sF + 4(%rip)
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
    jmp	L159
L160:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L159:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L160
    movl	sF + 4(%rip), %eax
    orl	$-8, %eax
    movl	%eax, sF + 4(%rip)
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sF + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sF + 4(%rip)
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
    movl	%eax, %edx
    movzwl	sF(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L161
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L161
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
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
    je	L162
L161:
    call	abort
L162:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sF + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sF + 4(%rip)
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
    movl	%eax, %edx
    movzwl	sF(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L163
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L163
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L163
    movq	-24(%rbp), %rdx
    movq	sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L163
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
    je	L164
L163:
    call	abort
L164:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl	sF + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, sF + 4(%rip)
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
    movl	%eax, %edx
    movzwl	sF(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L165
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L165
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	-44(%rbp), %eax
    jne	L165
    movq	-24(%rbp), %rdx
    movq	sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L165
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L167
L165:
    call	abort
L167:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sG
    .bss
sG:
    .zero	9
    .text
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
    je	L172
    call	__stack_chk_fail
L172:
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
    jmp	L180
L181:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L180:
    movl	-60(%rbp), %eax
    cmpl	$8, %eax
    jbe	L181
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
    movzbl	-32(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    cmpb	%al, %dl
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
    je	L183
L182:
    call	abort
L183:
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
    jne	L184
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sG(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L184
    movzbl	-32(%rbp), %eax
    shrb	$2, %al
    movl	%eax, %edx
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    cmpb	%al, %dl
    jne	L184
    movq	-31(%rbp), %rdx
    movq	sG + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L184
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
    je	L185
L184:
    call	abort
L185:
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
    jne	L186
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sG(%rip), %eax
    shrb	%al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L186
    movzbl	sG(%rip), %eax
    shrb	$2, %al
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L186
    movq	-31(%rbp), %rdx
    movq	sG + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L186
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L188
L186:
    call	abort
L188:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sH
    .bss
sH:
    .zero	10
    .text
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
    je	L193
    call	__stack_chk_fail
L193:
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
    jmp	L201
L202:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L201:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L202
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
    jne	L203
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    shrb	$6, %al
    cmpb	%al, %dl
    jne	L203
    movzbl	-31(%rbp), %edx
    movzbl	sH + 1(%rip), %eax
    cmpb	%al, %dl
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
    je	L204
L203:
    call	abort
L204:
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
    jne	L205
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    shrb	$6, %al
    cmpb	%al, %dl
    jne	L205
    movzbl	-31(%rbp), %edx
    movzbl	sH + 1(%rip), %eax
    cmpb	%al, %dl
    jne	L205
    movq	-30(%rbp), %rdx
    movq	sH + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L205
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
    je	L206
L205:
    call	abort
L206:
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
    jne	L207
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    movzbl	sH(%rip), %eax
    shrb	$6, %al
    cmpb	%al, %dl
    jne	L207
    movzbl	sH + 1(%rip), %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L207
    movq	-30(%rbp), %rdx
    movq	sH + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L207
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L209
L207:
    call	abort
L209:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sI
    .bss
sI:
    .zero	9
    .text
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
    je	L214
    call	__stack_chk_fail
L214:
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
    jmp	L222
L223:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L222:
    movl	-60(%rbp), %eax
    cmpl	$8, %eax
    jbe	L223
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
    movzbl	-32(%rbp), %eax
    shrb	$7, %al
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    cmpb	%al, %dl
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
    je	L225
L224:
    call	abort
L225:
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
    jne	L226
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L226
    movzbl	-32(%rbp), %eax
    shrb	$7, %al
    movl	%eax, %edx
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    cmpb	%al, %dl
    jne	L226
    movq	-31(%rbp), %rdx
    movq	sI + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L226
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
    je	L227
L226:
    call	abort
L227:
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
    jne	L228
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L228
    movzbl	sI(%rip), %eax
    shrb	$7, %al
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L228
    movq	-31(%rbp), %rdx
    movq	sI + 1(%rip), %rax
    cmpq	%rax, %rdx
    jne	L228
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L230
L228:
    call	abort
L230:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sJ
    .bss
sJ:
    .zero	4
    .text
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
    jmp	L242
L243:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L242:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L243
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
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
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
    je	L245
L244:
    call	abort
L245:
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
    jne	L246
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
    jne	L246
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L246
    movzwl	-46(%rbp), %edx
    movzwl	sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L246
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
    je	L247
L246:
    call	abort
L247:
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
    jne	L248
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
    jne	L248
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L248
    movzwl	-46(%rbp), %edx
    movzwl	sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L248
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L250
L248:
    call	abort
L250:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sK
    .bss
sK:
    .zero	4
    .text
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
    jmp	L262
L263:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L262:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L263
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
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
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
    je	L265
L264:
    call	abort
L265:
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
    jne	L266
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
    jne	L266
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L266
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L266
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
    je	L267
L266:
    call	abort
L267:
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
    jne	L268
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
    jne	L268
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L268
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L268
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L270
L268:
    call	abort
L270:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sL
    .bss
sL:
    .zero	8
    .text
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
    jmp	L282
L283:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L282:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L283
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
    movl	%eax, %edx
    movzwl	sL + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L284
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L284
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
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
    je	L285
L284:
    call	abort
L285:
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
    movl	%eax, %edx
    movzwl	sL + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L286
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L286
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L286
    movl	-28(%rbp), %edx
    movl	sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L286
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
    je	L287
L286:
    call	abort
L287:
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
    movl	%eax, %edx
    movzwl	sL + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L288
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L288
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L288
    movl	-28(%rbp), %edx
    movl	sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L288
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L290
L288:
    call	abort
L290:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sM
    .bss
sM:
    .zero	8
    .text
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
    jmp	L302
L303:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L302:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L303
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
    movl	%eax, %edx
    movzwl	sM + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L304
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L304
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
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
    je	L305
L304:
    call	abort
L305:
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
    movl	%eax, %edx
    movzwl	sM + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L306
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L306
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L306
    movl	-32(%rbp), %edx
    movl	sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L306
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
    je	L307
L306:
    call	abort
L307:
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
    movl	%eax, %edx
    movzwl	sM + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L308
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L308
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L308
    movl	-32(%rbp), %edx
    movl	sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L308
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L310
L308:
    call	abort
L310:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sN
    .bss
sN:
    .zero	8
    .text
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
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3N
fn3N:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    movzbl	%al, %eax
    andl	$63, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzwl	sN(%rip), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, sN(%rip)
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
    jmp	L322
L323:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L322:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L323
    movzwl	sN(%rip), %eax
    orw	$4032, %ax
    movw	%ax, sN(%rip)
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movzbl	%al, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    andl	$63, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzwl	sN(%rip), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, sN(%rip)
    movq	sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sN + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L324
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L324
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
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
    je	L325
L324:
    call	abort
L325:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    andl	$63, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzwl	sN(%rip), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, sN(%rip)
    movq	sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sN + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L326
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L326
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L326
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L326
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
    je	L327
L326:
    call	abort
L327:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    andl	$63, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzwl	sN(%rip), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, sN(%rip)
    movq	sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sN + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L328
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L328
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L328
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L328
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L330
L328:
    call	abort
L330:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sO
    .bss
sO:
    .zero	16
    .text
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
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3O
fn3O:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sO + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sO + 8(%rip)
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
    jmp	L342
L343:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L342:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L343
    movzwl	sO + 8(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sO + 8(%rip)
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sO + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sO + 8(%rip)
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
    movl	%eax, %edx
    movl	sO + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L344
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L344
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
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
    je	L345
L344:
    call	abort
L345:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sO + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sO + 8(%rip)
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
    movl	%eax, %edx
    movl	sO + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L346
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L346
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L346
    movq	-32(%rbp), %rdx
    movq	sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L346
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
    je	L347
L346:
    call	abort
L347:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sO + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sO + 8(%rip)
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
    movl	%eax, %edx
    movl	sO + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L348
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L348
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L348
    movq	-32(%rbp), %rdx
    movq	sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L348
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L350
L348:
    call	abort
L350:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sP
    .bss
sP:
    .zero	16
    .text
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
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3P
fn3P:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sP(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sP(%rip)
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
    jmp	L362
L363:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L362:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L363
    movzwl	sP(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sP(%rip)
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sP(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sP(%rip)
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
    movl	%eax, %edx
    movl	sP + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L364
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L364
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
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
    je	L365
L364:
    call	abort
L365:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sP(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sP(%rip)
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
    movl	%eax, %edx
    movl	sP + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L366
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L366
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L366
    movq	-24(%rbp), %rdx
    movq	sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L366
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
    je	L367
L366:
    call	abort
L367:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sP(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sP(%rip)
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
    movl	%eax, %edx
    movl	sP + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L368
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L368
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L368
    movq	-24(%rbp), %rdx
    movq	sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L368
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L370
L368:
    call	abort
L370:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sQ
    .bss
sQ:
    .zero	10
    .text
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
    je	L375
    call	__stack_chk_fail
L375:
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
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3Q
fn3Q:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sQ(%rip)
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
    jmp	L383
L384:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L383:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L384
    movzwl	sQ(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sQ(%rip)
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sQ(%rip)
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
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
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
    je	L386
L385:
    call	abort
L386:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sQ(%rip)
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
    jne	L387
    movzbl	-31(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sQ + 1(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L387
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L387
    movq	-30(%rbp), %rdx
    movq	sQ + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L387
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
    je	L388
L387:
    call	abort
L388:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sQ(%rip)
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
    jne	L389
    movzbl	-31(%rbp), %eax
    shrb	$4, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sQ + 1(%rip), %eax
    shrb	$4, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L389
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L389
    movq	-30(%rbp), %rdx
    movq	sQ + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L389
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L391
L389:
    call	abort
L391:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sR
    .bss
sR:
    .zero	10
    .text
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
    je	L396
    call	__stack_chk_fail
L396:
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
    jmp	L404
L405:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L404:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L405
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
    jne	L406
    movzwl	-32(%rbp), %eax
    shrw	$2, %ax
    movl	%eax, %edx
    andw	$2047, %dx
    movzwl	sR(%rip), %eax
    shrw	$2, %ax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L406
    movzbl	-32(%rbp), %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    cmpb	%al, %dl
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
    je	L407
L406:
    call	abort
L407:
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
    jne	L408
    movzwl	-32(%rbp), %eax
    shrw	$2, %ax
    movl	%eax, %edx
    andw	$2047, %dx
    movzwl	sR(%rip), %eax
    shrw	$2, %ax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L408
    movzbl	-32(%rbp), %eax
    andl	$3, %eax
    movl	%eax, %edx
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    cmpb	%al, %dl
    jne	L408
    movq	-30(%rbp), %rdx
    movq	sR + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L408
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
    je	L409
L408:
    call	abort
L409:
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
    jne	L410
    movzwl	-32(%rbp), %eax
    shrw	$2, %ax
    movl	%eax, %edx
    andw	$2047, %dx
    movzwl	sR(%rip), %eax
    shrw	$2, %ax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L410
    movzbl	sR(%rip), %eax
    andl	$3, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L410
    movq	-30(%rbp), %rdx
    movq	sR + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L410
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L412
L410:
    call	abort
L412:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sS
    .bss
sS:
    .zero	10
    .text
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
    je	L417
    call	__stack_chk_fail
L417:
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
    jmp	L425
L426:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L425:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L426
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
    movl	%eax, %edx
    movzwl	sS(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
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
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
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
    je	L428
L427:
    call	abort
L428:
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
    movl	%eax, %edx
    movzwl	sS(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L429
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L429
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L429
    movq	-30(%rbp), %rdx
    movq	sS + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L429
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
    je	L430
L429:
    call	abort
L430:
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
    movl	%eax, %edx
    movzwl	sS(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L431
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L431
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L431
    movq	-30(%rbp), %rdx
    movq	sS + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L431
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L433
L431:
    call	abort
L433:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sT
    .bss
sT:
    .zero	4
    .text
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
    jmp	L445
L446:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L445:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L446
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
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
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
    je	L448
L447:
    call	abort
L448:
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
    jne	L449
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
    jne	L449
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L449
    movzwl	-46(%rbp), %edx
    movzwl	sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L449
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
    je	L450
L449:
    call	abort
L450:
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
    jne	L451
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
    jne	L451
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L451
    movzwl	-46(%rbp), %edx
    movzwl	sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L451
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L453
L451:
    call	abort
L453:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sU
    .bss
sU:
    .zero	10
    .text
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
    je	L458
    call	__stack_chk_fail
L458:
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
    jmp	L466
L467:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L466:
    movl	-60(%rbp), %eax
    cmpl	$9, %eax
    jbe	L467
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
    movl	%eax, %edx
    movzwl	sU(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L468
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L468
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
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
    je	L469
L468:
    call	abort
L469:
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
    movl	%eax, %edx
    movzwl	sU(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L470
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L470
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L470
    movq	-30(%rbp), %rdx
    movq	sU + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L470
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
    je	L471
L470:
    call	abort
L471:
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
    movl	%eax, %edx
    movzwl	sU(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L472
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L472
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L472
    movq	-30(%rbp), %rdx
    movq	sU + 2(%rip), %rax
    cmpq	%rax, %rdx
    jne	L472
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L474
L472:
    call	abort
L474:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sV
    .bss
sV:
    .zero	4
    .text
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
    jmp	L486
L487:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L486:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L487
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
    jne	L488
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L488
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
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
    je	L489
L488:
    call	abort
L489:
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
    jne	L490
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L490
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L490
    movzwl	-46(%rbp), %edx
    movzwl	sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L490
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
    je	L491
L490:
    call	abort
L491:
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
    jne	L492
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L492
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L492
    movzwl	-46(%rbp), %edx
    movzwl	sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L492
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L494
L492:
    call	abort
L494:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sW
    .bss
sW:
    .zero	20
    .text
    .globl	retmeW
retmeW:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	24(%rbp), %rdx
    movq	%rdx, 8(%rax)
    movl	32(%rbp), %edx
    movl	%edx, 16(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1W
fn1W:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sW(%rip), %rax
    movq	%rax, -32(%rbp)
    movq	sW + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	sW + 16(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$24, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movq	-24(%rbp), %rcx
    movq	%rcx, 8(%rax)
    movl	-16(%rbp), %ecx
    movl	%ecx, 16(%rax)
    movq	%rdx, %rdi
    call	retmeW
    addq	$24, %rsp
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L499
    call	__stack_chk_fail
L499:
    leave
    ret
    .globl	fn2W
fn2W:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movq	sW(%rip), %rax
    movq	%rax, -32(%rbp)
    movq	sW + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	sW + 16(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
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
    .globl	retitW
retitW:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	sW + 16(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3W
fn3W:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl	sW + 16(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 16(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sW + 16(%rip)
    call	retitW
    leave
    ret
    .globl	testW
testW:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$72, %rsp
    movq	$sW, -56(%rbp)
    movl	$0, -76(%rbp)
    jmp	L507
L508:
    movq	-56(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -56(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -76(%rbp)
L507:
    movl	-76(%rbp), %eax
    cmpl	$19, %eax
    jbe	L508
    fldt	LC0(%rip)
    fstpt	sW(%rip)
    movzwl	sW + 16(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sW + 16(%rip)
    movzwl	sW + 16(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movl	%eax, -72(%rbp)
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 16(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sW + 16(%rip)
    movq	sW(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sW + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sW + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn1W
    movl	%eax, -60(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sW + 19(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L509
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sW + 16(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L509
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 16(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L509
    fldt	-48(%rbp)
    fldt	sW(%rip)
    fucomi	%st(1), %st
    jp	L516
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L509
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L510
    jmp	L509
L516:
    fstp	%st(0)
    fstp	%st(0)
L509:
    call	abort
L510:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 16(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sW + 16(%rip)
    movq	sW(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sW + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sW + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn2W
    movl	%eax, -60(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sW + 19(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L511
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sW + 16(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L511
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 16(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L511
    fldt	-48(%rbp)
    fldt	sW(%rip)
    fucomi	%st(1), %st
    jp	L517
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L511
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
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
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L512
    jmp	L511
L517:
    fstp	%st(0)
    fstp	%st(0)
L511:
    call	abort
L512:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 16(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sW + 16(%rip)
    movq	sW(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sW + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sW + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn3W
    movl	%eax, -60(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sW + 19(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L513
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sW + 16(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L513
    movzwl	sW + 16(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-60(%rbp), %eax
    jne	L513
    fldt	-48(%rbp)
    fldt	sW(%rip)
    fucomi	%st(1), %st
    jp	L518
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L513
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L515
    jmp	L513
L518:
    fstp	%st(0)
    fstp	%st(0)
L513:
    call	abort
L515:
    nop
    addq	$72, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sX
    .bss
sX:
    .zero	20
    .text
    .globl	retmeX
retmeX:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	24(%rbp), %rdx
    movq	%rdx, 8(%rax)
    movl	32(%rbp), %edx
    movl	%edx, 16(%rax)
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
    movq	sX + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	sX + 16(%rip), %eax
    movl	%eax, -16(%rbp)
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
    subq	$24, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movq	-24(%rbp), %rcx
    movq	%rcx, 8(%rax)
    movl	-16(%rbp), %ecx
    movl	%ecx, 16(%rax)
    movq	%rdx, %rdi
    call	retmeX
    addq	$24, %rsp
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L523
    call	__stack_chk_fail
L523:
    leave
    ret
    .globl	fn2X
fn2X:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movq	sX(%rip), %rax
    movq	%rax, -32(%rbp)
    movq	sX + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	sX + 16(%rip), %eax
    movl	%eax, -16(%rbp)
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
    movzwl	-32(%rbp), %eax
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
    movzwl	-32(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -32(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitX
retitX:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3X
fn3X:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sX(%rip)
    call	retitX
    leave
    ret
    .globl	testX
testX:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$72, %rsp
    movq	$sX, -56(%rbp)
    movl	$0, -76(%rbp)
    jmp	L531
L532:
    movq	-56(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -56(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -76(%rbp)
L531:
    movl	-76(%rbp), %eax
    cmpl	$19, %eax
    jbe	L532
    fldt	LC0(%rip)
    fstpt	sX + 4(%rip)
    movzwl	sX(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sX(%rip)
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movl	%eax, -72(%rbp)
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sX(%rip)
    movq	sX(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sX + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sX + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn1X
    movl	%eax, -60(%rbp)
    movzbl	-45(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L533
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L533
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L533
    fldt	-44(%rbp)
    fldt	sX + 4(%rip)
    fucomi	%st(1), %st
    jp	L540
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L533
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L534
    jmp	L533
L540:
    fstp	%st(0)
    fstp	%st(0)
L533:
    call	abort
L534:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sX(%rip)
    movq	sX(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sX + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sX + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn2X
    movl	%eax, -60(%rbp)
    movzbl	-45(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L535
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L535
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L535
    fldt	-44(%rbp)
    fldt	sX + 4(%rip)
    fucomi	%st(1), %st
    jp	L541
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L535
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
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
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L536
    jmp	L535
L541:
    fstp	%st(0)
    fstp	%st(0)
L535:
    call	abort
L536:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sX(%rip)
    movq	sX(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sX + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sX + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn3X
    movl	%eax, -60(%rbp)
    movzbl	-45(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L537
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L537
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-60(%rbp), %eax
    jne	L537
    fldt	-44(%rbp)
    fldt	sX + 4(%rip)
    fucomi	%st(1), %st
    jp	L542
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L537
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L539
    jmp	L537
L542:
    fstp	%st(0)
    fstp	%st(0)
L537:
    call	abort
L539:
    nop
    addq	$72, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sY
    .bss
sY:
    .zero	20
    .text
    .globl	retmeY
retmeY:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	24(%rbp), %rdx
    movq	%rdx, 8(%rax)
    movl	32(%rbp), %edx
    movl	%edx, 16(%rax)
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
    movq	sY + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	sY + 16(%rip), %eax
    movl	%eax, -16(%rbp)
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
    subq	$24, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movq	-24(%rbp), %rcx
    movq	%rcx, 8(%rax)
    movl	-16(%rbp), %ecx
    movl	%ecx, 16(%rax)
    movq	%rdx, %rdi
    call	retmeY
    addq	$24, %rsp
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L547
    call	__stack_chk_fail
L547:
    leave
    ret
    .globl	fn2Y
fn2Y:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movq	sY(%rip), %rax
    movq	%rax, -32(%rbp)
    movq	sY + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	sY + 16(%rip), %eax
    movl	%eax, -16(%rbp)
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
    movzwl	-32(%rbp), %eax
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
    movzwl	-32(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -32(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitY
retitY:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3Y
fn3Y:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sY(%rip)
    call	retitY
    leave
    ret
    .globl	testY
testY:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$72, %rsp
    movq	$sY, -56(%rbp)
    movl	$0, -76(%rbp)
    jmp	L555
L556:
    movq	-56(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -56(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -76(%rbp)
L555:
    movl	-76(%rbp), %eax
    cmpl	$19, %eax
    jbe	L556
    fldt	LC0(%rip)
    fstpt	sY + 4(%rip)
    movzwl	sY(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sY(%rip)
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movl	%eax, -72(%rbp)
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sY(%rip)
    movq	sY(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sY + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sY + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn1Y
    movl	%eax, -60(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L557
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L557
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L557
    fldt	-44(%rbp)
    fldt	sY + 4(%rip)
    fucomi	%st(1), %st
    jp	L564
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L557
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L558
    jmp	L557
L564:
    fstp	%st(0)
    fstp	%st(0)
L557:
    call	abort
L558:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sY(%rip)
    movq	sY(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sY + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sY + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn2Y
    movl	%eax, -60(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L559
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L559
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L559
    fldt	-44(%rbp)
    fldt	sY + 4(%rip)
    fucomi	%st(1), %st
    jp	L565
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L559
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
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
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L560
    jmp	L559
L565:
    fstp	%st(0)
    fstp	%st(0)
L559:
    call	abort
L560:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sY(%rip)
    movq	sY(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sY + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sY + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn3Y
    movl	%eax, -60(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L561
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L561
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-60(%rbp), %eax
    jne	L561
    fldt	-44(%rbp)
    fldt	sY + 4(%rip)
    fucomi	%st(1), %st
    jp	L566
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L561
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L563
    jmp	L561
L566:
    fstp	%st(0)
    fstp	%st(0)
L561:
    call	abort
L563:
    nop
    addq	$72, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .globl	sZ
    .bss
sZ:
    .zero	20
    .text
    .globl	retmeZ
retmeZ:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movq	-8(%rbp), %rax
    movq	16(%rbp), %rdx
    movq	%rdx, (%rax)
    movq	24(%rbp), %rdx
    movq	%rdx, 8(%rax)
    movl	32(%rbp), %edx
    movl	%edx, 16(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1Z
fn1Z:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movl	%edi, -36(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	sZ(%rip), %rax
    movq	%rax, -32(%rbp)
    movq	sZ + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	sZ + 16(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	-14(%rbp), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    leaq	-32(%rbp), %rdx
    subq	$24, %rsp
    movq	%rsp, %rax
    movq	-32(%rbp), %rcx
    movq	%rcx, (%rax)
    movq	-24(%rbp), %rcx
    movq	%rcx, 8(%rax)
    movl	-16(%rbp), %ecx
    movl	%ecx, 16(%rax)
    movq	%rdx, %rdi
    call	retmeZ
    addq	$24, %rsp
    movzwl	-14(%rbp), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rsi
    xorq	$40, %rsi
    je	L571
    call	__stack_chk_fail
L571:
    leave
    ret
    .globl	fn2Z
fn2Z:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movq	sZ(%rip), %rax
    movq	%rax, -32(%rbp)
    movq	sZ + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	sZ + 16(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movl	-36(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	-14(%rbp), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movzwl	-14(%rbp), %eax
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
    movzwl	-14(%rbp), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitZ
retitZ:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	sZ + 18(%rip), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3Z
fn3Z:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl	sZ + 18(%rip), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	sZ + 18(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, sZ + 18(%rip)
    call	retitZ
    leave
    ret
    .globl	testZ
testZ:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$72, %rsp
    movq	$sZ, -56(%rbp)
    movl	$0, -76(%rbp)
    jmp	L579
L580:
    movq	-56(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -56(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -76(%rbp)
L579:
    movl	-76(%rbp), %eax
    cmpl	$19, %eax
    jbe	L580
    fldt	LC0(%rip)
    fstpt	sZ(%rip)
    movzwl	sZ + 18(%rip), %eax
    orl	$-16, %eax
    movw	%ax, sZ + 18(%rip)
    movzwl	sZ + 18(%rip), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    movl	%eax, -72(%rbp)
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	sZ + 18(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, sZ + 18(%rip)
    movq	sZ(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sZ + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sZ + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn1Z
    movl	%eax, -60(%rbp)
    movl	-32(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl	sZ + 16(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L581
    movzwl	-32(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl	sZ + 16(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L581
    movzwl	-30(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movzwl	sZ + 18(%rip), %eax
    shrw	$4, %ax
    cmpw	%ax, %dx
    jne	L581
    fldt	-48(%rbp)
    fldt	sZ(%rip)
    fucomi	%st(1), %st
    jp	L588
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L581
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L582
    jmp	L581
L588:
    fstp	%st(0)
    fstp	%st(0)
L581:
    call	abort
L582:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	sZ + 18(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, sZ + 18(%rip)
    movq	sZ(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sZ + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sZ + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn2Z
    movl	%eax, -60(%rbp)
    movl	-32(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl	sZ + 16(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L583
    movzwl	-32(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl	sZ + 16(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L583
    movzwl	-30(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movzwl	sZ + 18(%rip), %eax
    shrw	$4, %ax
    cmpw	%ax, %dx
    jne	L583
    fldt	-48(%rbp)
    fldt	sZ(%rip)
    fucomi	%st(1), %st
    jp	L589
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L583
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
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
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L584
    jmp	L583
L589:
    fstp	%st(0)
    fstp	%st(0)
L583:
    call	abort
L584:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	sZ + 18(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, sZ + 18(%rip)
    movq	sZ(%rip), %rax
    movq	%rax, -48(%rbp)
    movq	sZ + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movl	sZ + 16(%rip), %eax
    movl	%eax, -32(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn3Z
    movl	%eax, -60(%rbp)
    movl	-32(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl	sZ + 16(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L585
    movzwl	-32(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl	sZ + 16(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L585
    movzwl	sZ + 18(%rip), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    cmpl	-60(%rbp), %eax
    jne	L585
    fldt	-48(%rbp)
    fldt	sZ(%rip)
    fucomi	%st(1), %st
    jp	L590
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L585
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L587
    jmp	L585
L590:
    fstp	%st(0)
    fstp	%st(0)
L585:
    call	abort
L587:
    nop
    addq	$72, %rsp
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
s2418:
    .long	1388815473
    .section	.rodata
LC0:
    .long	0
    .long	2818572288
    .long	16385
    .long	0
