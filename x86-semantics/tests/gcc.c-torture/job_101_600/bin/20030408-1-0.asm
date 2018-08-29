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
    .globl	test1
test1:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$32, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movb	$65, -32(%rbp)
    movb	$66, -31(%rbp)
    movb	$67, -30(%rbp)
    movb	$68, -29(%rbp)
    movb	$69, -28(%rbp)
    movb	$70, -27(%rbp)
    movb	$71, -26(%rbp)
    movb	$72, -25(%rbp)
    movq	-32(%rbp), %rax
    movq	%rax, -16(%rbp)
    movzbl	-16(%rbp), %eax
    cmpb	$65, %al
    jne	L42
    movzbl	-15(%rbp), %eax
    cmpb	$66, %al
    jne	L42
    movzbl	-14(%rbp), %eax
    cmpb	$67, %al
    jne	L42
    movzbl	-13(%rbp), %eax
    cmpb	$68, %al
    jne	L42
    movzbl	-12(%rbp), %eax
    cmpb	$69, %al
    jne	L42
    movzbl	-11(%rbp), %eax
    cmpb	$70, %al
    jne	L42
    movzbl	-10(%rbp), %eax
    cmpb	$71, %al
    jne	L42
    movzbl	-9(%rbp), %eax
    cmpb	$72, %al
    je	L43
L42:
    call	abort
L43:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L45
    call	__stack_chk_fail
L45:
    leave
    ret
    .globl	test2
test2:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$0, -48(%rbp)
    movw	$0, -40(%rbp)
    movb	$65, -48(%rbp)
    movb	$66, -47(%rbp)
    movb	$67, -46(%rbp)
    movb	$68, -45(%rbp)
    movb	$69, -44(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -32(%rbp)
    movzwl	-40(%rbp), %eax
    movw	%ax, -24(%rbp)
    movzbl	-32(%rbp), %eax
    cmpb	$65, %al
    jne	L47
    movzbl	-31(%rbp), %eax
    cmpb	$66, %al
    jne	L47
    movzbl	-30(%rbp), %eax
    cmpb	$67, %al
    jne	L47
    movzbl	-29(%rbp), %eax
    cmpb	$68, %al
    jne	L47
    movzbl	-28(%rbp), %eax
    cmpb	$69, %al
    jne	L47
    movzbl	-27(%rbp), %eax
    testb	%al, %al
    jne	L47
    movzbl	-26(%rbp), %eax
    testb	%al, %al
    jne	L47
    movzbl	-25(%rbp), %eax
    testb	%al, %al
    jne	L47
    movzbl	-24(%rbp), %eax
    testb	%al, %al
    jne	L47
    movzbl	-23(%rbp), %eax
    testb	%al, %al
    je	L48
L47:
    call	abort
L48:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L50
    call	__stack_chk_fail
L50:
    leave
    ret
    .globl	test3
test3:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$0, -48(%rbp)
    movw	$0, -40(%rbp)
    movb	$65, -48(%rbp)
    movb	$67, -46(%rbp)
    movb	$69, -44(%rbp)
    movb	$71, -42(%rbp)
    movb	$73, -40(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -32(%rbp)
    movzwl	-40(%rbp), %eax
    movw	%ax, -24(%rbp)
    movzbl	-32(%rbp), %eax
    cmpb	$65, %al
    jne	L52
    movzbl	-31(%rbp), %eax
    testb	%al, %al
    jne	L52
    movzbl	-30(%rbp), %eax
    cmpb	$67, %al
    jne	L52
    movzbl	-29(%rbp), %eax
    testb	%al, %al
    jne	L52
    movzbl	-28(%rbp), %eax
    cmpb	$69, %al
    jne	L52
    movzbl	-27(%rbp), %eax
    testb	%al, %al
    jne	L52
    movzbl	-26(%rbp), %eax
    cmpb	$71, %al
    jne	L52
    movzbl	-25(%rbp), %eax
    testb	%al, %al
    jne	L52
    movzbl	-24(%rbp), %eax
    cmpb	$73, %al
    jne	L52
    movzbl	-23(%rbp), %eax
    testb	%al, %al
    je	L53
L52:
    call	abort
L53:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L55
    call	__stack_chk_fail
L55:
    leave
    ret
    .globl	test4
test4:
    pushq	%rbp
    movq	%rsp, %rbp
    subq	$48, %rsp
    movq	$40, %rax
    movq	%rax, -8(%rbp)
    xorl	%eax, %eax
    movq	$0, -48(%rbp)
    movw	$0, -40(%rbp)
    movb	$66, -47(%rbp)
    movb	$68, -45(%rbp)
    movb	$70, -43(%rbp)
    movb	$72, -41(%rbp)
    movb	$74, -39(%rbp)
    movq	-48(%rbp), %rax
    movq	%rax, -32(%rbp)
    movzwl	-40(%rbp), %eax
    movw	%ax, -24(%rbp)
    movzbl	-32(%rbp), %eax
    testb	%al, %al
    jne	L57
    movzbl	-31(%rbp), %eax
    cmpb	$66, %al
    jne	L57
    movzbl	-30(%rbp), %eax
    testb	%al, %al
    jne	L57
    movzbl	-29(%rbp), %eax
    cmpb	$68, %al
    jne	L57
    movzbl	-28(%rbp), %eax
    testb	%al, %al
    jne	L57
    movzbl	-27(%rbp), %eax
    cmpb	$70, %al
    jne	L57
    movzbl	-26(%rbp), %eax
    testb	%al, %al
    jne	L57
    movzbl	-25(%rbp), %eax
    cmpb	$72, %al
    jne	L57
    movzbl	-24(%rbp), %eax
    testb	%al, %al
    jne	L57
    movzbl	-23(%rbp), %eax
    cmpb	$74, %al
    je	L58
L57:
    call	abort
L58:
    movl	$0, %eax
    movq	-8(%rbp), %rdx
    xorq	$40, %rdx
    je	L60
    call	__stack_chk_fail
L60:
    leave
    ret
    .globl	main
.globl _start
_start:
    pushq	%rbp
    movq	%rsp, %rbp
    movl	$0, %eax
    call	test1
    movl	$0, %eax
    call	test2
    movl	$0, %eax
    call	test3
    movl	$0, %eax
    call	test4
    movl	$0, %eax
    popq	%rbp
    ret
