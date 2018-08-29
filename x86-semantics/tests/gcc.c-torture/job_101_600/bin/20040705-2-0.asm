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
    .comm	b,16,16
    .comm	c,16,16
    .comm	d,16,16
    .globl	ret1
ret1:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	ret2
ret2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	ret3
ret3:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	ret4
ret4:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	ret5
ret5:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	ret6
ret6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	c(%rip), %eax
    shrl	$6, %eax
    popq	%rbp
    ret
    .globl	ret7
ret7:
    pushq	%rbp
    movq	%rsp, %rbp
    movzwl	d(%rip), %eax
    movzwl	%ax, %eax
    popq	%rbp
    ret
    .globl	ret8
ret8:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	d + 2(%rip), %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	ret9
ret9:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	d + 3(%rip), %eax
    movzbl	%al, %eax
    popq	%rbp
    ret
    .globl	fn1_1
fn1_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_1
fn2_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_1
fn3_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_1
fn4_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_1
fn5_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_1
fn6_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    addl	%edx, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_1
fn7_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    movl	-4(%rbp), %edx
    addl	%edx, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_1
fn8_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    movl	-4(%rbp), %edx
    addl	%edx, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_1
fn9_1:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    movl	-4(%rbp), %edx
    addl	%edx, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_2
fn1_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    addl	$1, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_2
fn2_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    addl	$1, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_2
fn3_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    addl	$1, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_2
fn4_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    addl	$1, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_2
fn5_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    addl	$1, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_2
fn6_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    addl	$1, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_2
fn7_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    addl	$1, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_2
fn8_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    addl	$1, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_2
fn9_2:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    addl	$1, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_3
fn1_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    addl	$1, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_3
fn2_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    addl	$1, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_3
fn3_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    addl	$1, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_3
fn4_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    addl	$1, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_3
fn5_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    addl	$1, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_3
fn6_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    addl	$1, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_3
fn7_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    addl	$1, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_3
fn8_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    addl	$1, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_3
fn9_3:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    addl	$1, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_4
fn1_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_4
fn2_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_4
fn3_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_4
fn4_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_4
fn5_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_4
fn6_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    subl	-4(%rbp), %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_4
fn7_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    movl	-4(%rbp), %edx
    subl	%edx, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_4
fn8_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    movl	-4(%rbp), %edx
    subl	%edx, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_4
fn9_4:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    movl	-4(%rbp), %edx
    subl	%edx, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_5
fn1_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    addl	$63, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_5
fn2_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    addw	$2047, %ax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_5
fn3_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    addw	$32767, %ax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_5
fn4_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    addl	$31, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_5
fn5_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    addl	$1, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_5
fn6_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    addl	$67108863, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_5
fn7_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    subl	$1, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_5
fn8_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    subl	$1, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_5
fn9_5:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    subl	$1, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_6
fn1_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    addl	$63, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_6
fn2_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    addw	$2047, %ax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_6
fn3_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    addw	$32767, %ax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_6
fn4_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    addl	$31, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_6
fn5_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    addl	$1, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_6
fn6_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    addl	$67108863, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_6
fn7_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    subl	$1, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_6
fn8_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    subl	$1, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_6
fn9_6:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    subl	$1, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_7
fn1_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    andl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_7
fn2_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    andl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_7
fn3_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    andl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_7
fn4_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    andl	%edx, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_7
fn5_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    andl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_7
fn6_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    andl	-4(%rbp), %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_7
fn7_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    movl	-4(%rbp), %edx
    andl	%edx, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_7
fn8_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    movl	-4(%rbp), %edx
    andl	%edx, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_7
fn9_7:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    movl	-4(%rbp), %edx
    andl	%edx, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_8
fn1_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    orl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_8
fn2_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    orl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_8
fn3_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    orl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_8
fn4_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    orl	%edx, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_8
fn5_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    orl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_8
fn6_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    orl	-4(%rbp), %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_8
fn7_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    movl	-4(%rbp), %edx
    orl	%edx, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_8
fn8_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %edx
    movl	-4(%rbp), %eax
    orl	%edx, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_8
fn9_8:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %edx
    movl	-4(%rbp), %eax
    orl	%edx, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_9
fn1_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    xorl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_9
fn2_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    xorl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_9
fn3_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    xorl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_9
fn4_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    xorl	%edx, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_9
fn5_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movl	%eax, %edx
    movl	-4(%rbp), %eax
    xorl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_9
fn6_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    xorl	-4(%rbp), %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_9
fn7_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    movl	-4(%rbp), %edx
    xorl	%edx, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_9
fn8_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %edx
    movl	-4(%rbp), %eax
    xorl	%edx, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_9
fn9_9:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %edx
    movl	-4(%rbp), %eax
    xorl	%edx, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_a
fn1_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_a
fn2_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_a
fn3_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_a
fn4_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_a
fn5_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_a
fn6_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_a
fn7_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    movzwl	%ax, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_a
fn8_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_a
fn9_a:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_b
fn1_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_b
fn2_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_b
fn3_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_b
fn4_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_b
fn5_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_b
fn6_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_b
fn7_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    movzwl	%ax, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_b
fn8_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_b
fn9_b:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    movzbl	%al, %eax
    movl	$0, %edx
    divl	-4(%rbp)
    movl	%edx, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_c
fn1_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    addl	$3, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_c
fn2_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    addl	$3, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_c
fn3_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    addl	$3, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_c
fn4_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    addl	$3, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_c
fn5_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    addl	$3, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_c
fn6_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    addl	$3, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_c
fn7_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    addl	$3, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_c
fn8_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    addl	$3, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_c
fn9_c:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    addl	$3, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_d
fn1_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    subl	$7, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_d
fn2_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    subl	$7, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_d
fn3_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    subl	$7, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_d
fn4_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    subl	$7, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_d
fn5_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    subl	$7, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_d
fn6_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    subl	$7, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_d
fn7_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    subl	$7, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_d
fn8_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    subl	$7, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_d
fn9_d:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    subl	$7, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_e
fn1_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    andl	$21, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_e
fn2_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    andl	$21, %eax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_e
fn3_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    andl	$21, %eax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_e
fn4_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    andl	$21, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_e
fn5_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_e
fn6_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    andl	$21, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_e
fn7_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    andl	$21, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_e
fn8_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    andl	$21, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_e
fn9_e:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    andl	$21, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_f
fn1_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    orl	$19, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_f
fn2_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    orl	$19, %eax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_f
fn3_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    orl	$19, %eax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_f
fn4_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    orl	$19, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_f
fn5_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    orl	$19, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_f
fn6_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    orl	$19, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_f
fn7_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    orl	$19, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_f
fn8_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    orl	$19, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_f
fn9_f:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    orl	$19, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_g
fn1_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    xorl	$37, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_g
fn2_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    xorl	$37, %eax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_g
fn3_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    xorl	$37, %eax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_g
fn4_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    xorl	$37, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_g
fn5_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    xorl	$37, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_g
fn6_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    xorl	$37, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_g
fn7_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    xorl	$37, %eax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_g
fn8_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    xorl	$37, %eax
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_g
fn9_g:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    xorl	$37, %eax
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_h
fn1_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %ecx
    movl	$2021161081, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_h
fn2_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movzwl	%ax, %ecx
    movl	$2021161081, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_h
fn3_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %ecx
    movl	$2021161081, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_h
fn4_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movzbl	%al, %ecx
    movl	$2021161081, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_h
fn5_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	$2021161081, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_h
fn6_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    movl	%eax, %ecx
    movl	$2021161081, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_h
fn7_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %eax
    movzwl	%ax, %eax
    imull	$61681, %eax, %eax
    shrl	$16, %eax
    shrw	$4, %ax
    movw	%ax, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_h
fn8_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %eax
    movzbl	%al, %ecx
    movl	%ecx, %edx
    movl	%edx, %eax
    sall	$4, %eax
    movl	%eax, %edx
    movl	%edx, %eax
    sall	$4, %eax
    subl	%edx, %eax
    addl	%ecx, %eax
    shrw	$8, %ax
    shrb	$4, %al
    movb	%al, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_h
fn9_h:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %eax
    movzbl	%al, %ecx
    movl	%ecx, %edx
    movl	%edx, %eax
    sall	$4, %eax
    movl	%eax, %edx
    movl	%edx, %eax
    sall	$4, %eax
    subl	%edx, %eax
    addl	%ecx, %eax
    shrw	$8, %ax
    shrb	$4, %al
    movb	%al, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn1_i
fn1_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	b(%rip), %eax
    andl	$63, %eax
    movzbl	%al, %ecx
    movl	$1808407283, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movl	%edx, %eax
    andl	$63, %eax
    andl	$63, %eax
    movl	%eax, %edx
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	%edx, %eax
    movb	%al, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn2_i
fn2_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	b(%rip), %eax
    shrl	$6, %eax
    andw	$2047, %ax
    movzwl	%ax, %ecx
    movl	$1808407283, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movl	%edx, %eax
    andw	$2047, %ax
    movzwl	%ax, %eax
    andl	$2047, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	%edx, %eax
    movl	%eax, b(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn3_i
fn3_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	b + 2(%rip), %eax
    shrw	%ax
    movzwl	%ax, %ecx
    movl	$1808407283, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movl	%edx, %eax
    andw	$32767, %ax
    leal	(%rax,%rax), %edx
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orl	%edx, %eax
    movw	%ax, b + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn4_i
fn4_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    andl	$31, %eax
    movzbl	%al, %ecx
    movl	$1808407283, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movl	%edx, %eax
    andl	$31, %eax
    andl	$31, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn5_i
fn5_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	c(%rip), %eax
    shrb	$5, %al
    andl	$1, %eax
    movzbl	%al, %ecx
    movl	$1808407283, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movl	%edx, %eax
    andl	$1, %eax
    andl	$1, %eax
    sall	$5, %eax
    movl	%eax, %edx
    movzbl	c(%rip), %eax
    andl	$-33, %eax
    orl	%edx, %eax
    movb	%al, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn6_i
fn6_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movl	c(%rip), %eax
    shrl	$6, %eax
    movl	%eax, %ecx
    movl	$1808407283, %edx
    movl	%ecx, %eax
    imull	%edx
    sarl	$3, %edx
    movl	%ecx, %eax
    sarl	$31, %eax
    subl	%eax, %edx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movl	%edx, %eax
    andl	$67108863, %eax
    sall	$6, %eax
    movl	%eax, %edx
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	%edx, %eax
    movl	%eax, c(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn7_i
fn7_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzwl	d(%rip), %ecx
    movzwl	%cx, %eax
    imull	$55189, %eax, %eax
    shrl	$16, %eax
    movl	%eax, %edx
    shrw	$4, %dx
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movw	%dx, d(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn8_i
fn8_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 2(%rip), %ecx
    movzbl	%cl, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    leal	0(,%rax,8), %edx
    addl	%edx, %eax
    shrw	$8, %ax
    movl	%eax, %edx
    shrb	%dl
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movb	%dl, d + 2(%rip)
    nop
    popq	%rbp
    ret
    .globl	fn9_i
fn9_i:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	%edi, -4(%rbp)
    movzbl	d + 3(%rip), %ecx
    movzbl	%cl, %edx
    movl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    leal	0(,%rax,8), %edx
    addl	%edx, %eax
    shrw	$8, %ax
    movl	%eax, %edx
    shrb	%dl
    movl	%edx, %eax
    sall	$3, %eax
    addl	%edx, %eax
    addl	%eax, %eax
    addl	%edx, %eax
    subl	%eax, %ecx
    movl	%ecx, %edx
    movb	%dl, d + 3(%rip)
    nop
    popq	%rbp
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_1
    call	ret1
    cmpl	$54, %eax
    je	L222
    call	abort
L222:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_1
    call	ret2
    cmpl	$887, %eax
    je	L223
    call	abort
L223:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_1
    call	ret3
    cmpl	$11789, %eax
    je	L224
    call	abort
L224:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_1
    call	ret4
    cmpl	$13, %eax
    je	L225
    call	abort
L225:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_1
    call	ret5
    testl	%eax, %eax
    je	L226
    call	abort
L226:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_1
    call	ret6
    cmpl	$33818583, %eax
    je	L227
    call	abort
L227:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_1
    call	ret7
    cmpl	$27525, %eax
    je	L228
    call	abort
L228:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_1
    call	ret8
    cmpl	$173, %eax
    je	L229
    call	abort
L229:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_1
    call	ret9
    cmpl	$130, %eax
    je	L230
    call	abort
L230:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_2
    call	ret1
    cmpl	$52, %eax
    je	L231
    call	abort
L231:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_2
    call	ret2
    cmpl	$637, %eax
    je	L232
    call	abort
L232:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_2
    call	ret3
    cmpl	$31279, %eax
    je	L233
    call	abort
L233:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_2
    call	ret4
    cmpl	$22, %eax
    je	L234
    call	abort
L234:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_2
    call	ret5
    testl	%eax, %eax
    je	L235
    call	abort
L235:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_2
    call	ret6
    cmpl	$33554433, %eax
    je	L236
    call	abort
L236:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_2
    call	ret7
    cmpl	$26813, %eax
    je	L237
    call	abort
L237:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_2
    call	ret8
    cmpl	$157, %eax
    je	L238
    call	abort
L238:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_2
    call	ret9
    cmpl	$188, %eax
    je	L239
    call	abort
L239:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_3
    call	ret1
    cmpl	$52, %eax
    je	L240
    call	abort
L240:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_3
    call	ret2
    cmpl	$637, %eax
    je	L241
    call	abort
L241:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_3
    call	ret3
    cmpl	$31279, %eax
    je	L242
    call	abort
L242:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_3
    call	ret4
    cmpl	$22, %eax
    je	L243
    call	abort
L243:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_3
    call	ret5
    testl	%eax, %eax
    je	L244
    call	abort
L244:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_3
    call	ret6
    cmpl	$33554433, %eax
    je	L245
    call	abort
L245:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_3
    call	ret7
    cmpl	$26813, %eax
    je	L246
    call	abort
L246:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_3
    call	ret8
    cmpl	$157, %eax
    je	L247
    call	abort
L247:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_3
    call	ret9
    cmpl	$188, %eax
    je	L248
    call	abort
L248:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_4
    call	ret1
    cmpl	$48, %eax
    je	L249
    call	abort
L249:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_4
    call	ret2
    cmpl	$385, %eax
    je	L250
    call	abort
L250:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_4
    call	ret3
    cmpl	$17999, %eax
    je	L251
    call	abort
L251:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_4
    call	ret4
    cmpl	$29, %eax
    je	L252
    call	abort
L252:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_4
    call	ret5
    testl	%eax, %eax
    je	L253
    call	abort
L253:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_4
    call	ret6
    cmpl	$33290281, %eax
    je	L254
    call	abort
L254:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_4
    call	ret7
    cmpl	$26099, %eax
    je	L255
    call	abort
L255:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_4
    call	ret8
    cmpl	$139, %eax
    je	L256
    call	abort
L256:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_4
    call	ret9
    cmpl	$244, %eax
    je	L257
    call	abort
L257:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_5
    call	ret1
    cmpl	$50, %eax
    je	L258
    call	abort
L258:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_5
    call	ret2
    cmpl	$635, %eax
    je	L259
    call	abort
L259:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_5
    call	ret3
    cmpl	$31277, %eax
    je	L260
    call	abort
L260:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_5
    call	ret4
    cmpl	$20, %eax
    je	L261
    call	abort
L261:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_5
    call	ret5
    testl	%eax, %eax
    je	L262
    call	abort
L262:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_5
    call	ret6
    cmpl	$33554431, %eax
    je	L263
    call	abort
L263:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_5
    call	ret7
    cmpl	$26811, %eax
    je	L264
    call	abort
L264:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_5
    call	ret8
    cmpl	$155, %eax
    je	L265
    call	abort
L265:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_5
    call	ret9
    cmpl	$186, %eax
    je	L266
    call	abort
L266:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_6
    call	ret1
    cmpl	$50, %eax
    je	L267
    call	abort
L267:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_6
    call	ret2
    cmpl	$635, %eax
    je	L268
    call	abort
L268:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_6
    call	ret3
    cmpl	$31277, %eax
    je	L269
    call	abort
L269:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_6
    call	ret4
    cmpl	$20, %eax
    je	L270
    call	abort
L270:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_6
    call	ret5
    testl	%eax, %eax
    je	L271
    call	abort
L271:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_6
    call	ret6
    cmpl	$33554431, %eax
    je	L272
    call	abort
L272:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_6
    call	ret7
    cmpl	$26811, %eax
    je	L273
    call	abort
L273:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_6
    call	ret8
    cmpl	$155, %eax
    je	L274
    call	abort
L274:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_6
    call	ret9
    cmpl	$186, %eax
    je	L275
    call	abort
L275:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_7
    call	ret1
    cmpl	$3, %eax
    je	L276
    call	abort
L276:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_7
    call	ret2
    cmpl	$120, %eax
    je	L277
    call	abort
L277:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_7
    call	ret3
    cmpl	$12814, %eax
    je	L278
    call	abort
L278:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_7
    call	ret4
    cmpl	$16, %eax
    je	L279
    call	abort
L279:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_7
    call	ret5
    cmpl	$1, %eax
    je	L280
    call	abort
L280:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_7
    call	ret6
    testl	%eax, %eax
    je	L281
    call	abort
L281:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_7
    call	ret7
    cmpl	$136, %eax
    je	L282
    call	abort
L282:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_7
    call	ret8
    cmpl	$16, %eax
    je	L283
    call	abort
L283:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_7
    call	ret9
    cmpl	$131, %eax
    je	L284
    call	abort
L284:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_8
    call	ret1
    cmpl	$51, %eax
    je	L285
    call	abort
L285:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_8
    call	ret2
    cmpl	$767, %eax
    je	L286
    call	abort
L286:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_8
    call	ret3
    cmpl	$31743, %eax
    je	L287
    call	abort
L287:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_8
    call	ret4
    cmpl	$29, %eax
    je	L288
    call	abort
L288:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_8
    call	ret5
    cmpl	$1, %eax
    je	L289
    call	abort
L289:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_8
    call	ret6
    cmpl	$33818583, %eax
    je	L290
    call	abort
L290:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_8
    call	ret7
    cmpl	$27389, %eax
    je	L291
    call	abort
L291:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_8
    call	ret8
    cmpl	$157, %eax
    je	L292
    call	abort
L292:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_8
    call	ret9
    cmpl	$255, %eax
    je	L293
    call	abort
L293:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_9
    call	ret1
    cmpl	$48, %eax
    je	L294
    call	abort
L294:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_9
    call	ret2
    cmpl	$647, %eax
    je	L295
    call	abort
L295:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_9
    call	ret3
    cmpl	$18929, %eax
    je	L296
    call	abort
L296:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_9
    call	ret4
    cmpl	$13, %eax
    je	L297
    call	abort
L297:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_9
    call	ret5
    testl	%eax, %eax
    je	L298
    call	abort
L298:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_9
    call	ret6
    cmpl	$33818583, %eax
    je	L299
    call	abort
L299:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_9
    call	ret7
    cmpl	$27253, %eax
    je	L300
    call	abort
L300:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_9
    call	ret8
    cmpl	$141, %eax
    je	L301
    call	abort
L301:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_9
    call	ret9
    cmpl	$124, %eax
    je	L302
    call	abort
L302:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_a
    call	ret1
    cmpl	$17, %eax
    je	L303
    call	abort
L303:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_a
    call	ret2
    cmpl	$2, %eax
    je	L304
    call	abort
L304:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_a
    call	ret3
    cmpl	$2, %eax
    je	L305
    call	abort
L305:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_a
    call	ret4
    testl	%eax, %eax
    je	L306
    call	abort
L306:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_a
    call	ret5
    cmpl	$1, %eax
    je	L307
    call	abort
L307:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_a
    call	ret6
    cmpl	$127, %eax
    je	L308
    call	abort
L308:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_a
    call	ret7
    cmpl	$37, %eax
    je	L309
    call	abort
L309:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_a
    call	ret8
    cmpl	$9, %eax
    je	L310
    call	abort
L310:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_a
    call	ret9
    testl	%eax, %eax
    je	L311
    call	abort
L311:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_b
    call	ret1
    testl	%eax, %eax
    je	L312
    call	abort
L312:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_b
    call	ret2
    cmpl	$134, %eax
    je	L313
    call	abort
L313:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_b
    call	ret3
    cmpl	$4720, %eax
    je	L314
    call	abort
L314:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_b
    call	ret4
    cmpl	$21, %eax
    je	L315
    call	abort
L315:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_b
    call	ret5
    testl	%eax, %eax
    je	L316
    call	abort
L316:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_b
    call	ret6
    cmpl	$7255, %eax
    je	L317
    call	abort
L317:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_b
    call	ret7
    cmpl	$431, %eax
    je	L318
    call	abort
L318:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_b
    call	ret8
    cmpl	$3, %eax
    je	L319
    call	abort
L319:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_b
    call	ret9
    cmpl	$187, %eax
    je	L320
    call	abort
L320:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_c
    call	ret1
    cmpl	$54, %eax
    je	L321
    call	abort
L321:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_c
    call	ret2
    cmpl	$639, %eax
    je	L322
    call	abort
L322:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_c
    call	ret3
    cmpl	$31281, %eax
    je	L323
    call	abort
L323:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_c
    call	ret4
    cmpl	$24, %eax
    je	L324
    call	abort
L324:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_c
    call	ret5
    testl	%eax, %eax
    je	L325
    call	abort
L325:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_c
    call	ret6
    cmpl	$33554435, %eax
    je	L326
    call	abort
L326:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_c
    call	ret7
    cmpl	$26815, %eax
    je	L327
    call	abort
L327:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_c
    call	ret8
    cmpl	$159, %eax
    je	L328
    call	abort
L328:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_c
    call	ret9
    cmpl	$190, %eax
    je	L329
    call	abort
L329:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_d
    call	ret1
    cmpl	$44, %eax
    je	L330
    call	abort
L330:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_d
    call	ret2
    cmpl	$629, %eax
    je	L331
    call	abort
L331:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_d
    call	ret3
    cmpl	$31271, %eax
    je	L332
    call	abort
L332:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_d
    call	ret4
    cmpl	$14, %eax
    je	L333
    call	abort
L333:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_d
    call	ret5
    testl	%eax, %eax
    je	L334
    call	abort
L334:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_d
    call	ret6
    cmpl	$33554425, %eax
    je	L335
    call	abort
L335:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_d
    call	ret7
    cmpl	$26805, %eax
    je	L336
    call	abort
L336:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_d
    call	ret8
    cmpl	$149, %eax
    je	L337
    call	abort
L337:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_d
    call	ret9
    cmpl	$180, %eax
    je	L338
    call	abort
L338:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_e
    call	ret1
    cmpl	$17, %eax
    je	L339
    call	abort
L339:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_e
    call	ret2
    cmpl	$20, %eax
    je	L340
    call	abort
L340:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_e
    call	ret3
    cmpl	$4, %eax
    je	L341
    call	abort
L341:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_e
    call	ret4
    cmpl	$21, %eax
    je	L342
    call	abort
L342:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_e
    call	ret5
    cmpl	$1, %eax
    je	L343
    call	abort
L343:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_e
    call	ret6
    testl	%eax, %eax
    je	L344
    call	abort
L344:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_e
    call	ret7
    cmpl	$20, %eax
    je	L345
    call	abort
L345:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_e
    call	ret8
    cmpl	$20, %eax
    je	L346
    call	abort
L346:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_e
    call	ret9
    cmpl	$17, %eax
    je	L347
    call	abort
L347:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_f
    call	ret1
    cmpl	$51, %eax
    je	L348
    call	abort
L348:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_f
    call	ret2
    cmpl	$639, %eax
    je	L349
    call	abort
L349:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_f
    call	ret3
    cmpl	$31295, %eax
    je	L350
    call	abort
L350:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_f
    call	ret4
    cmpl	$23, %eax
    je	L351
    call	abort
L351:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_f
    call	ret5
    cmpl	$1, %eax
    je	L352
    call	abort
L352:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_f
    call	ret6
    cmpl	$33554451, %eax
    je	L353
    call	abort
L353:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_f
    call	ret7
    cmpl	$26815, %eax
    je	L354
    call	abort
L354:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_f
    call	ret8
    cmpl	$159, %eax
    je	L355
    call	abort
L355:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_f
    call	ret9
    cmpl	$187, %eax
    je	L356
    call	abort
L356:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_g
    call	ret1
    cmpl	$22, %eax
    je	L357
    call	abort
L357:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_g
    call	ret2
    cmpl	$601, %eax
    je	L358
    call	abort
L358:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_g
    call	ret3
    cmpl	$31243, %eax
    je	L359
    call	abort
L359:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_g
    call	ret4
    cmpl	$16, %eax
    je	L360
    call	abort
L360:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_g
    call	ret5
    testl	%eax, %eax
    je	L361
    call	abort
L361:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_g
    call	ret6
    cmpl	$33554469, %eax
    je	L362
    call	abort
L362:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_g
    call	ret7
    cmpl	$26777, %eax
    je	L363
    call	abort
L363:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_g
    call	ret8
    cmpl	$185, %eax
    je	L364
    call	abort
L364:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_g
    call	ret9
    cmpl	$158, %eax
    je	L365
    call	abort
L365:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_h
    call	ret1
    cmpl	$3, %eax
    je	L366
    call	abort
L366:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_h
    call	ret2
    cmpl	$37, %eax
    je	L367
    call	abort
L367:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_h
    call	ret3
    cmpl	$1839, %eax
    je	L368
    call	abort
L368:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_h
    call	ret4
    cmpl	$1, %eax
    je	L369
    call	abort
L369:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_h
    call	ret5
    testl	%eax, %eax
    je	L370
    call	abort
L370:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_h
    call	ret6
    cmpl	$1973790, %eax
    je	L371
    call	abort
L371:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_h
    call	ret7
    cmpl	$1577, %eax
    je	L372
    call	abort
L372:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_h
    call	ret8
    cmpl	$9, %eax
    je	L373
    call	abort
L373:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_h
    call	ret9
    cmpl	$11, %eax
    je	L374
    call	abort
L374:
    movb	$-69, d + 3(%rip)
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movzwl	b + 2(%rip), %eax
    andl	$1, %eax
    orw	$-2980, %ax
    movw	%ax, b + 2(%rip)
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movw	$26812, d(%rip)
    movb	$-100, d + 2(%rip)
    movb	$-69, d + 3(%rip)
    movl	$3, %edi
    call	fn1_i
    call	ret1
    cmpl	$13, %eax
    je	L375
    call	abort
L375:
    movzbl	b(%rip), %eax
    andl	$-64, %eax
    orl	$51, %eax
    movb	%al, b(%rip)
    movl	$251, %edi
    call	fn2_i
    call	ret2
    cmpl	$9, %eax
    je	L376
    call	abort
L376:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orb	$159, %ah
    movl	%eax, b(%rip)
    movl	$13279, %edi
    call	fn3_i
    call	ret3
    cmpl	$4, %eax
    je	L377
    call	abort
L377:
    movl	b(%rip), %eax
    andl	$-131009, %eax
    orl	$35712, %eax
    movl	%eax, b(%rip)
    movl	$24, %edi
    call	fn4_i
    call	ret4
    cmpl	$2, %eax
    je	L378
    call	abort
L378:
    movzbl	c(%rip), %eax
    andl	$-32, %eax
    orl	$21, %eax
    movb	%al, c(%rip)
    movl	$1, %edi
    call	fn5_i
    call	ret5
    cmpl	$1, %eax
    je	L379
    call	abort
L379:
    movzbl	c(%rip), %eax
    orl	$32, %eax
    movb	%al, c(%rip)
    movl	$264151, %edi
    call	fn6_i
    call	ret6
    cmpl	$14, %eax
    je	L380
    call	abort
L380:
    movl	c(%rip), %eax
    andl	$63, %eax
    orl	$-2147483648, %eax
    movl	%eax, c(%rip)
    movl	$713, %edi
    call	fn7_i
    call	ret7
    cmpl	$3, %eax
    je	L381
    call	abort
L381:
    movw	$26812, d(%rip)
    movl	$17, %edi
    call	fn8_i
    call	ret8
    cmpl	$4, %eax
    je	L382
    call	abort
L382:
    movb	$-100, d + 2(%rip)
    movl	$199, %edi
    call	fn9_i
    call	ret9
    cmpl	$16, %eax
    je	L383
    call	abort
L383:
    movb	$-69, d + 3(%rip)
    movl	$0, %eax
    popq	%rbp
    ret
