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
    .globl	myrnd
myrnd:
    pushq	%rbp
    movq	%rsp, %rbp
    movl $s2409(%rip), %eax
    imull	$1103515245, %eax, %eax
    movl	%eax, $s2409(%rip)
    movl $s2409(%rip), %eax
    addl	$12345, %eax
    movl	%eax, $s2409(%rip)
    movl $s2409(%rip), %eax
    shrl	$16, %eax
    andl	$2047, %eax
    popq	%rbp
    ret
    .comm	sA,4,4
    .globl	retmeA
retmeA:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -16(%rbp)
    movl	-16(%rbp), %eax
    popq	%rbp
    ret
    .globl	fn1A
fn1A:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movl $sA(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-14(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movl	-16(%rbp), %eax
    movl	%eax, %edi
    call	retmeA
    movl	%eax, -16(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2A
fn2A:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movl $sA(%rip), %eax
    movl	%eax, -16(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-14(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
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
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-14(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitA
retitA:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl $sA + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3A
fn3A:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl $sA + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sA + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sA + 2(%rip)
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
    jmp	L52
L53:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L52:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L53
    movzwl $sA + 2(%rip), %eax
    orl	$-2, %eax
    movw	%ax, $sA + 2(%rip)
    movzwl $sA + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    movl	%eax, -40(%rbp)
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sA + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sA + 2(%rip)
    movl $sA(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sA(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L54
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl $sA(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L54
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sA + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L54
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl $sA(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L54
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L55
L54:
    call	abort
L55:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sA + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sA + 2(%rip)
    movl $sA(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sA(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L56
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl $sA(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L56
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sA + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L56
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl $sA(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L56
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
    je	L57
L56:
    call	abort
L57:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sA + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sA + 2(%rip)
    movl $sA(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sA(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L58
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl $sA(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L58
    movzwl $sA + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    cmpl	-28(%rbp), %eax
    jne	L58
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl $sA(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L58
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L60
L58:
    call	abort
L60:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sB,8,8
    .globl	retmeB
retmeB:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1B
fn1B:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sB(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-14(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	retmeB
    movq	%rax, -16(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2B
fn2B:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sB(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-14(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
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
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-14(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	%ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitB
retitB:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl $sB + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3B
fn3B:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl $sB + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sB + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sB + 2(%rip)
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
    jmp	L72
L73:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L72:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L73
    movzwl $sB + 2(%rip), %eax
    orl	$-2, %eax
    movw	%ax, $sB + 2(%rip)
    movzwl $sB + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sB + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sB + 2(%rip)
    movq $sB(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sB(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L74
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sB(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L74
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sB + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L74
    movl	-28(%rbp), %edx
    movl $sB + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L74
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L75
L74:
    call	abort
L75:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sB + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sB + 2(%rip)
    movq $sB(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sB(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L76
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sB(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L76
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sB + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L76
    movl	-28(%rbp), %edx
    movl $sB + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L76
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
    je	L77
L76:
    call	abort
L77:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sB + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sB + 2(%rip)
    movq $sB(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sB(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L78
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sB(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L78
    movzwl $sB + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    cmpl	-36(%rbp), %eax
    jne	L78
    movl	-28(%rbp), %edx
    movl $sB + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L78
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L80
L78:
    call	abort
L80:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sC,8,8
    .globl	retmeC
retmeC:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -16(%rbp)
    movq	-16(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1C
fn1C:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sC(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	-10(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-10(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -10(%rbp)
    movq	-16(%rbp), %rax
    movq	%rax, %rdi
    call	retmeC
    movq	%rax, -16(%rbp)
    movzwl	-10(%rbp), %eax
    shrw	%ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2C
fn2C:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sC(%rip), %rax
    movq	%rax, -16(%rbp)
    movzwl	-10(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-10(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -10(%rbp)
    movzwl	-10(%rbp), %eax
    shrw	%ax
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
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	-10(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, -10(%rbp)
    movzwl	-10(%rbp), %eax
    shrw	%ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitC
retitC:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl $sC + 6(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3C
fn3C:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl $sC + 6(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sC + 6(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sC + 6(%rip)
    call	retitC
    leave
    ret
    .globl	testC
testC:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    subq	$56, %rsp
    movq	$sC, -24(%rbp)
    movl	$0, -52(%rbp)
    jmp	L92
L93:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L92:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L93
    movzwl $sC + 6(%rip), %eax
    orl	$-2, %eax
    movw	%ax, $sC + 6(%rip)
    movzwl $sC + 6(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sC + 6(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sC + 6(%rip)
    movq $sC(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1C
    movl	%eax, -36(%rbp)
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sC + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L94
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sC + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L94
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sC + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L94
    movl	-32(%rbp), %edx
    movl $sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L94
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L95
L94:
    call	abort
L95:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sC + 6(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sC + 6(%rip)
    movq $sC(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2C
    movl	%eax, -36(%rbp)
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sC + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L96
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sC + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L96
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sC + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L96
    movl	-32(%rbp), %edx
    movl $sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L96
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
    je	L97
L96:
    call	abort
L97:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl $sC + 6(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, $sC + 6(%rip)
    movq $sC(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3C
    movl	%eax, -36(%rbp)
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sC + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L98
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sC + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L98
    movzwl $sC + 6(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    cmpl	-36(%rbp), %eax
    jne	L98
    movl	-32(%rbp), %edx
    movl $sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L98
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L100
L98:
    call	abort
L100:
    nop
    addq	$56, %rsp
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
    movq $sD(%rip), %rax
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
    movq $sD(%rip), %rax
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
    movl $sD + 4(%rip), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	fn3D
fn3D:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl $sD + 4(%rip), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sD + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sD + 4(%rip)
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
    jmp	L112
L113:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L112:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L113
    movl $sD + 4(%rip), %eax
    orl	$-8, %eax
    movl	%eax, $sD + 4(%rip)
    movl $sD + 4(%rip), %eax
    shrl	$3, %eax
    movl	%eax, -48(%rbp)
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sD + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sD + 4(%rip)
    movq $sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl $sD(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L114
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L114
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L114
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L114
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L115
L114:
    call	abort
L115:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sD + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sD + 4(%rip)
    movq $sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl $sD(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L116
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L116
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L116
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L116
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
    je	L117
L116:
    call	abort
L117:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sD + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sD + 4(%rip)
    movq $sD(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3D
    movl	%eax, -36(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl $sD(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L118
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L118
    movl $sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	-36(%rbp), %eax
    jne	L118
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L118
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L120
L118:
    call	abort
L120:
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
    movq $sE(%rip), %rax
    movq $sE + 8(%rip), %rdx
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
    movq $sE(%rip), %rax
    movq $sE + 8(%rip), %rdx
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
    movl $sE + 12(%rip), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	fn3E
fn3E:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl $sE + 12(%rip), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sE + 12(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sE + 12(%rip)
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
    jmp	L132
L133:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L132:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L133
    movl $sE + 12(%rip), %eax
    orl	$-8, %eax
    movl	%eax, $sE + 12(%rip)
    movl $sE + 12(%rip), %eax
    shrl	$3, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sE + 12(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sE + 12(%rip)
    movq $sE(%rip), %rax
    movq $sE + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1E
    movl	%eax, -44(%rbp)
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sE + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L134
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L134
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L134
    movq	-32(%rbp), %rdx
    movq $sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L134
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L135
L134:
    call	abort
L135:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sE + 12(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sE + 12(%rip)
    movq $sE(%rip), %rax
    movq $sE + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2E
    movl	%eax, -44(%rbp)
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sE + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L136
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L136
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L136
    movq	-32(%rbp), %rdx
    movq $sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L136
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
    je	L137
L136:
    call	abort
L137:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sE + 12(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sE + 12(%rip)
    movq $sE(%rip), %rax
    movq $sE + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3E
    movl	%eax, -44(%rbp)
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sE + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L138
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L138
    movl $sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	-44(%rbp), %eax
    jne	L138
    movq	-32(%rbp), %rdx
    movq $sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L138
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L140
L138:
    call	abort
L140:
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
    movq $sF(%rip), %rax
    movq $sF + 8(%rip), %rdx
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
    movq $sF(%rip), %rax
    movq $sF + 8(%rip), %rdx
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
    movl $sF + 4(%rip), %eax
    shrl	$3, %eax
    popq	%rbp
    ret
    .globl	fn3F
fn3F:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movl $sF + 4(%rip), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sF + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sF + 4(%rip)
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
    jmp	L152
L153:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L152:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L153
    movl $sF + 4(%rip), %eax
    orl	$-8, %eax
    movl	%eax, $sF + 4(%rip)
    movl $sF + 4(%rip), %eax
    shrl	$3, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sF + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sF + 4(%rip)
    movq $sF(%rip), %rax
    movq $sF + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1F
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sF(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L154
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L154
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L154
    movq	-24(%rbp), %rdx
    movq $sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L154
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L155
L154:
    call	abort
L155:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sF + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sF + 4(%rip)
    movq $sF(%rip), %rax
    movq $sF + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2F
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sF(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L156
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L156
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L156
    movq	-24(%rbp), %rdx
    movq $sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L156
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
    je	L157
L156:
    call	abort
L157:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$536870911, %eax
    leal	0(,%rax,8), %edx
    movl $sF + 4(%rip), %eax
    andl	$7, %eax
    orl	%edx, %eax
    movl	%eax, $sF + 4(%rip)
    movq $sF(%rip), %rax
    movq $sF + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3F
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sF(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L158
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L158
    movl $sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	-44(%rbp), %eax
    jne	L158
    movq	-24(%rbp), %rdx
    movq $sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L158
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L160
L158:
    call	abort
L160:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sG,16,16
    .globl	retmeG
retmeG:
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
    .globl	fn1G
fn1G:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sG(%rip), %rax
    movq $sG + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzbl	-13(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	-13(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, -13(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeG
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzbl	-13(%rbp), %eax
    shrb	%al
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2G
fn2G:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sG(%rip), %rax
    movq $sG + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzbl	-13(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	-13(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, -13(%rbp)
    movzbl	-13(%rbp), %eax
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
    movzbl	-13(%rbp), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, -13(%rbp)
    movzbl	-13(%rbp), %eax
    shrb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	retitG
retitG:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl $sG + 3(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn3G
fn3G:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzbl $sG + 3(%rip), %eax
    shrb	%al
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl $sG + 3(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, $sG + 3(%rip)
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
    jmp	L172
L173:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L172:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L173
    movzbl $sG + 3(%rip), %eax
    orl	$-2, %eax
    movb	%al, $sG + 3(%rip)
    movzbl $sG + 3(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl $sG + 3(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, $sG + 3(%rip)
    movq $sG(%rip), %rax
    movq $sG + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1G
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sG(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L174
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sG(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L174
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sG + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L174
    movq	-24(%rbp), %rdx
    movq $sG + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L174
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L175
L174:
    call	abort
L175:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl $sG + 3(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, $sG + 3(%rip)
    movq $sG(%rip), %rax
    movq $sG + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2G
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sG(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L176
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sG(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L176
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sG + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L176
    movq	-24(%rbp), %rdx
    movq $sG + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L176
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
    je	L177
L176:
    call	abort
L177:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl $sG + 3(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, $sG + 3(%rip)
    movq $sG(%rip), %rax
    movq $sG + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3G
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sG(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L178
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sG(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L178
    movzbl $sG + 3(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L178
    movq	-24(%rbp), %rdx
    movq $sG + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L178
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L180
L178:
    call	abort
L180:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sH,16,16
    .globl	retmeH
retmeH:
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
    .globl	fn1H
fn1H:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sH(%rip), %rax
    movq $sH + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	-14(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeH
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2H
fn2H:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sH(%rip), %rax
    movq $sH + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	-14(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	$7, %ax
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
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	-14(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, -14(%rbp)
    movzwl	-14(%rbp), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitH
retitH:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl $sH + 2(%rip), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3H
fn3H:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl $sH + 2(%rip), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl $sH + 2(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, $sH + 2(%rip)
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
    jmp	L192
L193:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L192:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L193
    movzwl $sH + 2(%rip), %eax
    orl	$-128, %eax
    movw	%ax, $sH + 2(%rip)
    movzwl $sH + 2(%rip), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl $sH + 2(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, $sH + 2(%rip)
    movq $sH(%rip), %rax
    movq $sH + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1H
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sH(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L194
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sH(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L194
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sH + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L194
    movq	-24(%rbp), %rdx
    movq $sH + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L194
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L195
L194:
    call	abort
L195:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl $sH + 2(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, $sH + 2(%rip)
    movq $sH(%rip), %rax
    movq $sH + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2H
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sH(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L196
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sH(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L196
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sH + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L196
    movq	-24(%rbp), %rdx
    movq $sH + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L196
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
    je	L197
L196:
    call	abort
L197:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl $sH + 2(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, $sH + 2(%rip)
    movq $sH(%rip), %rax
    movq $sH + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3H
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sH(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L198
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sH(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L198
    movzwl $sH + 2(%rip), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L198
    movq	-24(%rbp), %rdx
    movq $sH + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L198
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L200
L198:
    call	abort
L200:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sI,16,16
    .globl	retmeI
retmeI:
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
    .globl	fn1I
fn1I:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sI(%rip), %rax
    movq $sI + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeI
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2I
fn2I:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sI(%rip), %rax
    movq $sI + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movl	-20(%rbp), %eax
    addl	%edx, %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$7, %ax
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
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	-16(%rbp), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, -16(%rbp)
    movzwl	-16(%rbp), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	retitI
retitI:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl $sI(%rip), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3I
fn3I:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl $sI(%rip), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl $sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, $sI(%rip)
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
    jmp	L212
L213:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L212:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L213
    movzwl $sI(%rip), %eax
    orl	$-128, %eax
    movw	%ax, $sI(%rip)
    movzwl $sI(%rip), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl $sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, $sI(%rip)
    movq $sI(%rip), %rax
    movq $sI + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1I
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sI(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L214
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl $sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L214
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sI(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L214
    movq	-24(%rbp), %rdx
    movq $sI + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L214
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L215
L214:
    call	abort
L215:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl $sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, $sI(%rip)
    movq $sI(%rip), %rax
    movq $sI + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2I
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sI(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L216
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl $sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L216
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sI(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L216
    movq	-24(%rbp), %rdx
    movq $sI + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L216
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
    je	L217
L216:
    call	abort
L217:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl $sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, $sI(%rip)
    movq $sI(%rip), %rax
    movq $sI + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3I
    movl	%eax, -44(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sI(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L218
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl $sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L218
    movzwl $sI(%rip), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L218
    movq	-24(%rbp), %rdx
    movq $sI + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L218
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L220
L218:
    call	abort
L220:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sJ,4,2
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
    movl $sJ(%rip), %eax
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
    movl $sJ(%rip), %eax
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
    movzbl $sJ + 1(%rip), %eax
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
    movzbl $sJ + 1(%rip), %eax
    shrb	%al
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl $sJ + 1(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, $sJ + 1(%rip)
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
    jmp	L232
L233:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L232:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L233
    movzbl $sJ + 1(%rip), %eax
    orl	$-2, %eax
    movb	%al, $sJ + 1(%rip)
    movzbl $sJ + 1(%rip), %eax
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
    movzbl $sJ + 1(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, $sJ + 1(%rip)
    movl $sJ(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1J
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sJ(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L234
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl $sJ(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L234
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sJ + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L234
    movzwl	-46(%rbp), %edx
    movzwl $sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L234
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L235
L234:
    call	abort
L235:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl $sJ + 1(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, $sJ + 1(%rip)
    movl $sJ(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2J
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sJ(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L236
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl $sJ(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L236
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sJ + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L236
    movzwl	-46(%rbp), %edx
    movzwl $sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L236
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
    je	L237
L236:
    call	abort
L237:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl $sJ + 1(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, $sJ + 1(%rip)
    movl $sJ(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3J
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sJ(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L238
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl $sJ(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L238
    movzbl $sJ + 1(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L238
    movzwl	-46(%rbp), %edx
    movzwl $sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L238
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L240
L238:
    call	abort
L240:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sK,4,4
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
    movl $sK(%rip), %eax
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
    movl $sK(%rip), %eax
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
    movzbl $sK(%rip), %eax
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
    movzbl $sK(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sK(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sK(%rip)
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
    jmp	L252
L253:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L252:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L253
    movzbl $sK(%rip), %eax
    orl	$63, %eax
    movb	%al, $sK(%rip)
    movzbl $sK(%rip), %eax
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
    movzbl $sK(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sK(%rip)
    movl $sK(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1K
    movl	%eax, -28(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sK + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L254
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl $sK(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L254
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sK(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L254
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl $sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L254
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L255
L254:
    call	abort
L255:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sK(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sK(%rip)
    movl $sK(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2K
    movl	%eax, -28(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sK + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L256
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl $sK(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L256
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sK(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L256
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl $sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L256
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
    je	L257
L256:
    call	abort
L257:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sK(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sK(%rip)
    movl $sK(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3K
    movl	%eax, -28(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sK + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L258
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl $sK(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L258
    movzbl $sK(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L258
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl $sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L258
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L260
L258:
    call	abort
L260:
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
    movq $sL(%rip), %rax
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
    movq $sL(%rip), %rax
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
    movzbl $sL(%rip), %eax
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
    movzbl $sL(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sL(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sL(%rip)
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
    jmp	L272
L273:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L272:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L273
    movzbl $sL(%rip), %eax
    orl	$63, %eax
    movb	%al, $sL(%rip)
    movzbl $sL(%rip), %eax
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
    movzbl $sL(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sL(%rip)
    movq $sL(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1L
    movl	%eax, -36(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sL + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L274
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L274
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sL(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L274
    movl	-28(%rbp), %edx
    movl $sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L274
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L275
L274:
    call	abort
L275:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sL(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sL(%rip)
    movq $sL(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2L
    movl	%eax, -36(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sL + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L276
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L276
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sL(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L276
    movl	-28(%rbp), %edx
    movl $sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L276
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
    je	L277
L276:
    call	abort
L277:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sL(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sL(%rip)
    movq $sL(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3L
    movl	%eax, -36(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sL + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L278
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L278
    movzbl $sL(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L278
    movl	-28(%rbp), %edx
    movl $sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L278
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L280
L278:
    call	abort
L280:
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
    movq $sM(%rip), %rax
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
    movq $sM(%rip), %rax
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
    movzbl $sM + 4(%rip), %eax
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
    movzbl $sM + 4(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sM + 4(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sM + 4(%rip)
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
    jmp	L292
L293:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L292:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L293
    movzbl $sM + 4(%rip), %eax
    orl	$63, %eax
    movb	%al, $sM + 4(%rip)
    movzbl $sM + 4(%rip), %eax
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
    movzbl $sM + 4(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sM + 4(%rip)
    movq $sM(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1M
    movl	%eax, -36(%rbp)
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sM + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L294
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L294
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sM + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L294
    movl	-32(%rbp), %edx
    movl $sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L294
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L295
L294:
    call	abort
L295:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sM + 4(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sM + 4(%rip)
    movq $sM(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2M
    movl	%eax, -36(%rbp)
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sM + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L296
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L296
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sM + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L296
    movl	-32(%rbp), %edx
    movl $sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L296
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
    je	L297
L296:
    call	abort
L297:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sM + 4(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, $sM + 4(%rip)
    movq $sM(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3M
    movl	%eax, -36(%rbp)
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl $sM + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L298
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L298
    movzbl $sM + 4(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L298
    movl	-32(%rbp), %edx
    movl $sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L298
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L300
L298:
    call	abort
L300:
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
    movq $sN(%rip), %rax
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
    movq $sN(%rip), %rax
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
    movzwl $sN(%rip), %eax
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
    movzwl $sN(%rip), %eax
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
    movzwl $sN(%rip), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, $sN(%rip)
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
    jmp	L312
L313:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L312:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L313
    movzwl $sN(%rip), %eax
    orw	$4032, %ax
    movw	%ax, $sN(%rip)
    movzwl $sN(%rip), %eax
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
    movzwl $sN(%rip), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, $sN(%rip)
    movq $sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sN + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L314
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L314
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl $sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L314
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L314
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L315
L314:
    call	abort
L315:
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
    movzwl $sN(%rip), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, $sN(%rip)
    movq $sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sN + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L316
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L316
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl $sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L316
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L316
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
    je	L317
L316:
    call	abort
L317:
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
    movzwl $sN(%rip), %eax
    andw	$-4033, %ax
    orl	%edx, %eax
    movw	%ax, $sN(%rip)
    movq $sN(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3N
    movl	%eax, -36(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sN + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L318
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L318
    movzwl $sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
    jne	L318
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L318
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L320
L318:
    call	abort
L320:
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
    movq $sO(%rip), %rax
    movq $sO + 8(%rip), %rdx
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
    movq $sO(%rip), %rax
    movq $sO + 8(%rip), %rdx
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
    movzwl $sO + 8(%rip), %eax
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
    movzwl $sO + 8(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sO + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sO + 8(%rip)
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
    jmp	L332
L333:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L332:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L333
    movzwl $sO + 8(%rip), %eax
    orw	$4095, %ax
    movw	%ax, $sO + 8(%rip)
    movzwl $sO + 8(%rip), %eax
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
    movzwl $sO + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sO + 8(%rip)
    movq $sO(%rip), %rax
    movq $sO + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1O
    movl	%eax, -44(%rbp)
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sO + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L334
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L334
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sO + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L334
    movq	-32(%rbp), %rdx
    movq $sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L334
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L335
L334:
    call	abort
L335:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sO + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sO + 8(%rip)
    movq $sO(%rip), %rax
    movq $sO + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2O
    movl	%eax, -44(%rbp)
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sO + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L336
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L336
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sO + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L336
    movq	-32(%rbp), %rdx
    movq $sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L336
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
    je	L337
L336:
    call	abort
L337:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sO + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sO + 8(%rip)
    movq $sO(%rip), %rax
    movq $sO + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3O
    movl	%eax, -44(%rbp)
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sO + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L338
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L338
    movzwl $sO + 8(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L338
    movq	-32(%rbp), %rdx
    movq $sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L338
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L340
L338:
    call	abort
L340:
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
    movq $sP(%rip), %rax
    movq $sP + 8(%rip), %rdx
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
    movq $sP(%rip), %rax
    movq $sP + 8(%rip), %rdx
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
    movzwl $sP(%rip), %eax
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
    movzwl $sP(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sP(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sP(%rip)
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
    jmp	L352
L353:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L352:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L353
    movzwl $sP(%rip), %eax
    orw	$4095, %ax
    movw	%ax, $sP(%rip)
    movzwl $sP(%rip), %eax
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
    movzwl $sP(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sP(%rip)
    movq $sP(%rip), %rax
    movq $sP + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1P
    movl	%eax, -44(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sP + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L354
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L354
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sP(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L354
    movq	-24(%rbp), %rdx
    movq $sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L354
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L355
L354:
    call	abort
L355:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sP(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sP(%rip)
    movq $sP(%rip), %rax
    movq $sP + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2P
    movl	%eax, -44(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sP + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L356
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L356
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sP(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L356
    movq	-24(%rbp), %rdx
    movq $sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L356
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
    je	L357
L356:
    call	abort
L357:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sP(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sP(%rip)
    movq $sP(%rip), %rax
    movq $sP + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3P
    movl	%eax, -44(%rbp)
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl $sP + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L358
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq $sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L358
    movzwl $sP(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L358
    movq	-24(%rbp), %rdx
    movq $sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L358
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L360
L358:
    call	abort
L360:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sQ,16,16
    .globl	retmeQ
retmeQ:
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
    .globl	fn1Q
fn1Q:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sQ(%rip), %rax
    movq $sQ + 8(%rip), %rdx
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
    call	retmeQ
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2Q
fn2Q:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sQ(%rip), %rax
    movq $sQ + 8(%rip), %rdx
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
    .globl	retitQ
retitQ:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl $sQ(%rip), %eax
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
    movzwl $sQ(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sQ(%rip)
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
    jmp	L372
L373:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L372:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L373
    movzwl $sQ(%rip), %eax
    orw	$4095, %ax
    movw	%ax, $sQ(%rip)
    movzwl $sQ(%rip), %eax
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
    movzwl $sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sQ(%rip)
    movq $sQ(%rip), %rax
    movq $sQ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1Q
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sQ + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L374
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sQ(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L374
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sQ(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L374
    movq	-24(%rbp), %rdx
    movq $sQ + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L374
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L375
L374:
    call	abort
L375:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sQ(%rip)
    movq $sQ(%rip), %rax
    movq $sQ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2Q
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sQ + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L376
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sQ(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L376
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sQ(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L376
    movq	-24(%rbp), %rdx
    movq $sQ + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L376
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
    je	L377
L376:
    call	abort
L377:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sQ(%rip)
    movq $sQ(%rip), %rax
    movq $sQ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3Q
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sQ + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L378
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sQ(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L378
    movzwl $sQ(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L378
    movq	-24(%rbp), %rdx
    movq $sQ + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L378
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L380
L378:
    call	abort
L380:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sR,16,16
    .globl	retmeR
retmeR:
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
    .globl	fn1R
fn1R:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sR(%rip), %rax
    movq $sR + 8(%rip), %rdx
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
    call	retmeR
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2R
fn2R:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sR(%rip), %rax
    movq $sR + 8(%rip), %rdx
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
    .globl	retitR
retitR:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl $sR(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	fn3R
fn3R:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$8, %rsp
    movl	%edi, -4(%rbp)
    movzwl $sR(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sR(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sR(%rip)
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
    jmp	L392
L393:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L392:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L393
    movzwl $sR(%rip), %eax
    orw	$4095, %ax
    movw	%ax, $sR(%rip)
    movzwl $sR(%rip), %eax
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
    movzwl $sR(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sR(%rip)
    movq $sR(%rip), %rax
    movq $sR + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1R
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sR + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L394
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sR(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L394
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sR(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L394
    movq	-24(%rbp), %rdx
    movq $sR + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L394
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L395
L394:
    call	abort
L395:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sR(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sR(%rip)
    movq $sR(%rip), %rax
    movq $sR + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2R
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sR + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L396
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sR(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L396
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sR(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L396
    movq	-24(%rbp), %rdx
    movq $sR + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L396
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
    je	L397
L396:
    call	abort
L397:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sR(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sR(%rip)
    movq $sR(%rip), %rax
    movq $sR + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3R
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sR + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L398
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sR(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L398
    movzwl $sR(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L398
    movq	-24(%rbp), %rdx
    movq $sR + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L398
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L400
L398:
    call	abort
L400:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sS,16,16
    .globl	retmeS
retmeS:
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
    .globl	fn1S
fn1S:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sS(%rip), %rax
    movq $sS + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
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
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeS
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzbl	-16(%rbp), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2S
fn2S:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sS(%rip), %rax
    movq $sS + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
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
    movzbl $sS(%rip), %eax
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
    movzbl $sS(%rip), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sS(%rip)
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
    jmp	L412
L413:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L412:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L413
    movzbl $sS(%rip), %eax
    orl	$1, %eax
    movb	%al, $sS(%rip)
    movzbl $sS(%rip), %eax
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
    movzbl $sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sS(%rip)
    movq $sS(%rip), %rax
    movq $sS + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1S
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sS(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L414
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl $sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L414
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sS(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L414
    movq	-24(%rbp), %rdx
    movq $sS + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L414
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L415
L414:
    call	abort
L415:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sS(%rip)
    movq $sS(%rip), %rax
    movq $sS + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2S
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sS(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L416
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl $sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L416
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sS(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L416
    movq	-24(%rbp), %rdx
    movq $sS + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L416
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
    je	L417
L416:
    call	abort
L417:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sS(%rip)
    movq $sS(%rip), %rax
    movq $sS + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3S
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sS(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L418
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl $sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L418
    movzbl $sS(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L418
    movq	-24(%rbp), %rdx
    movq $sS + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L418
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L420
L418:
    call	abort
L420:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sT,4,2
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
    movl $sT(%rip), %eax
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
    movl $sT(%rip), %eax
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
    movzbl $sT(%rip), %eax
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
    movzbl $sT(%rip), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sT(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sT(%rip)
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
    jmp	L432
L433:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L432:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L433
    movzbl $sT(%rip), %eax
    orl	$1, %eax
    movb	%al, $sT(%rip)
    movzbl $sT(%rip), %eax
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
    movzbl $sT(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sT(%rip)
    movl $sT(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1T
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sT + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L434
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl $sT(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L434
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sT(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L434
    movzwl	-46(%rbp), %edx
    movzwl $sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L434
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L435
L434:
    call	abort
L435:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sT(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sT(%rip)
    movl $sT(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2T
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sT + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L436
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl $sT(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L436
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sT(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L436
    movzwl	-46(%rbp), %edx
    movzwl $sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L436
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
    je	L437
L436:
    call	abort
L437:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sT(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sT(%rip)
    movl $sT(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3T
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sT + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L438
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl $sT(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L438
    movzbl $sT(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L438
    movzwl	-46(%rbp), %edx
    movzwl $sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L438
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L440
L438:
    call	abort
L440:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sU,16,16
    .globl	retmeU
retmeU:
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
    .globl	fn1U
fn1U:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq $sU(%rip), %rax
    movq $sU + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
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
    movq	-16(%rbp), %rdx
    movq	-8(%rbp), %rax
    movq	%rdx, %rdi
    movq	%rax, %rsi
    call	retmeU
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
    movzbl	-16(%rbp), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    leave
    ret
    .globl	fn2U
fn2U:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq $sU(%rip), %rax
    movq $sU + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
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
    movzbl $sU(%rip), %eax
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
    movzbl $sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl $sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, $sU(%rip)
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
    jmp	L452
L453:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L452:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L453
    movzbl $sU(%rip), %eax
    orl	$64, %eax
    movb	%al, $sU(%rip)
    movzbl $sU(%rip), %eax
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
    movzbl $sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, $sU(%rip)
    movq $sU(%rip), %rax
    movq $sU + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1U
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sU(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L454
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L454
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl $sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L454
    movq	-24(%rbp), %rdx
    movq $sU + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L454
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L455
L454:
    call	abort
L455:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl $sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, $sU(%rip)
    movq $sU(%rip), %rax
    movq $sU + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2U
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sU(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L456
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L456
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl $sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L456
    movq	-24(%rbp), %rdx
    movq $sU + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L456
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
    je	L457
L456:
    call	abort
L457:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movzbl $sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, $sU(%rip)
    movq $sU(%rip), %rax
    movq $sU + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3U
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sU(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L458
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl $sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L458
    movzbl $sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L458
    movq	-24(%rbp), %rdx
    movq $sU + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L458
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L460
L458:
    call	abort
L460:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sV,4,2
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
    movl $sV(%rip), %eax
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
    movl $sV(%rip), %eax
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
    movzbl $sV + 1(%rip), %eax
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
    movzbl $sV + 1(%rip), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sV + 1(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sV + 1(%rip)
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
    jmp	L472
L473:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L472:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L473
    movzbl $sV + 1(%rip), %eax
    orl	$1, %eax
    movb	%al, $sV + 1(%rip)
    movzbl $sV + 1(%rip), %eax
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
    movzbl $sV + 1(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sV + 1(%rip)
    movl $sV(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1V
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sV + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L474
    movzbl	-48(%rbp), %edx
    movzbl $sV(%rip), %eax
    cmpb	%al, %dl
    jne	L474
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sV + 1(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L474
    movzwl	-46(%rbp), %edx
    movzwl $sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L474
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L475
L474:
    call	abort
L475:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sV + 1(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sV + 1(%rip)
    movl $sV(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2V
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sV + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L476
    movzbl	-48(%rbp), %edx
    movzbl $sV(%rip), %eax
    cmpb	%al, %dl
    jne	L476
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sV + 1(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L476
    movzwl	-46(%rbp), %edx
    movzwl $sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L476
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
    je	L477
L476:
    call	abort
L477:
    call	myrnd
    movl	%eax, -36(%rbp)
    call	myrnd
    movl	%eax, -32(%rbp)
    movl	-36(%rbp), %eax
    andl	$1, %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl $sV + 1(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, $sV + 1(%rip)
    movl $sV(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3V
    movl	%eax, -28(%rbp)
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sV + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L478
    movzbl	-48(%rbp), %edx
    movzbl $sV(%rip), %eax
    cmpb	%al, %dl
    jne	L478
    movzbl $sV + 1(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L478
    movzwl	-46(%rbp), %edx
    movzwl $sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L478
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L480
L478:
    call	abort
L480:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sW,32,32
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
    movq	32(%rbp), %rdx
    movq	%rdx, 16(%rax)
    movq	40(%rbp), %rdx
    movq	%rdx, 24(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1W
fn1W:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movl	%edi, -52(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $sW(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sW + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sW + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sW + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-52(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-32(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -32(%rbp)
    leaq	-48(%rbp), %rax
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    movq	%rax, %rdi
    call	retmeW
    addq	$32, %rsp
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L485
    call	__stack_chk_fail
L485:
    leave
    ret
    .globl	fn2W
fn2W:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movq $sW(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sW + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movq $sW + 16(%rip), %rax
    movq	%rax, -16(%rbp)
    movq $sW + 24(%rip), %rax
    movq	%rax, -8(%rbp)
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
    movzwl $sW + 16(%rip), %eax
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
    movzwl $sW + 16(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sW + 16(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sW + 16(%rip)
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
    jmp	L493
L494:
    movq	-56(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -56(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -76(%rbp)
L493:
    movl	-76(%rbp), %eax
    cmpl	$31, %eax
    jbe	L494
    fldt	$LC0(%rip)
    fstpt $sW(%rip)
    movzwl $sW + 16(%rip), %eax
    orw	$4095, %ax
    movw	%ax, $sW + 16(%rip)
    movzwl $sW + 16(%rip), %eax
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
    movzwl $sW + 16(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sW + 16(%rip)
    movq $sW(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sW + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sW + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sW + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn1W
    movl	%eax, -60(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sW + 19(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L495
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sW + 16(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L495
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sW + 16(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L495
    fldt	-48(%rbp)
    fldt $sW(%rip)
    fucomi	%st(1), %st
    jp	L502
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L495
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L496
    jmp	L495
L502:
    fstp	%st(0)
    fstp	%st(0)
L495:
    call	abort
L496:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sW + 16(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sW + 16(%rip)
    movq $sW(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sW + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sW + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sW + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn2W
    movl	%eax, -60(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sW + 19(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L497
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sW + 16(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L497
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sW + 16(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L497
    fldt	-48(%rbp)
    fldt $sW(%rip)
    fucomi	%st(1), %st
    jp	L503
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L497
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
    je	L498
    jmp	L497
L503:
    fstp	%st(0)
    fstp	%st(0)
L497:
    call	abort
L498:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sW + 16(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sW + 16(%rip)
    movq $sW(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sW + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sW + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sW + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn3W
    movl	%eax, -60(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sW + 19(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L499
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sW + 16(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L499
    movzwl $sW + 16(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-60(%rbp), %eax
    jne	L499
    fldt	-48(%rbp)
    fldt $sW(%rip)
    fucomi	%st(1), %st
    jp	L504
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L499
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L501
    jmp	L499
L504:
    fstp	%st(0)
    fstp	%st(0)
L499:
    call	abort
L501:
    nop
    addq	$72, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sX,32,32
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
    movq	32(%rbp), %rdx
    movq	%rdx, 16(%rax)
    movq	40(%rbp), %rdx
    movq	%rdx, 24(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1X
fn1X:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movl	%edi, -52(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $sX(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sX + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sX + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sX + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-52(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-48(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -48(%rbp)
    leaq	-48(%rbp), %rax
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    movq	%rax, %rdi
    call	retmeX
    addq	$32, %rsp
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L509
    call	__stack_chk_fail
L509:
    leave
    ret
    .globl	fn2X
fn2X:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movq $sX(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sX + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movq $sX + 16(%rip), %rax
    movq	%rax, -16(%rbp)
    movq $sX + 24(%rip), %rax
    movq	%rax, -8(%rbp)
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
    movzwl $sX(%rip), %eax
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
    movzwl $sX(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sX(%rip)
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
    jmp	L517
L518:
    movq	-56(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -56(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -76(%rbp)
L517:
    movl	-76(%rbp), %eax
    cmpl	$31, %eax
    jbe	L518
    fldt	$LC0(%rip)
    fstpt $sX + 16(%rip)
    movzwl $sX(%rip), %eax
    orw	$4095, %ax
    movw	%ax, $sX(%rip)
    movzwl $sX(%rip), %eax
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
    movzwl $sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sX(%rip)
    movq $sX(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sX + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sX + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sX + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn1X
    movl	%eax, -60(%rbp)
    movzbl	-45(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L519
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L519
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sX(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L519
    fldt	-32(%rbp)
    fldt $sX + 16(%rip)
    fucomi	%st(1), %st
    jp	L526
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L519
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L520
    jmp	L519
L526:
    fstp	%st(0)
    fstp	%st(0)
L519:
    call	abort
L520:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sX(%rip)
    movq $sX(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sX + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sX + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sX + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn2X
    movl	%eax, -60(%rbp)
    movzbl	-45(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L521
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L521
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sX(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L521
    fldt	-32(%rbp)
    fldt $sX + 16(%rip)
    fucomi	%st(1), %st
    jp	L527
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L521
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
    je	L522
    jmp	L521
L527:
    fstp	%st(0)
    fstp	%st(0)
L521:
    call	abort
L522:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sX(%rip)
    movq $sX(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sX + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sX + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sX + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn3X
    movl	%eax, -60(%rbp)
    movzbl	-45(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl $sX + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L523
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl $sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L523
    movzwl $sX(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-60(%rbp), %eax
    jne	L523
    fldt	-32(%rbp)
    fldt $sX + 16(%rip)
    fucomi	%st(1), %st
    jp	L528
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L523
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L525
    jmp	L523
L528:
    fstp	%st(0)
    fstp	%st(0)
L523:
    call	abort
L525:
    nop
    addq	$72, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sY,32,32
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
    movq	32(%rbp), %rdx
    movq	%rdx, 16(%rax)
    movq	40(%rbp), %rdx
    movq	%rdx, 24(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1Y
fn1Y:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movl	%edi, -52(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $sY(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sY + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sY + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sY + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-52(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	-48(%rbp), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, -48(%rbp)
    leaq	-48(%rbp), %rax
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    movq	%rax, %rdi
    call	retmeY
    addq	$32, %rsp
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L533
    call	__stack_chk_fail
L533:
    leave
    ret
    .globl	fn2Y
fn2Y:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movq $sY(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sY + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movq $sY + 16(%rip), %rax
    movq	%rax, -16(%rbp)
    movq $sY + 24(%rip), %rax
    movq	%rax, -8(%rbp)
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
    movzwl $sY(%rip), %eax
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
    movzwl $sY(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sY(%rip)
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
    jmp	L541
L542:
    movq	-56(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -56(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -76(%rbp)
L541:
    movl	-76(%rbp), %eax
    cmpl	$31, %eax
    jbe	L542
    fldt	$LC0(%rip)
    fstpt $sY + 16(%rip)
    movzwl $sY(%rip), %eax
    orw	$4095, %ax
    movw	%ax, $sY(%rip)
    movzwl $sY(%rip), %eax
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
    movzwl $sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sY(%rip)
    movq $sY(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sY + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sY + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sY + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn1Y
    movl	%eax, -60(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L543
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L543
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sY(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L543
    fldt	-32(%rbp)
    fldt $sY + 16(%rip)
    fucomi	%st(1), %st
    jp	L550
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L543
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L544
    jmp	L543
L550:
    fstp	%st(0)
    fstp	%st(0)
L543:
    call	abort
L544:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sY(%rip)
    movq $sY(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sY + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sY + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sY + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn2Y
    movl	%eax, -60(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L545
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L545
    movzwl	-48(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sY(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L545
    fldt	-32(%rbp)
    fldt $sY + 16(%rip)
    fucomi	%st(1), %st
    jp	L551
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L545
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
    je	L546
    jmp	L545
L551:
    fstp	%st(0)
    fstp	%st(0)
L545:
    call	abort
L546:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl $sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, $sY(%rip)
    movq $sY(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sY + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sY + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sY + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn3Y
    movl	%eax, -60(%rbp)
    movzwl	-46(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl $sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L547
    movl	-48(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl $sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L547
    movzwl $sY(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-60(%rbp), %eax
    jne	L547
    fldt	-32(%rbp)
    fldt $sY + 16(%rip)
    fucomi	%st(1), %st
    jp	L552
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L547
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L549
    jmp	L547
L552:
    fstp	%st(0)
    fstp	%st(0)
L547:
    call	abort
L549:
    nop
    addq	$72, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sZ,32,32
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
    movq	32(%rbp), %rdx
    movq	%rdx, 16(%rax)
    movq	40(%rbp), %rdx
    movq	%rdx, 24(%rax)
    movq	-8(%rbp), %rax
    popq	%rbp
    ret
    .globl	fn1Z
fn1Z:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$64, %rsp
    movl	%edi, -52(%rbp)
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq $sZ(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sZ + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sZ + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sZ + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movl	-52(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	-30(%rbp), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, -30(%rbp)
    leaq	-48(%rbp), %rax
    pushq	-24(%rbp)
    pushq	-32(%rbp)
    pushq	-40(%rbp)
    pushq	-48(%rbp)
    movq	%rax, %rdi
    call	retmeZ
    addq	$32, %rsp
    movzwl	-30(%rbp), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    movq	-8(%rbp), %rcx
    xorq	$40, %rcx
    je	L557
    call	__stack_chk_fail
L557:
    leave
    ret
    .globl	fn2Z
fn2Z:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -36(%rbp)
    movq $sZ(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sZ + 8(%rip), %rax
    movq	%rax, -24(%rbp)
    movq $sZ + 16(%rip), %rax
    movq	%rax, -16(%rbp)
    movq $sZ + 24(%rip), %rax
    movq	%rax, -8(%rbp)
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
    movzwl $sZ + 18(%rip), %eax
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
    movzwl $sZ + 18(%rip), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl $sZ + 18(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, $sZ + 18(%rip)
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
    jmp	L565
L566:
    movq	-56(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -56(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -76(%rbp)
L565:
    movl	-76(%rbp), %eax
    cmpl	$31, %eax
    jbe	L566
    fldt	$LC0(%rip)
    fstpt $sZ(%rip)
    movzwl $sZ + 18(%rip), %eax
    orl	$-16, %eax
    movw	%ax, $sZ + 18(%rip)
    movzwl $sZ + 18(%rip), %eax
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
    movzwl $sZ + 18(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, $sZ + 18(%rip)
    movq $sZ(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sZ + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sZ + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sZ + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn1Z
    movl	%eax, -60(%rbp)
    movl	-32(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl $sZ + 16(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L567
    movzwl	-32(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl $sZ + 16(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L567
    movzwl	-30(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movzwl $sZ + 18(%rip), %eax
    shrw	$4, %ax
    cmpw	%ax, %dx
    jne	L567
    fldt	-48(%rbp)
    fldt $sZ(%rip)
    fucomi	%st(1), %st
    jp	L574
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L567
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L568
    jmp	L567
L574:
    fstp	%st(0)
    fstp	%st(0)
L567:
    call	abort
L568:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl $sZ + 18(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, $sZ + 18(%rip)
    movq $sZ(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sZ + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sZ + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sZ + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn2Z
    movl	%eax, -60(%rbp)
    movl	-32(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl $sZ + 16(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L569
    movzwl	-32(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl $sZ + 16(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L569
    movzwl	-30(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movzwl $sZ + 18(%rip), %eax
    shrw	$4, %ax
    cmpw	%ax, %dx
    jne	L569
    fldt	-48(%rbp)
    fldt $sZ(%rip)
    fucomi	%st(1), %st
    jp	L575
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L569
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
    je	L570
    jmp	L569
L575:
    fstp	%st(0)
    fstp	%st(0)
L569:
    call	abort
L570:
    call	myrnd
    movl	%eax, -68(%rbp)
    call	myrnd
    movl	%eax, -64(%rbp)
    movl	-68(%rbp), %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl $sZ + 18(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, $sZ + 18(%rip)
    movq $sZ(%rip), %rax
    movq	%rax, -48(%rbp)
    movq $sZ + 8(%rip), %rax
    movq	%rax, -40(%rbp)
    movq $sZ + 16(%rip), %rax
    movq	%rax, -32(%rbp)
    movq $sZ + 24(%rip), %rax
    movq	%rax, -24(%rbp)
    movl	-64(%rbp), %eax
    movl	%eax, %edi
    call	fn3Z
    movl	%eax, -60(%rbp)
    movl	-32(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl $sZ + 16(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L571
    movzwl	-32(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl $sZ + 16(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L571
    movzwl $sZ + 18(%rip), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    cmpl	-60(%rbp), %eax
    jne	L571
    fldt	-48(%rbp)
    fldt $sZ(%rip)
    fucomi	%st(1), %st
    jp	L576
    fucomip	%st(1), %st
    fstp	%st(0)
    jne	L571
    movl	-68(%rbp), %edx
    movl	-64(%rbp), %eax
    addl	%edx, %eax
    andl	-72(%rbp), %eax
    cmpl	-60(%rbp), %eax
    je	L573
    jmp	L571
L576:
    fstp	%st(0)
    fstp	%st(0)
L571:
    call	abort
L573:
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
s2409:
    .long	1388815473
    .section	.rodata
LC0:
    .long	0
    .long	2818572288
    .long	16385
    .long	0
