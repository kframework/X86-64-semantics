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
    movl	sA(%rip), %eax
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
    movl	sA(%rip), %eax
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
    movzwl	sA + 2(%rip), %eax
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
    movzwl	sA + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	sA + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sA + 2(%rip)
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
    cmpl	$3, %eax
    jbe	L55
    movzwl	sA + 2(%rip), %eax
    orl	$-2, %eax
    movw	%ax, sA + 2(%rip)
    movzwl	sA + 2(%rip), %eax
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
    movzwl	sA + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sA + 2(%rip)
    movl	sA(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn1A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sA(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L56
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl	sA(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L56
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl	sA + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L56
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sA(%rip), %eax
    shrb	$6, %al
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
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	sA + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sA + 2(%rip)
    movl	sA(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn2A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sA(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L58
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl	sA(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L58
    movzwl	-46(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl	sA + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L58
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sA(%rip), %eax
    shrb	$6, %al
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
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	sA + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sA + 2(%rip)
    movl	sA(%rip), %eax
    movl	%eax, -48(%rbp)
    movl	-32(%rbp), %eax
    movl	%eax, %edi
    call	fn3A
    movl	%eax, -28(%rbp)
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sA(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L60
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl	sA(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L60
    movzwl	sA + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    cmpl	-28(%rbp), %eax
    jne	L60
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sA(%rip), %eax
    shrb	$6, %al
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
    movq	sB(%rip), %rax
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
    movq	sB(%rip), %rax
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
    movzwl	sB + 2(%rip), %eax
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
    movzwl	sB + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	sB + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sB + 2(%rip)
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
    jmp	L74
L75:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L74:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L75
    movzwl	sB + 2(%rip), %eax
    orl	$-2, %eax
    movw	%ax, sB + 2(%rip)
    movzwl	sB + 2(%rip), %eax
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
    movzwl	sB + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sB + 2(%rip)
    movq	sB(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sB(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L76
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sB(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L76
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl	sB + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L76
    movl	-28(%rbp), %edx
    movl	sB + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L76
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
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
    movzwl	sB + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sB + 2(%rip)
    movq	sB(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sB(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L78
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sB(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L78
    movzwl	-30(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl	sB + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L78
    movl	-28(%rbp), %edx
    movl	sB + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L78
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
    je	L79
L78:
    call	abort
L79:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	sB + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sB + 2(%rip)
    movq	sB(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3B
    movl	%eax, -36(%rbp)
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sB(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L80
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sB(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L80
    movzwl	sB + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    cmpl	-36(%rbp), %eax
    jne	L80
    movl	-28(%rbp), %edx
    movl	sB + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L80
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L82
L80:
    call	abort
L82:
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
    movq	sC(%rip), %rax
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
    movq	sC(%rip), %rax
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
    movzwl	sC + 6(%rip), %eax
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
    movzwl	sC + 6(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	sC + 6(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sC + 6(%rip)
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
    jmp	L94
L95:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L94:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L95
    movzwl	sC + 6(%rip), %eax
    orl	$-2, %eax
    movw	%ax, sC + 6(%rip)
    movzwl	sC + 6(%rip), %eax
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
    movzwl	sC + 6(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sC + 6(%rip)
    movq	sC(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn1C
    movl	%eax, -36(%rbp)
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sC + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L96
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sC + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L96
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl	sC + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L96
    movl	-32(%rbp), %edx
    movl	sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L96
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
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
    movzwl	sC + 6(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sC + 6(%rip)
    movq	sC(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn2C
    movl	%eax, -36(%rbp)
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sC + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L98
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sC + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L98
    movzwl	-26(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    movzwl	sC + 6(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L98
    movl	-32(%rbp), %edx
    movl	sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L98
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
    je	L99
L98:
    call	abort
L99:
    call	myrnd
    movl	%eax, -44(%rbp)
    call	myrnd
    movl	%eax, -40(%rbp)
    movl	-44(%rbp), %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	sC + 6(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, sC + 6(%rip)
    movq	sC(%rip), %rax
    movq	%rax, -32(%rbp)
    movl	-40(%rbp), %eax
    movl	%eax, %edi
    call	fn3C
    movl	%eax, -36(%rbp)
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sC + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L100
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sC + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L100
    movzwl	sC + 6(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    cmpl	-36(%rbp), %eax
    jne	L100
    movl	-32(%rbp), %edx
    movl	sC(%rip), %eax
    cmpl	%eax, %edx
    jne	L100
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L102
L100:
    call	abort
L102:
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
    jmp	L114
L115:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L114:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L115
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
    jne	L116
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L116
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L116
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L116
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
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
    jne	L118
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L118
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L118
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L118
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
    je	L119
L118:
    call	abort
L119:
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
    jne	L120
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sD(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L120
    movl	sD + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	-36(%rbp), %eax
    jne	L120
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sD(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L120
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
    andl	-48(%rbp), %eax
    cmpl	-36(%rbp), %eax
    je	L122
L120:
    call	abort
L122:
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
    jmp	L134
L135:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L134:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L135
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
    jne	L136
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L136
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L136
    movq	-32(%rbp), %rdx
    movq	sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L136
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    jne	L138
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L138
    movl	-20(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L138
    movq	-32(%rbp), %rdx
    movq	sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L138
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
    je	L139
L138:
    call	abort
L139:
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
    jne	L140
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sE + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L140
    movl	sE + 12(%rip), %eax
    shrl	$3, %eax
    cmpl	-44(%rbp), %eax
    jne	L140
    movq	-32(%rbp), %rdx
    movq	sE(%rip), %rax
    cmpq	%rax, %rdx
    jne	L140
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L142
L140:
    call	abort
L142:
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
    jmp	L154
L155:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L154:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L155
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
    jne	L156
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L156
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L156
    movq	-24(%rbp), %rdx
    movq	sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L156
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    jne	L158
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L158
    movl	-28(%rbp), %eax
    shrl	$3, %eax
    movl	%eax, %edx
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	%eax, %edx
    jne	L158
    movq	-24(%rbp), %rdx
    movq	sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L158
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
    je	L159
L158:
    call	abort
L159:
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
    jne	L160
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sF(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L160
    movl	sF + 4(%rip), %eax
    shrl	$3, %eax
    cmpl	-44(%rbp), %eax
    jne	L160
    movq	-24(%rbp), %rdx
    movq	sF + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L160
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L162
L160:
    call	abort
L162:
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
    movq	sG(%rip), %rax
    movq	sG + 8(%rip), %rdx
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
    movq	sG(%rip), %rax
    movq	sG + 8(%rip), %rdx
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
    movzbl	sG + 3(%rip), %eax
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
    movzbl	sG + 3(%rip), %eax
    shrb	%al
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	sG + 3(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, sG + 3(%rip)
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
    jmp	L174
L175:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L174:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L175
    movzbl	sG + 3(%rip), %eax
    orl	$-2, %eax
    movb	%al, sG + 3(%rip)
    movzbl	sG + 3(%rip), %eax
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
    movzbl	sG + 3(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, sG + 3(%rip)
    movq	sG(%rip), %rax
    movq	sG + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1G
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sG(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L176
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sG(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L176
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sG + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L176
    movq	-24(%rbp), %rdx
    movq	sG + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L176
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    movzbl	sG + 3(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, sG + 3(%rip)
    movq	sG(%rip), %rax
    movq	sG + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2G
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sG(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L178
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sG(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L178
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sG + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L178
    movq	-24(%rbp), %rdx
    movq	sG + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L178
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
    je	L179
L178:
    call	abort
L179:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andl	$127, %eax
    leal	(%rax,%rax), %edx
    movzbl	sG + 3(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movb	%al, sG + 3(%rip)
    movq	sG(%rip), %rax
    movq	sG + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3G
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sG(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L180
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sG(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L180
    movzbl	sG + 3(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L180
    movq	-24(%rbp), %rdx
    movq	sG + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L180
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L182
L180:
    call	abort
L182:
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
    movq	sH(%rip), %rax
    movq	sH + 8(%rip), %rdx
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
    movq	sH(%rip), %rax
    movq	sH + 8(%rip), %rdx
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
    movzwl	sH + 2(%rip), %eax
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
    movzwl	sH + 2(%rip), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	sH + 2(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, sH + 2(%rip)
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
    jmp	L194
L195:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L194:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L195
    movzwl	sH + 2(%rip), %eax
    orl	$-128, %eax
    movw	%ax, sH + 2(%rip)
    movzwl	sH + 2(%rip), %eax
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
    movzwl	sH + 2(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, sH + 2(%rip)
    movq	sH(%rip), %rax
    movq	sH + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1H
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sH(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L196
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sH(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L196
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sH + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L196
    movq	-24(%rbp), %rdx
    movq	sH + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L196
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    movzwl	sH + 2(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, sH + 2(%rip)
    movq	sH(%rip), %rax
    movq	sH + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2H
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sH(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L198
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sH(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L198
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sH + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L198
    movq	-24(%rbp), %rdx
    movq	sH + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L198
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
    je	L199
L198:
    call	abort
L199:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	sH + 2(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, sH + 2(%rip)
    movq	sH(%rip), %rax
    movq	sH + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3H
    movl	%eax, -44(%rbp)
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sH(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L200
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sH(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L200
    movzwl	sH + 2(%rip), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L200
    movq	-24(%rbp), %rdx
    movq	sH + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L200
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L202
L200:
    call	abort
L202:
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
    movq	sI(%rip), %rax
    movq	sI + 8(%rip), %rdx
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
    movq	sI(%rip), %rax
    movq	sI + 8(%rip), %rdx
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
    movzwl	sI(%rip), %eax
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
    movzwl	sI(%rip), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, sI(%rip)
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
    jmp	L214
L215:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L214:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L215
    movzwl	sI(%rip), %eax
    orl	$-128, %eax
    movw	%ax, sI(%rip)
    movzwl	sI(%rip), %eax
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
    movzwl	sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, sI(%rip)
    movq	sI(%rip), %rax
    movq	sI + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L216
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L216
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sI(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L216
    movq	-24(%rbp), %rdx
    movq	sI + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L216
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    movzwl	sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, sI(%rip)
    movq	sI(%rip), %rax
    movq	sI + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L218
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sI(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L218
    movzwl	-32(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sI(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L218
    movq	-24(%rbp), %rdx
    movq	sI + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L218
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
    je	L219
L218:
    call	abort
L219:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$511, %ax
    sall	$7, %eax
    movl	%eax, %edx
    movzwl	sI(%rip), %eax
    andl	$127, %eax
    orl	%edx, %eax
    movw	%ax, sI(%rip)
    movq	sI(%rip), %rax
    movq	sI + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    movzwl	sI(%rip), %eax
    shrw	$7, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L220
    movq	-24(%rbp), %rdx
    movq	sI + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L220
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L222
L220:
    call	abort
L222:
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
    jmp	L234
L235:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L234:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L235
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
    jne	L236
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl	sJ(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L236
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L236
    movzwl	-46(%rbp), %edx
    movzwl	sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L236
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
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
    jne	L238
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl	sJ(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L238
    movzbl	-47(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L238
    movzwl	-46(%rbp), %edx
    movzwl	sJ + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L238
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
    je	L239
L238:
    call	abort
L239:
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
    jne	L240
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl	sJ(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L240
    movzbl	sJ + 1(%rip), %eax
    shrb	%al
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
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
    je	L242
L240:
    call	abort
L242:
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
    jmp	L254
L255:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L254:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L255
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
    movl	%eax, %edx
    movzwl	sK + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L256
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl	sK(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L256
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L256
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L256
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
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
    movl	%eax, %edx
    movzwl	sK + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L258
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl	sK(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L258
    movzbl	-48(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L258
    movzbl	-48(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sK(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L258
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
    je	L259
L258:
    call	abort
L259:
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
    movl	%eax, %edx
    movzwl	sK + 2(%rip), %eax
    shrw	%ax
    cmpw	%ax, %dx
    jne	L260
    movl	-48(%rbp), %eax
    shrl	$7, %eax
    movl	%eax, %edx
    andw	$1023, %dx
    movl	sK(%rip), %eax
    shrl	$7, %eax
    andw	$1023, %ax
    cmpw	%ax, %dx
    jne	L260
    movzbl	sK(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
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
    je	L262
L260:
    call	abort
L262:
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
    jmp	L274
L275:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L274:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L275
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
    jne	L276
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L276
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L276
    movl	-28(%rbp), %edx
    movl	sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L276
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
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
    jne	L278
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L278
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L278
    movl	-28(%rbp), %edx
    movl	sL + 4(%rip), %eax
    cmpl	%eax, %edx
    jne	L278
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
    je	L279
L278:
    call	abort
L279:
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
    jne	L280
    movl	-32(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sL(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L280
    movzbl	sL(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
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
    je	L282
L280:
    call	abort
L282:
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
    jmp	L294
L295:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L294:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L295
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
    jne	L296
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L296
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L296
    movl	-32(%rbp), %edx
    movl	sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L296
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
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
    jne	L298
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L298
    movzbl	-28(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L298
    movl	-32(%rbp), %edx
    movl	sM(%rip), %eax
    cmpl	%eax, %edx
    jne	L298
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
    je	L299
L298:
    call	abort
L299:
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
    jne	L300
    movl	-28(%rbp), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sM + 4(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L300
    movzbl	sM + 4(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
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
    je	L302
L300:
    call	abort
L302:
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
    jmp	L314
L315:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -52(%rbp)
L314:
    movl	-52(%rbp), %eax
    cmpl	$7, %eax
    jbe	L315
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
    jne	L316
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L316
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L316
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L316
    movl	-44(%rbp), %edx
    movl	-40(%rbp), %eax
    addl	%edx, %eax
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
    jne	L318
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L318
    movzwl	-32(%rbp), %eax
    shrw	$6, %ax
    movl	%eax, %edx
    andl	$63, %edx
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L318
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sN(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L318
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
    je	L319
L318:
    call	abort
L319:
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
    jne	L320
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sN(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L320
    movzwl	sN(%rip), %eax
    shrw	$6, %ax
    andl	$63, %eax
    movzbl	%al, %eax
    cmpl	-36(%rbp), %eax
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
    je	L322
L320:
    call	abort
L322:
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
    jmp	L334
L335:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L334:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L335
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
    jne	L336
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L336
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L336
    movq	-32(%rbp), %rdx
    movq	sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L336
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    jne	L338
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L338
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L338
    movq	-32(%rbp), %rdx
    movq	sO(%rip), %rax
    cmpq	%rax, %rdx
    jne	L338
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
    je	L339
L338:
    call	abort
L339:
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
    jne	L340
    movq	-24(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sO + 8(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L340
    movzwl	sO + 8(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
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
    je	L342
L340:
    call	abort
L342:
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
    jmp	L354
L355:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L354:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L355
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
    jne	L356
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L356
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L356
    movq	-24(%rbp), %rdx
    movq	sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L356
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    jne	L358
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L358
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L358
    movq	-24(%rbp), %rdx
    movq	sP + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L358
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
    je	L359
L358:
    call	abort
L359:
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
    jne	L360
    movq	-32(%rbp), %rax
    shrq	$12, %rax
    movl	%eax, %edx
    andl	$8388607, %edx
    movq	sP(%rip), %rax
    shrq	$12, %rax
    andl	$8388607, %eax
    cmpl	%eax, %edx
    jne	L360
    movzwl	sP(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
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
    je	L362
L360:
    call	abort
L362:
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
    movq	sQ(%rip), %rax
    movq	sQ + 8(%rip), %rdx
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
    movq	sQ(%rip), %rax
    movq	sQ + 8(%rip), %rdx
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
    jmp	L374
L375:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L374:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L375
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
    movq	sQ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1Q
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sQ + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L376
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sQ(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L376
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L376
    movq	-24(%rbp), %rdx
    movq	sQ + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L376
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    movzwl	sQ(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sQ(%rip)
    movq	sQ(%rip), %rax
    movq	sQ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2Q
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sQ + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L378
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sQ(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L378
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L378
    movq	-24(%rbp), %rdx
    movq	sQ + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L378
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
    je	L379
L378:
    call	abort
L379:
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
    movq	sQ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3Q
    movl	%eax, -44(%rbp)
    movzbl	-29(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    movzbl	sQ + 3(%rip), %eax
    shrb	%al
    cmpb	%al, %dl
    jne	L380
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sQ(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L380
    movzwl	sQ(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L380
    movq	-24(%rbp), %rdx
    movq	sQ + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L380
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L382
L380:
    call	abort
L382:
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
    movq	sR(%rip), %rax
    movq	sR + 8(%rip), %rdx
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
    movq	sR(%rip), %rax
    movq	sR + 8(%rip), %rdx
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
    movzwl	sR(%rip), %eax
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
    movzwl	sR(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sR(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sR(%rip)
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
    jmp	L394
L395:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L394:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L395
    movzwl	sR(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sR(%rip)
    movzwl	sR(%rip), %eax
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
    movzwl	sR(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sR(%rip)
    movq	sR(%rip), %rax
    movq	sR + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1R
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sR + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L396
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sR(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L396
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sR(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L396
    movq	-24(%rbp), %rdx
    movq	sR + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L396
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    movzwl	sR(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sR(%rip)
    movq	sR(%rip), %rax
    movq	sR + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2R
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sR + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L398
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sR(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L398
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sR(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L398
    movq	-24(%rbp), %rdx
    movq	sR + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L398
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
    je	L399
L398:
    call	abort
L399:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sR(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sR(%rip)
    movq	sR(%rip), %rax
    movq	sR + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3R
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sR + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L400
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sR(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L400
    movzwl	sR(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L400
    movq	-24(%rbp), %rdx
    movq	sR + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L400
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L402
L400:
    call	abort
L402:
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
    movq	sS(%rip), %rax
    movq	sS + 8(%rip), %rdx
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
    movq	sS(%rip), %rax
    movq	sS + 8(%rip), %rdx
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
    jmp	L414
L415:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L414:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L415
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
    movq	sS + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L416
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L416
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L416
    movq	-24(%rbp), %rdx
    movq	sS + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L416
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    movzbl	sS(%rip), %eax
    andl	$-2, %eax
    orl	%edx, %eax
    movb	%al, sS(%rip)
    movq	sS(%rip), %rax
    movq	sS + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L418
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L418
    movzbl	-32(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L418
    movq	-24(%rbp), %rdx
    movq	sS + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L418
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
    je	L419
L418:
    call	abort
L419:
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
    movq	sS + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L420
    movzbl	-32(%rbp), %eax
    shrb	%al
    movl	%eax, %edx
    andl	$63, %edx
    movzbl	sS(%rip), %eax
    shrb	%al
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L420
    movzbl	sS(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L420
    movq	-24(%rbp), %rdx
    movq	sS + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L420
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L422
L420:
    call	abort
L422:
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
    jmp	L434
L435:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L434:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L435
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
    jne	L436
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl	sT(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L436
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L436
    movzwl	-46(%rbp), %edx
    movzwl	sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L436
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
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
    jne	L438
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl	sT(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L438
    movzbl	-48(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L438
    movzwl	-46(%rbp), %edx
    movzwl	sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L438
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
    je	L439
L438:
    call	abort
L439:
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
    jne	L440
    movzwl	-48(%rbp), %eax
    shrw	%ax
    movl	%eax, %edx
    andb	$255, %dh
    movzwl	sT(%rip), %eax
    shrw	%ax
    andb	$255, %ah
    cmpb	%al, %dl
    jne	L440
    movzbl	sT(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L440
    movzwl	-46(%rbp), %edx
    movzwl	sT + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L440
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L442
L440:
    call	abort
L442:
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
    movq	sU(%rip), %rax
    movq	sU + 8(%rip), %rdx
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
    movq	sU(%rip), %rax
    movq	sU + 8(%rip), %rdx
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
    jmp	L454
L455:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L454:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L455
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
    movq	sU + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L456
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L456
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L456
    movq	-24(%rbp), %rdx
    movq	sU + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L456
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
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
    movzbl	sU(%rip), %eax
    andl	$-65, %eax
    orl	%edx, %eax
    movb	%al, sU(%rip)
    movq	sU(%rip), %rax
    movq	sU + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L458
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L458
    movzbl	-32(%rbp), %eax
    shrb	$6, %al
    movl	%eax, %edx
    andl	$1, %edx
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L458
    movq	-24(%rbp), %rdx
    movq	sU + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L458
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
    je	L459
L458:
    call	abort
L459:
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
    movq	sU + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L460
    movzbl	-32(%rbp), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	sU(%rip), %eax
    andl	$63, %eax
    cmpb	%al, %dl
    jne	L460
    movzbl	sU(%rip), %eax
    shrb	$6, %al
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-44(%rbp), %eax
    jne	L460
    movq	-24(%rbp), %rdx
    movq	sU + 8(%rip), %rax
    cmpq	%rax, %rdx
    jne	L460
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L462
L460:
    call	abort
L462:
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
    jmp	L474
L475:
    movq	-24(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -24(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -44(%rbp)
L474:
    movl	-44(%rbp), %eax
    cmpl	$3, %eax
    jbe	L475
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
    jne	L476
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L476
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L476
    movzwl	-46(%rbp), %edx
    movzwl	sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L476
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
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
    jne	L478
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L478
    movzbl	-47(%rbp), %eax
    andl	$1, %eax
    movl	%eax, %edx
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    cmpb	%al, %dl
    jne	L478
    movzwl	-46(%rbp), %edx
    movzwl	sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L478
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
    je	L479
L478:
    call	abort
L479:
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
    jne	L480
    movzbl	-48(%rbp), %edx
    movzbl	sV(%rip), %eax
    cmpb	%al, %dl
    jne	L480
    movzbl	sV + 1(%rip), %eax
    andl	$1, %eax
    movzbl	%al, %eax
    cmpl	-28(%rbp), %eax
    jne	L480
    movzwl	-46(%rbp), %edx
    movzwl	sV + 2(%rip), %eax
    cmpw	%ax, %dx
    jne	L480
    movl	-36(%rbp), %edx
    movl	-32(%rbp), %eax
    addl	%edx, %eax
    andl	-40(%rbp), %eax
    cmpl	-28(%rbp), %eax
    je	L482
L480:
    call	abort
L482:
    nop
    addq	$40, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sW,16,16
    .globl	retmeW
retmeW:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    vmovq	%xmm0, %rsi
    movq	%rdi, %rcx
    movl	$0, %eax
    movl	$0, %edx
    movq	%rsi, %rax
    movq	%rcx, %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rax
    movq	-24(%rbp), %rdx
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rdx, %rax
    vmovq	%rcx, %xmm0
    popq	%rbx
    popq	%rbp
    ret
    .globl	fn1W
fn1W:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sW(%rip), %rax
    movq	sW + 8(%rip), %rdx
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
    vmovq	%rdx, %xmm0
    movq	%rax, %rdi
    call	retmeW
    vmovq	%xmm0, %rdx
    movq	%rdx, -16(%rbp)
    movq	%rax, -8(%rbp)
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
    movq	sW + 8(%rip), %rdx
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
    .globl	retitW
retitW:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	sW + 8(%rip), %eax
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
    movzwl	sW + 8(%rip), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sW + 8(%rip)
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
    jmp	L494
L495:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L494:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L495
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, sW(%rip)
    movzwl	sW + 8(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sW + 8(%rip)
    movzwl	sW + 8(%rip), %eax
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
    movzwl	sW + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sW + 8(%rip)
    movq	sW(%rip), %rax
    movq	sW + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L496
    movl	-24(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sW + 8(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L496
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L496
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sW(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L496
    vucomisd	%xmm1, %xmm0
    jne	L496
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L497
L496:
    call	abort
L497:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sW + 8(%rip)
    movq	sW(%rip), %rax
    movq	sW + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L498
    movl	-24(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sW + 8(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L498
    movzwl	-24(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 8(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L498
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sW(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L498
    vucomisd	%xmm1, %xmm0
    jne	L498
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
    je	L499
L498:
    call	abort
L499:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sW + 8(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sW + 8(%rip)
    movq	sW(%rip), %rax
    movq	sW + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L500
    movl	-24(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sW + 8(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L500
    movzwl	sW + 8(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L500
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sW(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L500
    vucomisd	%xmm1, %xmm0
    jne	L500
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L502
L500:
    call	abort
L502:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sX,16,16
    .globl	retmeX
retmeX:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, %rax
    vmovq	%xmm0, %rcx
    movq	%rcx, %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rax
    movq	-24(%rbp), %rdx
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movq	%rcx, %rax
    movq	%rdi, %rdx
    vmovq	%rdx, %xmm0
    popq	%rbx
    popq	%rbp
    ret
    .globl	fn1X
fn1X:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sX(%rip), %rax
    movq	sX + 8(%rip), %rdx
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
    vmovq	%rax, %xmm0
    call	retmeX
    movq	%rax, %rdx
    vmovq	%xmm0, %rax
    movq	%rdx, -16(%rbp)
    movq	%rax, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2X
fn2X:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sX(%rip), %rax
    movq	sX + 8(%rip), %rdx
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
    subq	$56, %rsp
    movq	$sX, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L514
L515:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L514:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L515
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, sX + 8(%rip)
    movzwl	sX(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sX(%rip)
    movzwl	sX(%rip), %eax
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
    movzwl	sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sX(%rip)
    movq	sX(%rip), %rax
    movq	sX + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L516
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L516
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L516
    vmovsd	-24(%rbp), %xmm0
    vmovsd	sX + 8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L516
    vucomisd	%xmm1, %xmm0
    jne	L516
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L517
L516:
    call	abort
L517:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sX(%rip)
    movq	sX(%rip), %rax
    movq	sX + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L518
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L518
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L518
    vmovsd	-24(%rbp), %xmm0
    vmovsd	sX + 8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L518
    vucomisd	%xmm1, %xmm0
    jne	L518
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
    je	L519
L518:
    call	abort
L519:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sX(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sX(%rip)
    movq	sX(%rip), %rax
    movq	sX + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
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
    jne	L520
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$8191, %dx
    movl	sX(%rip), %eax
    shrl	$12, %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L520
    movzwl	sX(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L520
    vmovsd	-24(%rbp), %xmm0
    vmovsd	sX + 8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L520
    vucomisd	%xmm1, %xmm0
    jne	L520
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L522
L520:
    call	abort
L522:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sY,16,16
    .globl	retmeY
retmeY:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    movq	%rdi, %rax
    vmovq	%xmm0, %rcx
    movq	%rcx, %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rax
    movq	-24(%rbp), %rdx
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rax, %rsi
    movq	%rdx, %rdi
    movq	%rcx, %rax
    movq	%rdi, %rdx
    vmovq	%rdx, %xmm0
    popq	%rbx
    popq	%rbp
    ret
    .globl	fn1Y
fn1Y:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sY(%rip), %rax
    movq	sY + 8(%rip), %rdx
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
    vmovq	%rax, %xmm0
    call	retmeY
    movq	%rax, %rdx
    vmovq	%xmm0, %rax
    movq	%rdx, -16(%rbp)
    movq	%rax, -8(%rbp)
    movzwl	-16(%rbp), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    leave
    ret
    .globl	fn2Y
fn2Y:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -20(%rbp)
    movq	sY(%rip), %rax
    movq	sY + 8(%rip), %rdx
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
    subq	$56, %rsp
    movq	$sY, -40(%rbp)
    movl	$0, -60(%rbp)
    jmp	L534
L535:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L534:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L535
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, sY + 8(%rip)
    movzwl	sY(%rip), %eax
    orw	$4095, %ax
    movw	%ax, sY(%rip)
    movzwl	sY(%rip), %eax
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
    movzwl	sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sY(%rip)
    movq	sY(%rip), %rax
    movq	sY + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1Y
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L536
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L536
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L536
    vmovsd	-24(%rbp), %xmm0
    vmovsd	sY + 8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L536
    vucomisd	%xmm1, %xmm0
    jne	L536
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L537
L536:
    call	abort
L537:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sY(%rip)
    movq	sY(%rip), %rax
    movq	sY + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2Y
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L538
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L538
    movzwl	-32(%rbp), %eax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    cmpw	%ax, %dx
    jne	L538
    vmovsd	-24(%rbp), %xmm0
    vmovsd	sY + 8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L538
    vucomisd	%xmm1, %xmm0
    jne	L538
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
    je	L539
L538:
    call	abort
L539:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    andw	$4095, %ax
    movl	%eax, %edx
    movzwl	sY(%rip), %eax
    andw	$-4096, %ax
    orl	%edx, %eax
    movw	%ax, sY(%rip)
    movq	sY(%rip), %rax
    movq	sY + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3Y
    movl	%eax, -44(%rbp)
    movzwl	-30(%rbp), %eax
    shrw	$7, %ax
    movl	%eax, %edx
    movzwl	sY + 2(%rip), %eax
    shrw	$7, %ax
    cmpw	%ax, %dx
    jne	L540
    movl	-32(%rbp), %eax
    shrl	$12, %eax
    movl	%eax, %edx
    andw	$2047, %dx
    movl	sY(%rip), %eax
    shrl	$12, %eax
    andw	$2047, %ax
    cmpw	%ax, %dx
    jne	L540
    movzwl	sY(%rip), %eax
    andw	$4095, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L540
    vmovsd	-24(%rbp), %xmm0
    vmovsd	sY + 8(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L540
    vucomisd	%xmm1, %xmm0
    jne	L540
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L542
L540:
    call	abort
L542:
    nop
    addq	$56, %rsp
    popq	%rbx
    popq	%rbp
    ret
    .comm	sZ,16,16
    .globl	retmeZ
retmeZ:
    pushq	%rbp
    movq	%rsp, %rbp
    pushq	%rbx
    vmovq	%xmm0, %rsi
    movq	%rdi, %rcx
    movl	$0, %eax
    movl	$0, %edx
    movq	%rsi, %rax
    movq	%rcx, %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movq	-32(%rbp), %rax
    movq	-24(%rbp), %rdx
    movq	%rax, %rcx
    movq	%rdx, %rbx
    movq	%rdx, %rax
    vmovq	%rcx, %xmm0
    popq	%rbx
    popq	%rbp
    ret
    .globl	fn1Z
fn1Z:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movl	%edi, -20(%rbp)
    movq	sZ(%rip), %rax
    movq	sZ + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
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
    movq	-8(%rbp), %rax
    vmovq	%rdx, %xmm0
    movq	%rax, %rdi
    call	retmeZ
    vmovq	%xmm0, %rdx
    movq	%rdx, -16(%rbp)
    movq	%rax, -8(%rbp)
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
    movq	sZ + 8(%rip), %rdx
    movq	%rax, -16(%rbp)
    movq	%rdx, -8(%rbp)
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
    movzwl	sZ + 10(%rip), %eax
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
    movzwl	sZ + 10(%rip), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	sZ + 10(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, sZ + 10(%rip)
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
    jmp	L554
L555:
    movq	-40(%rbp), %rbx
    leaq	1(%rbx), %rax
    movq	%rax, -40(%rbp)
    call	myrnd
    movb	%al, (%rbx)
    addl	$1, -60(%rbp)
L554:
    movl	-60(%rbp), %eax
    cmpl	$15, %eax
    jbe	L555
    vmovsd	LC0(%rip), %xmm0
    vmovsd	%xmm0, sZ(%rip)
    movzwl	sZ + 10(%rip), %eax
    orl	$-16, %eax
    movw	%ax, sZ + 10(%rip)
    movzwl	sZ + 10(%rip), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    movl	%eax, -56(%rbp)
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	sZ + 10(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, sZ + 10(%rip)
    movq	sZ(%rip), %rax
    movq	sZ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn1Z
    movl	%eax, -44(%rbp)
    movl	-24(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl	sZ + 8(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L556
    movzwl	-24(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl	sZ + 8(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L556
    movzwl	-22(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movzwl	sZ + 10(%rip), %eax
    shrw	$4, %ax
    cmpw	%ax, %dx
    jne	L556
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sZ(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L556
    vucomisd	%xmm1, %xmm0
    jne	L556
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L557
L556:
    call	abort
L557:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	sZ + 10(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, sZ + 10(%rip)
    movq	sZ(%rip), %rax
    movq	sZ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn2Z
    movl	%eax, -44(%rbp)
    movl	-24(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl	sZ + 8(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L558
    movzwl	-24(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl	sZ + 8(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L558
    movzwl	-22(%rbp), %eax
    shrw	$4, %ax
    movl	%eax, %edx
    movzwl	sZ + 10(%rip), %eax
    shrw	$4, %ax
    cmpw	%ax, %dx
    jne	L558
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sZ(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L558
    vucomisd	%xmm1, %xmm0
    jne	L558
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
    je	L559
L558:
    call	abort
L559:
    call	myrnd
    movl	%eax, -52(%rbp)
    call	myrnd
    movl	%eax, -48(%rbp)
    movl	-52(%rbp), %eax
    andw	$4095, %ax
    sall	$4, %eax
    movl	%eax, %edx
    movzwl	sZ + 10(%rip), %eax
    andl	$15, %eax
    orl	%edx, %eax
    movw	%ax, sZ + 10(%rip)
    movq	sZ(%rip), %rax
    movq	sZ + 8(%rip), %rdx
    movq	%rax, -32(%rbp)
    movq	%rdx, -24(%rbp)
    movl	-48(%rbp), %eax
    movl	%eax, %edi
    call	fn3Z
    movl	%eax, -44(%rbp)
    movl	-24(%rbp), %eax
    shrl	$13, %eax
    movl	%eax, %edx
    andl	$127, %edx
    movl	sZ + 8(%rip), %eax
    shrl	$13, %eax
    andl	$127, %eax
    cmpb	%al, %dl
    jne	L560
    movzwl	-24(%rbp), %eax
    andw	$8191, %ax
    movl	%eax, %edx
    movzwl	sZ + 8(%rip), %eax
    andw	$8191, %ax
    cmpw	%ax, %dx
    jne	L560
    movzwl	sZ + 10(%rip), %eax
    shrw	$4, %ax
    movzwl	%ax, %eax
    cmpl	-44(%rbp), %eax
    jne	L560
    vmovsd	-32(%rbp), %xmm0
    vmovsd	sZ(%rip), %xmm1
    vucomisd	%xmm1, %xmm0
    jp	L560
    vucomisd	%xmm1, %xmm0
    jne	L560
    movl	-52(%rbp), %edx
    movl	-48(%rbp), %eax
    addl	%edx, %eax
    andl	-56(%rbp), %eax
    cmpl	-44(%rbp), %eax
    je	L562
L560:
    call	abort
L562:
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
